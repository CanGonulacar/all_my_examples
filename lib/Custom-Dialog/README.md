"success_dialog" : 'showDialog' methodumuz 'T' type alır. Her zaman bir T type gördüğünde BOŞ BIRAKMAMAYA ÇALIŞ. Ne olduğu belli olsun. İhtiyacına göre ne lazımsa yerleştir. Böyle böyle birden fazla özel dialog oluşturabilirsin veya

"base_dialog" : Burada 'showDialog' methodumuzda sürekli kullanılacak olan 'barrierDismissible', 'useSafeArea' gibi property'leri göz kalabalığı yapmaması için bir base katman atıyoruz. Ayrıca birbirine bağımlı hale de getirmiş oluyoruz. Çünkü base katmana bir şey eklediğimde tüm custom dialoglarımızda ekleme yapmamız için hata verecektir. 

"example_dialog_2" : Eğerki statelessWidget kullanmak istemiyorsan bu sayfadaki örneği kullanabilirsin. Biliyorsun context yeni bir iş yükü doğurur. context'e ihtiyaç yoksa bu yöntem daha performanslı. Bu yöntemi TextStyle gibi widget'larda çok kullanıyorum.

Hepsi tercihe bağlı olarak değişir...