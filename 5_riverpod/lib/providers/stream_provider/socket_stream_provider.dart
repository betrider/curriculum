// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socket_io_client/socket_io_client.dart';

final socketProvider = Provider<Socket>(
  (ref) {
    const url = 'http://www.websocket.org/'; // Socket.IO 서버의 URL
    final options = OptionBuilder()
        .enableReconnection()
        .disableAutoConnect()
        .setExtraHeaders({'Authorization': 'bearer token'}).setTransports(['websocket']).build();
    final socket = io(url, options);
    socket.onError((error) => print('소켓 오류 : $error'));
    socket.onDisconnect((data) => print('소켓 연결 해제'));

    // ref method
    ref.onDispose(() {
      socket.disconnect();
      socket.dispose();
    });

    return socket;
  },
  name: 'socketProvider',
);

// 소켓 샘플
final droneStreamProvider = StreamProvider<Map<String, dynamic>>((ref) async* {
  StreamController<Map<String, dynamic>> controller = StreamController();
  var socket = ref.watch(socketProvider);
  socket.onConnect((data) {
    print('소켓 연결 완료');
    controller.add({});

    // 소켓 테스트(송신)
    socket.emit('send');
  });
  socket.onError((error) => print('소켓 오류 : $error'));
  socket.onDisconnect((data) => print('소켓 연결 해제'));

  // 소켓 테스트(수신)
  socket.on('receive', (data) {
    print('receive');
    controller.add(data);
  });

  // 소켓 연결
  socket.connect();

  // ref method
  ref.onDispose(() {
    controller.close();
  });

  // 1.append 방식
  // var allMessages = const <String>[];
  // await for (final value in controller.stream) {
  //   log('stream value => ${value.toString()}');
  //   allMessages = [...allMessages, ...value];
  //   yield allMessages;
  // }

  // 2.replace 방식
  await for (final value in controller.stream) {
    print('stream value => ${value.toString()}');
    yield value;
  }
});

class StreamSampleScreen1 extends ConsumerWidget {
  const StreamSampleScreen1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final droneStream = ref.watch(droneStreamProvider);
    // Like FutureProvider, it is possible to handle loading/error states using AsyncValue.when
    return Scaffold(
      body: droneStream.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text(error.toString())),
        data: (messages) {
          if (messages.isEmpty) return const Center(child: Text('소켓연결완료'));
          return Center(child: Text(messages['callSign']));
        },
      ),
    );
  }
}