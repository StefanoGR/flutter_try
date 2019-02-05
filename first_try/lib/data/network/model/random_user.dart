class RandomUser {
  final String first_name;
  final String email;
  final String picture;

  RandomUser(this.first_name, this.email, this.picture);

  RandomUser.fromJson(Map<String, dynamic> userJson)
      : first_name = userJson['name']['first'],
        email = userJson['email'],
        picture = userJson['picture']['thumbnail'] as String;
}
