import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alan Belirleme Uygulaması"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 200.0, right: 30.0, left: 30.0),
              child: Text(
                "Bu uygulama, yazılıma yeni başlayanlar için hangi alanda daha başarılı olabileceğini keşfetmesine yardımcı olur. Soruları yanıtlayarak size en uygun alanı belirleyeceğiz.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0), // Sağ ve sol padding, üstten biraz boşluk
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const QuizScreen()),
                  );
                },
                child: const Text("Başla"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
