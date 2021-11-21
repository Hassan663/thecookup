import 'package:cookup/views/login.dart';

class UserProfile {
  UserProfile({
    this.name,
    this.imagepath,
    required this.page,
  });

  var page;
  final String? imagepath;

  final String? name;

  static List<UserProfile> UserProfileDetailsList = [
    UserProfile(
        name: "Ellisha",
        page: LoginScreen(),
        imagepath: "assets/images/kahari.png"),
    UserProfile(
        name: "Autumn",
        page: LoginScreen(),
        imagepath: "assets/images/kahari.png"),
    UserProfile(
        name: "Noa",
        page: LoginScreen(),
        imagepath: "assets/images/kahari.png"),
    UserProfile(
        name: "Danika",
        page: LoginScreen(),
        imagepath: "assets/images/kahari.png"),
    UserProfile(
        name: "Kiana",
        page: LoginScreen(),
        imagepath: "assets/images/kahari.png"),
    UserProfile(
        name: "Danika",
        page: LoginScreen(),
        imagepath: "assets/images/kahari.png"),
    UserProfile(
        name: "Ellisha",
        page: LoginScreen(),
        imagepath: "assets/images/kahari.png"),
    UserProfile(
        name: "Kiana",
        page: LoginScreen(),
        imagepath: "assets/images/kahari.png"),
    UserProfile(
        name: "Noa",
        page: LoginScreen(),
        imagepath: "assets/images/kahari.png"),
  ];
}
