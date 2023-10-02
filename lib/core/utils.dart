import 'package:flutter/material.dart';

String getPrefectureSymbol(int id) {
  switch (id) {
    case (1):
      return 'assets/images/Hokkaido.png';
    case (2):
      return 'assets/images/Aomori.png';
    case (3):
      return 'assets/images/Iwate.png';
    case (4):
      return 'assets/images/Miyagi.png';
    case (5):
      return 'assets/images/Akita.png';
    case (6):
      return 'assets/images/Yamagata.png';
    case (7):
      return 'assets/images/Fukushima.png';
    case (8):
      return 'assets/images/Ibaraki.png';
    case (9):
      return 'assets/images/Tochigi.png';
    case (10):
      return 'assets/images/Gunma.png';
    case (11):
      return 'assets/images/Saitama.png';
    case (12):
      return 'assets/images/Chiba.png';
    case (13):
      return 'assets/images/Tokyo.png';
    case (14):
      return 'assets/images/Kanagawa.png';
    case (15):
      return 'assets/images/Niigata.png';
    case (16):
      return 'assets/images/Toyama.png';
    case (17):
      return 'assets/images/Ishikawa.png';
    case (18):
      return 'assets/images/Fukui.png';
    case (19):
      return 'assets/images/Yamanashi.png';
    case (20):
      return 'assets/images/Nagano.png';
    case (21):
      return 'assets/images/Gifu.png';
    case (22):
      return 'assets/images/Shizuoka.png';
    case (23):
      return 'assets/images/Aichi.png';
    case (24):
      return 'assets/images/Mie.png';
    case (25):
      return 'assets/images/Shiga.png';
    case (26):
      return 'assets/images/Kyoto.png';
    case (27):
      return 'assets/images/Osaka.png';
    case (28):
      return 'assets/images/Hyogo.png';
    case (29):
      return 'assets/images/Nara.png';
    case (30):
      return 'assets/images/Wakayama.png';
    case (31):
      return 'assets/images/Tottori.png';
    case (32):
      return 'assets/images/Shimane.png';
    case (33):
      return 'assets/images/Okayama.png';
    case (34):
      return 'assets/images/Hiroshima.png';
    case (35):
      return 'assets/images/Yamaguchi.png';
    case (36):
      return 'assets/images/Tokushima.png';
    case (37):
      return 'assets/images/Kagawa.png';
    case (38):
      return 'assets/images/Ehime.png';
    case (39):
      return 'assets/images/Koochi.png';
    case (40):
      return 'assets/images/Fukuoka.png';
    case (41):
      return 'assets/images/Saga.png';
    case (42):
      return 'assets/images/Nagasaki.png';
    case (43):
      return 'assets/images/Kumamoto.png';
    case (44):
      return 'assets/images/Oita.png';
    case (45):
      return 'assets/images/Miyazaki.png';
    case (46):
      return 'assets/images/kagoshima.png';
    case (47):
      return 'assets/images/Okinawa.png';
    case (48):
      return 'assets/images/Japan.png';

    default:
      return 'assets/images/error.png';
  }
}

TextStyle styleMiniTitle = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.bold,
);

TextStyle styleMainTitle1 =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);

TextStyle styleMainTitle2 =
    TextStyle(fontSize: 140, fontWeight: FontWeight.bold, color: Colors.white);
