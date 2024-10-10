// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:encrypt/encrypt.dart';
import 'package:encrypt/encrypt_io.dart';
import 'package:pointycastle/asymmetric/api.dart';

void main() async {
  OAuthModel model = OAuthModel(
    where: "xxx.otp.otpInterval.on.yyy",
    who: "accessToken",
  );
  var plainText = model.toJson();

  final publicKey = await parseKeyFromFile<RSAPublicKey>('public.pem');
  final privKey = await parseKeyFromFile<RSAPrivateKey>('private.pem');

  final encrypter = Encrypter(
    RSA(
      publicKey: publicKey,
      privateKey: privKey,
      encoding: RSAEncoding.OAEP,
      digest: RSADigest.SHA256,
    ),
  );

  final encrypted = encrypter.encrypt(plainText);
  final decrypted = encrypter.decrypt(encrypted);

  print('원본:$plainText');
  print('복호화:$decrypted');
  print(encrypted.base64);
}

/// 인증 모델
class OAuthModel {
  final String where;
  final String who;
  OAuthModel({
    required this.where,
    required this.who,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "where": where,
      "who": who,
    };
  }

  factory OAuthModel.fromMap(Map<String, dynamic> map) {
    return OAuthModel(
      where: map["where"],
      who: map["who"],
    );
  }

  String toJson() => json.encode(toMap());

  factory OAuthModel.fromJson(String source) => OAuthModel.fromMap(json.decode(source));
}
