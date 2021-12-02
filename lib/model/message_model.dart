import 'package:cookup/views/tuc_room.dart';

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
        page: TucRoom(),
        imagepath: "assets/images/kahari.png"),
    UserProfile(
        name: "Autumn",
        page: TucRoom(),
        imagepath: "assets/images/kahari.png"),
    UserProfile(
        name: "Noa",
        page: TucRoom(),
        imagepath: "assets/images/kahari.png"),
    UserProfile(
        name: "Danika",
        page: TucRoom(),
        imagepath: "assets/images/kahari.png"),
    UserProfile(
        name: "Kiana",
        page: TucRoom(),
        imagepath: "assets/images/kahari.png"),
    UserProfile(
        name: "Danika",
        page: TucRoom(),
        imagepath: "assets/images/kahari.png"),
    UserProfile(
        name: "Ellisha",
        page: TucRoom(),
        imagepath: "assets/images/kahari.png"),
    UserProfile(
        name: "Kiana",
        page: TucRoom(),
        imagepath: "assets/images/kahari.png"),
    UserProfile(
        name: "Noa",
        page: TucRoom(),
        imagepath: "assets/images/kahari.png"),
  ];
}
