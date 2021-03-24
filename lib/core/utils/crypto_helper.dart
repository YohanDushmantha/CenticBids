import 'dart:typed_data';

import 'package:encrypt/encrypt.dart';

class CryptoHelper {
  final String WalletKey = "SgVkXp2s5v8y/B?E";
  final byteList = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4, 5];

  String aes128Encode(String params) {
    final key = Key.fromUtf8(WalletKey);
    //final iv = IV.fromLength(16);

    final iv = IV(Uint8List.fromList(byteList));
    final encrypter = Encrypter(AES(key, mode: AESMode.ecb));

    final encrypted = encrypter.encrypt(params, iv: iv);
    final result = encrypter.decrypt(encrypted);
    print('params: $params');
    print(encrypted.base64);
    print('result: $result');

    return encrypted.base64;
  }

  aes128Decode(String data) {
    final key = Key.fromUtf8(WalletKey);
    //final iv = IV.fromLength(16);
    final iv = IV(Uint8List.fromList(byteList));
    final encrypter = Encrypter(AES(key, mode: AESMode.ecb));
    final decrypted = encrypter.decrypt64(data, iv: iv);
    return decrypted;
  }

  encrypt(String text) {
    final key = Key.fromUtf8(WalletKey);
    //final iv = IV.fromLength(16);
    final iv = IV(Uint8List.fromList(byteList));
    final encrypter = Encrypter(AES(key));
    final encrypted = encrypter.encrypt(text, iv: iv);
    print(" Encrpted => " + encrypted.base64);
    return encrypted;
  }

  decrypt(String encrypted) {
    final key = Key.fromUtf8(WalletKey);
    //final iv = IV.fromLength(16);
    final iv = IV(Uint8List.fromList(byteList));
    final encrypter = Encrypter(AES(key));
    final decrypted = encrypter.decrypt64(encrypted, iv: iv);
    print(" Decrepted => " + decrypted);
    return decrypted;
  }
}
