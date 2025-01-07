class Question {
  final String text;
  final String category;

  Question(this.text, this.category);
}

final List<Question> questions = [
  // Web Geliştirme
  Question("Bir web sitesi tasarlamak ve oluşturmak ilginizi çeker mi?", "web"),
  Question("Metin ve görselleri düzenleyerek web sayfaları oluşturmak nasıl hissediyorsunuz?", "web"),
  Question("Farklı internet sitelerini gezmeyi ve nasıl çalıştıklarını anlamayı sever misiniz?", "web"),
  Question("Web tasarımında renk, yazı tipi ve düzen gibi görsel unsurları seçmek sizi heyecanlandırır mı?", "web"),
  Question("Kendi web sitenizi oluşturmak için HTML, CSS ve JavaScript gibi diller öğrenmeye istekli misiniz?", "web"),

  // Mobil Geliştirme
  Question("Telefon ve tabletlerde çalışan uygulamalar yapmak ilginizi çeker mi?", "mobil"),
  Question("Mobil oyunlar veya uygulamalar için kullanıcı dostu arayüzler tasarlamak heyecan verici mi?", "mobil"),
  Question("Android veya iOS platformlarında uygulama geliştirmek size çekici gelir mi?", "mobil"),
  Question("Bir uygulamanın mobil cihazlarda hızlı çalışmasını sağlamak için optimizasyon yapmayı ister misiniz?", "mobil"),
  Question("Çevrimdışı çalışan mobil uygulamalar geliştirerek insanların günlük yaşamlarını kolaylaştırmak ilginizi çeker mi?", "mobil"),

  // Veri Bilimi
  Question("Büyük miktarda veriyi analiz ederek anlamlı sonuçlar çıkarmak heyecan verici mi?", "data"),
  Question("Veri setlerinden desenler ve eğilimler bulmayı öğrenmek ister misiniz?", "data"),
  Question("Yapay zeka ile verileri analiz etmek ve tahminlerde bulunmak sizi motive eder mi?", "data"),
  Question("Python gibi programlama dilleriyle veri analizi yapmak size ilginç geliyor mu?", "data"),
  Question("Veri görselleştirme yaparak analizlerinizi daha anlaşılır hale getirmeyi ister misiniz?", "data"),

  // Oyun Geliştirme
  Question("Bir oyun tasarlamak ve karakterler oluşturmak sizi heyecanlandırır mı?", "game"),
  Question("Farklı oyun seviyeleri ve zorluklar oluşturmak ilginizi çeker mi?", "game"),
  Question("Oyunlarda karakterlerin hareketlerini ve etkileşimlerini programlamak ilginç olur mu?", "game"),
  Question("2D veya 3D oyunlar yapmayı öğrenmek ilginizi çeker mi?", "game"),
  Question("Bir oyunun görsellerini, seslerini ve oyun dinamiklerini tasarlamak heyecan verici mi?", "game"),

  // Siber Güvenlik
  Question("İnternet üzerindeki güvenlik açıklarını tespit edip bunları kapatmak sizi heyecanlandırır mı?", "security"),
  Question("Şifreleme tekniklerini öğrenmek ve bunları uygulamak ilginizi çeker mi?", "security"),
  Question("Sistemlerin güvenliğini sağlamak ve kötü niyetli yazılımlardan korunmalarını sağlamak ister misiniz?", "security"),
  Question("Ağ trafiğini izleyerek siber saldırılara karşı savunma yapmak heyecan verici mi?", "security"),
  Question("Çeşitli siber tehditleri tanımlayıp bunlara çözüm geliştirmeyi ister misiniz?", "security"),
];
