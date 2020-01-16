import 'dart:convert';
import 'package:coditasassignmentsolution/constant/AppConstant.dart';
import 'package:coditasassignmentsolution/model/UserModel.dart';
import 'package:http/http.dart' as http;

class UsersProvider {
  UsersProvider();

  static Future<List<UserModel>> fetchAndSetUsers() async {
    final List<UserModel> loadedUsers = [];
    try {
      final response = await http.get(AppConstant.url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData != null) {
        extractedData.forEach((prodId, userData) {
          print(userData[0]['version']);

          loadedUsers.add(UserModel(
            userData[0]['seed'],
            userData[0]['version'],
          ));
        });
      }

      return loadedUsers;
    } catch (error) {
      print(error);
      throw (error);
    }
  }
}
