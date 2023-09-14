// 오리지널 버전

// ignore_for_file: avoid_print

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final networkNotifierProvider = StateNotifierProvider<NetworkNotifier, NetworkState>(
  (ref) {
    ref.listenSelf((previous, next) {
      if (previous != null && (previous is NetworkInitial) == false) {
        if (next is NetworkSuccess) {
          print('인터넷이 다시 연결되었습니다.');
        }
        if (next is NetworkFailure) {
          print('인터넷 연결이 끊어졌습니다.');
        }
      }
    });
    return NetworkNotifier(ref)..networkInitial();
  },
  name: 'networkNotifierProvider',
);

class NetworkNotifier extends StateNotifier<NetworkState> {
  NetworkNotifier(this.ref) : super(const NetworkInitial());

  final Ref ref;

  void networkInitial() async {
    ConnectivityResult result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      state = NetworkFailure(state, 'data');
    }
    _observe();
  }

  void _observe() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        state = NetworkFailure(state, 'data');
      } else {
        state = NetworkSuccess(state);
      }
    });
  }
}

abstract class NetworkState extends Equatable {
  const NetworkState(this.previous);

  final NetworkState? previous;
}

class NetworkInitial extends NetworkState {
  const NetworkInitial() : super(null);

  @override
  List<Object?> get props => [];
}

class NetworkSuccess extends NetworkState {
  const NetworkSuccess(super.previous);

  @override
  List<Object?> get props => [previous];
}

class NetworkFailure extends NetworkState {
  final String message;
  const NetworkFailure(super.previous, this.message);

  @override
  List<Object?> get props => [previous, message];
}

// 새로운 버전

final networkNotifierProvider2 = NotifierProvider<NetworkNotifier2, NetworkStates2>(
  () {
    return NetworkNotifier2()..networkInitial();
  },
  name: 'networkNotifierProvider2',
);

class NetworkNotifier2 extends Notifier<NetworkStates2> {
  @override
  NetworkStates2 build() {
    ref.listenSelf((previous, next) {
      if (previous != null && (previous.status == NetworkState2.initial) == false) {
        if (next.status == NetworkState2.success) {
          print('인터넷이 다시 연결되었습니다.');
        }
        if (next.status == NetworkState2.failure) {
          print('인터넷 연결이 끊어졌습니다.');
        }
      }
    });
    return const NetworkStates2();
  }

  void networkInitial() async {
    ConnectivityResult result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      state = NetworkStates2(previous: state.status, status: NetworkState2.failure, message: 'data');
    }
    _observe();
  }

  void _observe() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        state = NetworkStates2(previous: state.status, status: NetworkState2.failure, message: 'data');
      } else {
        state = NetworkStates2(previous: state.status, status: NetworkState2.success);
      }
    });
  }
}

class NetworkStates2<T> extends Equatable {
  final NetworkState2? previous;
  final NetworkState2 status;
  final String? message;

  const NetworkStates2({
    this.previous,
    this.status = NetworkState2.initial,
    this.message,
  });

  @override
  List<Object?> get props => [previous, status, message];

  NetworkStates2 copyWith({
    NetworkState2? status,
    T? data,
    String? message,
  }) {
    return NetworkStates2(
      previous: previous ?? this.previous,
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }
}

enum NetworkState2 {
  initial,
  success,
  failure,
}
