class RandomUser {
  final String first_name;
  final String last_name;
  final String picture;

  RandomUser(this.first_name, this.last_name, this.picture);

  RandomUser.fromJson(Map<String, dynamic> userJson)
      : first_name = userJson['name']['first'],
        last_name = userJson['name']['last'],
        picture = userJson['picture']['thumbnail'];
}
