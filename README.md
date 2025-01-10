# Yazılım Alanı Belirleme Uygulaması

Bu Flutter uygulaması, yazılıma yeni başlayanlar için hangi yazılım alanında daha başarılı olabileceklerini keşfetmelerine yardımcı olmak amacıyla geliştirilmiştir. Kullanıcılar soruları yanıtlayarak kendilerine en uygun yazılım alanını belirleyebilir.

## Özellikler

- **Soru Yanıtlama:** Kullanıcılar, her bir soruya -10 ile +10 arasında bir değer atayarak yanıt verir.
- **Sonuç Ekranı:** Kullanıcıların verdiği cevaplara göre yazılım alanları için bir skor hesaplanır ve en yüksek puanlı alan önerilir.
- **Kaynaklar:** Sonuç ekranında, önerilen yazılım alanı için öğrenme kaynaklarının bağlantıları paylaşılır.

## Teknolojiler

- Flutter
- Dart
- Material Design
- URL Launcher (link yönlendirmeleri için)

## Kurulum

1. Bu projeyi klonlayın:

```bash
git clone https://github.com/MertGzc/alanBelirlemeUygulamasi
```

2. Proje dizinine gidin:

```bash
cd yazilim-alani-belirleme
```

3. Gerekli paketleri yükleyin:

```bash
flutter pub get
```

4. Uygulamayı çalıştırın:

```bash
flutter run
```

## Proje Yapısı

```
lib/
|-- main.dart          # Ana uygulama dosyası
|-- home_screen.dart   # Ana ekran
|-- quiz_screen.dart   # Soru cevaplama ekranı
|-- result.dart        # Sonuç ekranı
|-- questions.dart     # Soruların tanımlı olduğu dosya
```

## Kullanım

1. Uygulama açıldığında ana ekranda kısa bir bilgilendirme metni görünecektir.
2. **Başla** butonuna tıklayarak soruları yanıtlamaya başlayabilirsiniz.
3. Her soruya -10 ile +10 arasında bir puan vererek yanıtlayın ve "Cevapla" butonuna tıklayın.
4. Tüm soruları yanıtladıktan sonra sonuç ekranında size en uygun yazılım alanını ve öğrenme kaynaklarını görebilirsiniz.

## Geliştirici Notları

- Sorular ve kategoriler `questions.dart` dosyasında tanımlanmıştır. Yeni sorular eklemek isterseniz bu dosyayı düzenleyebilirsiniz.
- Kaynak bağlantıları `result.dart` dosyasında tanımlıdır. Geliştirilecek alanlar için yeni bağlantılar ekleyebilirsiniz.

## Lisans

Bu proje [MIT Lisansı](LICENSE) kapsamında lisanslanmıştır. Daha fazla bilgi için `LICENSE` dosyasını inceleyin.

---

Geliştirici: **Mert Gezici**

Eğer herhangi bir sorunuz veya öneriniz varsa lütfen benimle iletişime geçmekten çekinmeyin!
