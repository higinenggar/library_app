class NewBookModel {
  String image;

  NewBookModel(this.image);
}

List<NewBookModel> newbooks =
    newBookData.map((item) => NewBookModel(item['image']!)).toList();

var newBookData = [
  {"image": "assets/images/cover-1.png"},
  {"image": "assets/images/cover-2.png"},
  {"image": "assets/images/cover-3.png"},
  {"image": "assets/images/cover-4.png"},
  {"image": "assets/images/cover-5.png"},
  {"image": "assets/images/cover-6.png"},
  // {"image": "assets/images/img_newbook1.png"},
  // {"image": "assets/images/img_newbook2.png"},
];
