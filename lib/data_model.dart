class DataModel {
  final String? name;
  final String? email;
  final String? number;

  DataModel({required this.name, required this.email, required this.number});

  static DataModel fromJson(Map<String, dynamic> json) {
    return DataModel(
        name: json['name'], email: json['email'], number: json['phone']);
  }
}
