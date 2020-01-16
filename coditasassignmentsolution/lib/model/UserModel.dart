class UserModel {
  String seed;

  User user;

  String version;

  UserModel(this.seed,// this.user,
      this.version);
}

class User {
  String salt;

  String gender;

  String sha256;

  String registered;

  String cell;

  String picture;

  String SSN;

  String sha1;

  String password;

  String phone;

  String dob;

  Name name;

  Location location;

  String email;

  String username;

  String md5;

  User(
      this.salt,
      this.gender,
      this.sha256,
      this.registered,
      this.cell,
      this.picture,
      this.SSN,
      this.sha1,
      this.password,
      this.phone,
      this.dob,
      this.name,
      this.location,
      this.email,
      this.username,
      this.md5);
}
//[0]

class Location {
  String zip;

  String city;

  String street;

  String state;

  Location(this.zip, this.city, this.street, this.state);
}

class Name {
  String last;

  String title;

  String first;

  Name(this.last, this.title, this.first);
}
