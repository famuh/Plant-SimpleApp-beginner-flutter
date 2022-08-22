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
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Malesuada fames ac turpis egestas sed. Adipiscing commodo elit at imperdiet dui accumsan sit amet.",
      type: 'Indoor',
      price: 'Rp. 250 000',
      imageAsset: 'assets/images/white-rose.jpg'),
  plantData(
      name: 'Aloe Vera',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Malesuada fames ac turpis egestas sed. Adipiscing commodo elit at imperdiet dui accumsan sit amet.",
      type: 'Indoor',
      price: 'Rp. 150 000',
      imageAsset: 'assets/images/aloe-vera.jpg'),
  plantData(
      name: 'Rosemary',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Malesuada fames ac turpis egestas sed. Adipiscing commodo elit at imperdiet dui accumsan sit amet.",
      type: 'Indoor',
      price: 'Rp. 100 000',
      imageAsset: 'assets/images/rosemary.jpg'),
  plantData(
      name: 'Calathea',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Malesuada fames ac turpis egestas sed. Adipiscing commodo elit at imperdiet dui accumsan sit amet.",
      type: 'Indoor',
      price: 'Rp. 120 000',
      imageAsset: 'assets/images/calathea.jpg'),
  plantData(
      name: 'Rose',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Malesuada fames ac turpis egestas sed. Adipiscing commodo elit at imperdiet dui accumsan sit amet.",
      type: 'Outdoor',
      price: 'Rp. 300 000',
      imageAsset: 'assets/images/rose.jpg'),
  plantData(
      name: 'Lily',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Malesuada fames ac turpis egestas sed. Adipiscing commodo elit at imperdiet dui accumsan sit amet.",
      type: 'Outdoor',
      price: 'Rp. 260 000',
      imageAsset: 'assets/images/lily.jpg')
];
