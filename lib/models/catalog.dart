class CatalogModel {
  static final items = [
    Item(
      id: "1",
      bookName: "Fault In Our Stars",
      desc: "Mostly sailing book",
      price: 999,
      color: "black",
      image:
          "https://upload.wikimedia.org/wikipedia/en/a/a9/The_Fault_in_Our_Stars.jpg",
    ),
    Item(
      id: "2",
      bookName: "It Ends With Us",
      desc: "Mostly sailing book",
      price: 999,
      color: "black",
      image:
          "https://4.bp.blogspot.com/-CDuBRNrcv9g/WBo-FKvDWoI/AAAAAAAADeI/cLa5i9qwmbQsMOM5GRrdY1LnqX0ieWCFwCLcB/s1600/it-ends-with-us.jpg",
    ),
    Item(
      id: "3",
      bookName: "It Starts With Us",
      desc: "Mostly sailing book",
      price: 999,
      color: "black",
      image:
          "https://tse3.mm.bing.net/th?id=OIP.XkiKLh_NoyfxNfLmcrqBXAHaLg&pid=Api&P=0",
    ),
    Item(
      id: "4",
      bookName: "The Spy",
      desc: "Mostly sailing book",
      price: 999,
      color: "black",
      image:
          "https://tse4.mm.bing.net/th?id=OIP.2BQvOG9kwfjH-rLqpmz5ZgHaHa&pid=Api&P=0",
    ),
    Item(
      id: "5",
      bookName: "Ugly Love",
      desc: "Mostly sailing book",
      price: 999,
      color: "black",
      image:
          "https://tse1.mm.bing.net/th?id=OIP.DMGDucyD5VD5OyI3G9kL5QAAAA&pid=Api&P=0",
    ),
    Item(
      id: "6",
      bookName: "The Fault In Our Stars",
      desc: "Mostly sailing book",
      price: 999,
      color: "black",
      image:
          "https://tse1.mm.bing.net/th?id=OIP.2BQvOG9kwfjH-rLqpmz5ZgHaHa&pid=Api&P=0",
    ),
    Item(
      id: "7",
      bookName: "To Kill a Mockingbird",
      desc: "A classic novel about justice and racism in the Deep South",
      price: 1299,
      color: "blue",
      image: "https://source.unsplash.com/random/nature",
    ),
    Item(
      id: "8",
      bookName: "1984",
      desc:
          "A dystopian novel about a totalitarian government and the power of language",
      price: 1499,
      color: "red",
      image: "https://source.unsplash.com/random/tree",
    ),
    Item(
      id: "9",
      bookName: "The Catcher in the Rye",
      desc: "A coming-of-age novel about teenage angst and alienation",
      price: 1199,
      color: "yellow",
      image: "https://source.unsplash.com/random/tree1",
    ),
    Item(
      id: "10",
      bookName: "Pride and Prejudice",
      desc: "A romantic novel about the manners and morals of English society",
      price: 999,
      color: "green",
      image: "https://source.unsplash.com/random/tree2",
    ),
    Item(
      id: "11",
      bookName: "The Great Gatsby",
      desc:
          "A novel about the American Dream, love, and tragedy in the Roaring Twenties",
      price: 1099,
      color: "silver",
      image: "https://source.unsplash.com/random/tree3",
    ),
    Item(
      id: "12",
      bookName: "The hobbit",
      desc: "Mostly sailing book",
      price: 999,
      color: "black",
      image: "https://source.unsplash.com/random/nature2",
    ),
  ];
}

class Item {
  final String id;
  final String bookName;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.bookName,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  /*
  Item(String id, String bookName, String desc, num price, String color, String image){
    this.id = id;
    this.bookName = bookName;
    this.desc = desc;
    this.price = price;
    this.color = color;
    this.image = image;
  } == Item(this.id, this.bookName, this.desc, this.price, this.color, this.image) // unnamed constructor

  Item({this.id, this.bookName, this.desc, this.price, this.color, this.image}) // named constructor
   */
}

  // factory Item.fromJson(Map<String, dynamic> json){
  //   return Item(
  //     id: json['id'],
  //     bookName: json['bookName'],
  //     desc: json['desc'],
  //     price: json['price'],
  //     color: json['color'],
  //     image: json['image'],
  //   );
  // }

