import 'package:flutter/material.dart';
import 'questions.dart';
import 'result.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int webScore = 0;
  int mobileScore = 0;
  int dataScore = 0;
  int gameScore = 0;
  int securityScore = 0;
  double currentScore = 0;

  void answerQuestion() {
    setState(() {
      switch (questions[currentQuestionIndex].category) {
        case "web":
          webScore += currentScore.toInt();
          break;
        case "mobil":
          mobileScore += currentScore.toInt();
          break;
        case "data":
          dataScore += currentScore.toInt();
          break;
        case "game":
          gameScore += currentScore.toInt();
          break;
        case "security":
          securityScore += currentScore.toInt();
          break;
      }
      currentScore = 0; // Slider'ı sıfırla
      currentQuestionIndex++;
    });
    if (currentQuestionIndex >= questions.length) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            webScore: webScore,
            mobileScore: mobileScore,
            dataScore: dataScore,
            gameScore: gameScore,
            securityScore: securityScore,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sorular"),
      ),
      body: currentQuestionIndex < questions.length
          ? SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Üst kısma hizalamak için
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150.0), // Üst boşluğu azalt
              child: Container(
                height: 40.0, // Soru sırası yüksekliği
                child: Text(
                  "Soru ${currentQuestionIndex + 1} / ${questions.length}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0,right: 6.0, left: 6.0),
              child: Container(
                height: 100.0, // Soru metni yüksekliği
                child: Text(
                  questions[currentQuestionIndex].text,
                  style: const TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              height: 10.0, // Slider yüksekliği
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Slider(
                value: currentScore,
                min: -10,
                max: 10,
                divisions: 20,
                label: currentScore.toString(),
                onChanged: (value) {
                  setState(() {
                    currentScore = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: answerQuestion,
                child: const Text("Cevapla"),
              ),
            ),
          ],
        ),
      )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
