import 'product_model.dart';

class Data{
  static List<ProductModel> generateProducts(){
    return [
      ProductModel(
        1,
        "assets/images/product_1.png",
        "Cartier",
        "Women's Bags",
         "womens",
         99.56,
      ),
      ProductModel(
          2,
          "assets/images/product_2.png",
          "Wedding bags",
          "Women's Bags",
          "womens",
          137.56
      ),
      ProductModel(
          3,
          "assets/images/product_3.png",
          "Nike Air Max",
          "Men's Shoes",
          "snikers",
          99.56
      ),
      ProductModel(
          4,
          "assets/images/product_4.png",
          "Victoria Bags",
          "Womnes's Bags",
          "bags",
          212.56
      ),
      ProductModel(
          5,
          "assets/images/product_5.png",
          "Snikers",
          "Men's Shoes",
          "snikers",
          212.56
      ),
      ProductModel(
          6,
          "assets/images/product_6.png",
          "EM Shoes",
          "Men's Shoes",
          "men shoes",
          212.56
      ),
    ];
  }

  static List<ProductModel> generateCategories(){
    return [
      ProductModel(
          1,
        "assets/images/product_1.png",
        "Creter Impact",
        "Men's Shoes",
         "menshoes",
         99.56,
      ),
      ProductModel(
          2,
          "assets/images/product_2.png",
          "Air - Max Pre Day",
          "Men's Shoes",
          "men shoes",
          137.56
      ),
      ProductModel(
          3,
          "assets/shoes_3.png",
          "Running",
          "Men's Shoes",
          "men shoes",
          99.56
      ),
      ProductModel(
          4,
          "assets/shoes_4.png",
          "Rugby",
          "Men's Shoes",
          "men shoes",
          212.56
      ),
    ];
  }
}