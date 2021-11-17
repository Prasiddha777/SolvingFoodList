class FoodList {
  String img;
  String name;
  String desc;
  String price;
  String quantity;

  FoodList({
    required this.img,
    required this.name,
    required this.desc,
    required this.price,
    required this.quantity,
  });
}

FoodList first = FoodList(
  img:
      'https://www.vegrecipesofindia.com/wp-content/uploads/2020/11/pizza-recipe-2-500x500.jpg',
  name: "Pizza",
  desc: "Neapolitan Pizza.Neapolitan Pizza.Chicago Pizza.New York-Style",
  price: "Rs.180.00/-",
  quantity: "asbrv",
);
FoodList second = FoodList(
  img:
      'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2021%2F07%2F13%2FUltimate-Veggie-Burgers-FT-Recipe-0821.jpg&q=85',
  name: "Burger",
  desc: "Beef Burgers.Elk Burgers.Portobello Mushroom Burgers.",
  price: "Rs.120.00/-",
  quantity: "asbrv",
);
FoodList third = FoodList(
  img: 'https://checkplease.wttw.com/sites/default/files/momo.jpg',
  name: "Momo",
  desc: "Chocolate Momos.Wheat Momos.Soup Momos.Cheese Momos.",
  price: "Rs.110.00/-",
  quantity: "asbrv",
);
FoodList fourth = FoodList(
  img:
      'https://scm-assets.constant.co/scm/unilever/86c9fcb727c4d90deffba18b2593a9cf/9ed43a1e-a261-42ae-bdc9-1271282ae614.jpg',
  name: "SandWich",
  desc: "Vegetable sandwich.Chicken sandwich.Salmon sandwich.",
  price: "Rs.130.00/-",
  quantity: "asbrv",
);
FoodList fifth = FoodList(
  img: 'https://img.taste.com.au/ol2Jq8ZQ/taste/2016/11/rachel-87711-2.jpeg',
  name: "French Fries",
  desc: "Regular Fries.Steak Fries.Shoestring Fries.Matchstick Fries",
  price: "Rs.100.00/-",
  quantity: "asbrv",
);

List<FoodList> myList = [
  first,
  second,
  third,
  fourth,
  fifth,
];
