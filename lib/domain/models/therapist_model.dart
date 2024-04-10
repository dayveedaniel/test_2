// contains class of therapist model

class TherapistModel {
  final String name;
  final int age;
  final double rating;
  String? imageUrl;
  final bool isFavourite;
  final double experience;
  final String about;
  final String country;

  TherapistModel({
    required this.name,
    required this.age,
    required this.rating,
    required this.isFavourite,
    required this.experience,
    required this.about,
    required this.country,
  });

  factory TherapistModel.fromJson(Map<String, dynamic> json) => TherapistModel(
        name: json['name'],
        age: json['age'],
        rating: json['rating'],
        isFavourite: json['isFavourite'],
        experience: json['experience'],
        about: '',
        country: '',
      );
}
