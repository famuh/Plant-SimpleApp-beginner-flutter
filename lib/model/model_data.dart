//blueprint
class plantData {
  String name;
  String description;
  String type;
  String price;
  String imageAsset;

  plantData(
      {required this.name,
      required this.description,
      required this.type,
      required this.price,
      required this.imageAsset});
}

//data
var plantDataList = [
  plantData(
      name: 'Peace Lily',
      description:
          'Siram peace lily secara teratur dan jangan biarkan tanah mengering, kekurangan air dapat membuat peace lily menjadi kering dan mati.',
      type: 'Indoor',
      price: 'Rp. 250 000',
      imageAsset: 'assets/images/white-rose.jpg'),
  plantData(
      name: 'Aloe Vera',
      description:
          'Lidah mertua merupakan jenis tanaman lain yang cocok ditempatkan di sudut ruangan mana pun seperti kamar, ruang tamu, dapur, dan lainnya.',
      type: 'Indoor',
      price: 'Rp. 150 000',
      imageAsset: 'assets/images/aloe-vera.jpg'),
  plantData(
      name: 'Rosemary',
      description:
          'Tanaman ini memiliki manfaat untuk meningkatkan konsentrasi, mengatasi gangguan kehilangan memori, dan meredakan nyeri otot.',
      type: 'Indoor',
      price: 'Rp. 100 000',
      imageAsset: 'assets/images/rosemary.jpg'),
  plantData(
      name: 'Calathea',
      description:
          'Memiliki corak pada tiap daunnya yang akan menambahkan kesan lebih hidup pada rungan anda.',
      type: 'Indoor',
      price: 'Rp. 120 000',
      imageAsset: 'assets/images/calathea.jpg'),
  plantData(
      name: 'Rose',
      description:
          'Mawar menjadi tanaman outdoor dikalangan banyak orang karena memiliki warna yang cerah dan cantik.',
      type: 'Outdoor',
      price: 'Rp. 300 000',
      imageAsset: 'assets/images/rose.jpg'),
  plantData(
      name: 'Lily',
      description:
          'Caladium memiliki motif yang unik pada daunnya yang dapat menambah keindahan tampilan halaman ruamh anda.',
      type: 'Outdoor',
      price: 'Rp. 260 000',
      imageAsset: 'assets/images/lily.jpg')
];
