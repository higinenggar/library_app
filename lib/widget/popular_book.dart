class PopularBookModel {
  String? title;
  String? author;
  String? price;
  String? image;
  String? description;
  int? color;

  PopularBookModel(this.title, this.author, this.price, this.image, this.color,
      this.description);
}

List<PopularBookModel> populars = popularBookData
    .map((item) => PopularBookModel(
        item['title'] as String,
        item['author'] as String,
        item['price'] as String,
        item['image'] as String,
        item['color'] as int,
        item['description'] as String))
    .toList();

var popularBookData = [
  {
    "title": "The Edge of The Universe",
    "author": "Nathan Harrington",
    "price": "30",
    "image": "assets/images/cover-1.png",
    "color": 0xFF25414c,
    "description":
        "“First, the part of the universe that we can see is uniform and flat on the cosmic scale.\n\n The uniformity of the universe means that galaxy groups are spread out more or less evenly on the cosmic scale. The flatness of the universe means that the geometry of spacetime is not curved or warped on the cosmic scale. This means that the universe does not wrap around and connect to itself like the surface of a sphere, which would lead to a finite universe.\n\nThe flatness of the universe is actually a result of the uniformity of the universe, since concentrated collections of mass cause spacetime to be curved. Moons, planets, stars, and galaxies are examples of concentrated collections of mass, and therefore they do indeed warp spacetime in the area around them. However, these objects are so small compared to the cosmic scale, that the spacetime warping which they cause are negligible on the cosmic scale. If you average over all of the moons, planets, stars, and galaxies in the universe in order to get a large-scale expression for the mass distribution of the universe, you find it to be constant."
  },
  {
    "title": "The Subtle Art of Not Giving a F*ck",
    "author": "Mark Manson",
    "price": "15",
    "image": "assets/images/cover-6.png",
    "color": 0xFFeff612f,
    "description":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.\n\nAll the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
  },
  {
    "title": "Loving The CEO",
    "author": "Author Nene",
    "price": "40",
    "image": "assets/images/cover-2.png",
    "color": 0xFF095169,
    "description":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.\n\nAll the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
  },
  {
    "title": "The Four Winds",
    "author": "Kristin Hannah",
    "price": "30",
    "image": "assets/images/cover-4.png",
    "color": 0xFFddab56,
    "description":
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham."
  }
];
