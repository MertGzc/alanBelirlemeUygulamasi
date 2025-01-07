import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';  // URL açma için ekledik

class ResultScreen extends StatelessWidget {
  final int webScore;
  final int mobileScore;
  final int dataScore;
  final int gameScore;
  final int securityScore;

  const ResultScreen({
    Key? key,
    required this.webScore,
    required this.mobileScore,
    required this.dataScore,
    required this.gameScore,
    required this.securityScore,
  }) : super(key: key);

  String calculateResult() {
    Map<String, int> scores = {
      "Web Geliştirme": webScore,
      "Mobil Geliştirme": mobileScore,
      "Veri Bilimi ve AI": dataScore,
      "Oyun Geliştirme": gameScore,
      "Siber Güvenlik": securityScore,
    };

    var highestCategory = scores.keys.first;
    for (var key in scores.keys) {
      if (scores[key]! > scores[highestCategory]!) {
        highestCategory = key;
      }
    }
    return highestCategory;
  }

  List<Widget> getResources(String category, BuildContext context) {
    List<String> imagePaths = [];
    List<String> links = [];

    switch (category) {
      case "Web Geliştirme":
        imagePaths = [
          "lib/images/youtube.png",
          "lib/images/patika.png",
          "lib/images/udemy.png",
        ];
        links = [
          "https://www.youtube.com/watch?v=y745R3Lv9WI",
          "https://academy.patika.dev/paths/baslangic-seviye-frontend-web-development-patikasi",
          "https://www.udemy.com/course/komple-web-developer-kursu/?couponCode=NEWYEARCAREERFT",
        ];
        break;
      case "Mobil Geliştirme":
        imagePaths = [
          "lib/images/youtube.png",
          "lib/images/udemy.png",
          "lib/images/patika.png",
        ];
        links = [
          "https://www.youtube.com/playlist?list=PLJ5EAGz05Q3FJG96SH8GoWcSUg8IHwtnt",
          "https://www.udemy.com/course/android-mobil-uygulama-gelistirme-egitimi-kotlin/?couponCode=NEWYEARCAREERFT",
          "https://academy.patika.dev/paths/react-native-ile-mobile-app-patikasi",
        ];
        break;
      case "Veri Bilimi ve AI":
        imagePaths = [
          "lib/images/youtube.png",
          "lib/images/udemy.png",
          "lib/images/patika.png",
        ];
        links = [
          "https://www.youtube.com/watch?v=I1to--l0Yj8",
          "https://www.udemy.com/course/python-egitimi/?couponCode=NEWYEARCAREERFT",
          "https://academy.patika.dev/paths/baslangic-seviye-veri-bilimi-patikasi",
        ];
        break;
      case "Oyun Geliştirme":
        imagePaths = [
          "lib/images/youtube.png",
          "lib/images/udemy.png",
          "lib/images/patika.png",
        ];
        links = [
          "https://www.youtube.com/playlist?list=PLAP1GY1YwkrdiEsjnp9xXe810eq-s8jPP",
          "https://www.udemy.com/course/unity-ile-sifirdan-profesyonellige-3d-2d-oyun-yapimi/",
          "https://academy.patika.dev/tr/paths/unity-learn-patikasi",
        ];
        break;
      case "Siber Güvenlik":
        imagePaths = [
          "lib/images/youtube.png",
          "lib/images/udemy.png",
        ];
        links = [
          "https://www.youtube.com/playlist?list=PLGWmuqrfJZRtILSgqBaa7Ur1IegoQCrDU",
          "https://www.udemy.com/course/sfrdan-etik-hacker-egitimi-2023/",
        ];
        break;
    }

    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = (screenWidth - 40) / 3; // 40px padding, 3 eleman

    return [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: imagePaths
              .asMap()
              .map((index, path) => MapEntry(
            index,
            GestureDetector(
              onTap: () => _launchURL(links[index]),
              child: Container(
                width: itemWidth,
                height: itemWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(path),
                    fit: BoxFit.contain,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300),
                ),
              ),
            ),
          ))
              .values
              .toList(),
        ),
      ),
    ];
  }

  // URL açma fonksiyonu güncellendi
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final category = calculateResult();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sonuçlar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "En uygun kategori: $category",
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              "Eğitim kaynakları:",
              style: TextStyle(fontSize: 18),
            ),
            ...getResources(category, context),
          ],
        ),
      ),
    );
  }
}
