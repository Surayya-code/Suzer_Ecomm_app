// class ProductModel {
//   int? _id;
//   String? _title;
//   double? _price;
//   String? _category;
//   String? _description;
//   String? _url;

//   ProductModel(
//       {int? id,
//       String? title,
//       double? price,
//       String? category,
//       String? description,
//       String? url}) {
//     if (id != null) {
//       _id = id;
//     }
//     if (title != null) {
//       _title = title;
//     }
//     if (price != null) {
//       _price = price;
//     }
//     if (category != null) {
//       _category = category;
//     }
//     if (description != null) {
//       _description = description;
//     }
//     if (url != null) {
//       _url = url;
//     }
//   }

//   int? get id => _id;
//   set id(int? id) => _id = id;
//   String? get title => _title;
//   set title(String? title) => _title = title;
//   double? get price => _price;
//   set price(double? price) => _price = price;
//   String? get category => _category;
//   set category(String? category) => _category = category;
//   String? get description => _description;
//   set description(String? description) => _description = description;
//   String? get url => _url;
//   set url(String? url) => _url = url;

//   ProductModel.fromJson(Map<String, dynamic> json) {
//     _id = json['id'];
//     _title = json['title'];
//     _price = json['price'];
//     _category = json['category'];
//     _description = json['description'];
//     _url = json['url'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = _id;
//     data['title'] = _title;
//     data['price'] = _price;
//     data['category'] = _category;
//     data['description'] = _description;
//     data['url'] = _url;
//     return data;
//   }
// }
