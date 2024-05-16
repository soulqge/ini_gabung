import 'package:gabung2/buku/models/item.dart';
import 'package:flutter/material.dart';
import 'package:gabung2/film/page/home.dart';
import 'package:gabung2/navbar/navbar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Item> items = [
    Item( name: 'It Ends With US', 
          harga: 250000, 
          desc: """It Ends with Us is a book that follows a girl named Lily who has just moved and 
is ready to start her life after college. Lily then meets a guy named Ryle and she falls for him. 
As she is developing feelings for Ryle, Atlas, her first love, reappears and challenges the relationship 
between Lily and Ryle.""", 
          foto: "https://cdn.gramedia.com/uploads/picture_meta/2023/5/26/zicekhdrq9sheivpqogtc3.jpg",
          id: 0
          ),
    Item( name: 'Aku Titip Dia, Ya', 
          harga: 69000, 
          desc: """Aku adalah rumah kosong yang lega udara. Di mana pintuku lama tertutup, banyak orang yang mengetuk dan hanya kau yang aku persilakan masuk. 
Layaknya rumah yang menanti lama tuannya pulang. Aku sangat bahagia ketika kau datang. Hatiku telah berdebu, kaulah yang berhasil membuatnya kembali menggebu. 
Bersamamu antusiasku jadi tak karuan, merasa kau yang selama ini aku cari. - Sebelum ternyata, tujuanmu sebenarnya bukanlah aku. Teruntuk diriku, menyerah dan sadarlah, mundur secara perlahan. 
Karena dia yang kini sedang kau perjuangkan dan harapankan, lebih memilih memperjuangkan dan mengharapkan seseorang yang lain. Biarkan dia bahagia, meski harus tersiksa karena bukan dirimu penyebabnya. 
Jatuh cinta lah secara dewasa, tanpa memaksa untuk bersama, tanpa perlu diketahuinya.""", foto: "https://cdn.gramedia.com/uploads/items/da1cb55e-12a4-4abe-bc6b-cbdb2b77f8b7.jpg",
          id: 1
),
    Item( name: 'Laut Bercerita', 
          harga: 115000, 
          desc: """Novel ini merupakan perwujudan dalam bentuk fiksi bahwa kita sebagai bangsa Indonesia tidak boleh melupakan sejarah yang telah membentuk sekaligus menjadi tumpuan bangsa Ini. 
Novel ini juga mengajak pembaca menguak misteri-misteri bangsa ini yang mana tidak diajarkan di sekolah. Walaupun novel ini adalah fiksi, laut bercerita menunjukkan kepada pembaca bahwa negeri ini pernah memasuki masa pemerintahan yang kelam.""", 
          foto: "https://s3-ap-southeast-1.amazonaws.com/ebook-previews/40678/143505/1.jpg",
          id:2
          ),
    Item( name: 'Yang Telah Lama Pergi', desc: """KAMU sudah gila!”
Itulah kalimat yang terakhir kali Al Mas'ud ingat sebelum día pingsan beberapa saat lalu.
Sekarang, matanya terbuka, mengerjap-ngerjap. Terang? Seberkas cahaya matahari menembus celah kecil di dinding. Sudah siang? Berapa lama dia pingsan? Beringsut hendak duduk. Mengeluh pelan, tubuhnya terasa sakit. Ada memar di lengan, juga lebam di paha, punggung.
Melewati lantai basah. Melewati kerangkeng lain-yang kosong. Terus maju. Kapal ini cukup besar, dengan palka besar di perutnya. Dia menaiki anak tangga. Suara debur ombak terdengar semakin kencang, juga sorak-sorai.""", 
            foto: "https://cdn.gramedia.com/uploads/picture_meta/2023/8/12/qxt63qkjxklcjyfcfbwr8w.jpg", 
            harga: 99000,
            id: 3
            ),
      Item( name: 'Rumah Untuk Alie', 
            desc: """Tentang anak bungsu bernama Alie Ishala Samantha yang menyimpan lukanya sendirian. Memperjuangkan penerimaan dari ayah serta keempat saudaranya atas kehilangan kebahagiaan yang dituduhkan kepadanya. 
Cacian, makian, serta kebencian sudah biasa ia terima, tapi tidak ada yang tahu jika Alie lelah memendam sakit sendirian.""",
            foto: "https://tekadmediacakrawala.id/wp-content/uploads/2024/01/Rumah-Untuk-Alie.jpg", 
            harga: 99000,
            id: 4
          )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coba - Coba"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, '/home');
        }, 
        icon: Icon(Icons.home)
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/cart');
            }, 
            icon: Icon(Icons.shopping_cart_outlined)
          )
        ],
      ),
        body: Container(
          margin: EdgeInsets.all(8),
            child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Card(
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "/item", arguments: item);
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Image(image: NetworkImage(item.foto), height: 100, width: 100,),
                          Expanded(child: Text(item.name)),
                          Expanded(
                            child: Text(
                              item.harga.toString(),
                              textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
        ),
        bottomNavigationBar: NavBar(selectedItem: 0),
    );
  }
}
