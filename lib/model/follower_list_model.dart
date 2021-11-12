class FollowersModel {
  String? name;
  String? image;

  FollowersModel(this.name, this.image);
}

List<FollowersModel> follower = followerList
    .map((item) => FollowersModel(item['name'], item['image']))
    .toList();
var followerList = [
  {
    "name": "Raja Ampat",
    "image": "assets/images/advancebtn.png",
  },
  {
    "name": "Bali, Indonesia",
    "image": "assets/images/advancebtn.png",
  },
  {
    "name": "Samuel, Indonesia",
    "image": "assets/images/advancebtn.png",
  },
  {
    "name": "Samuel, Indonesia",
    "image": "assets/images/advancebtn.png",
  },
  {
    "name": "Samuel, Indonesia",
    "image": "assets/images/advancebtn.png",
  },
];
