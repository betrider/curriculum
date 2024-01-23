import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> analyticsReport() async {
  var messageInstance = FirebaseMessaging.instance;

  // 권한 요청
  await messageInstance.requestPermission();

  // 포그라운드 수신
  FirebaseMessaging.onMessage.listen((RemoteMessage  message) { 
    print('onMessage : ${message.data.toString()}');
  });

  // 백그라운드 수신
  FirebaseMessaging.onBackgroundMessage((RemoteMessage  message) async{
    print('onMessage : ${message.data.toString()}');
  });

  // 토큰 정보(FCM 테스트 할 때 필요함)
  print('firebase token : ${await messageInstance.getToken()}'); 
}
