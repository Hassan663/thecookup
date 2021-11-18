class FollowingModel {
  String name;
  String image;
  // String desc;
  String icon;
  //String followButton;

  FollowingModel(
      this.name, this.image, this.icon);
}

List<FollowingModel> following = followingList
    .map((item) => FollowingModel(item['image'],item['name'],
        item['icon']))
    .toList();
List<Map<String, dynamic>> followingList = [
  {
    "image": "assets/images/inked.png",
    "name": "Cook ware group",
    "icon": "assets/images/next.png"
  },
  {
    "name": "United Run Tower",
    "image": "assets/images/cqrd.png",
    "icon": "assets/images/next.png",
  },
  {
    "name": "Drink Function",
    "image": "assets/images/kahari.png",
    "icon": "assets/images/next.png",
  },
  // {
  //   "name": "Fintch tec",
  //   "image": "assets/images/moritz.png",
  //   "icon": "assets/images/next.png",
  // },
  // {
  //   "name": "Snubob",
  //   "image": "assets/images/dami.png",
  //   "desc": "Finance major. College grad. Music Exec",
  //   "followButton": "Following"
  // },
  // {
  //   "name": "Snubob",
  //   "image": "assets/images/dami.png",
  //   "followButton": "Following"
  // },
  // {
  //   "name": "Snubob",
  //   "image": "assets/images/dami.png",
  //   "followButton": "Following"
  // },
  // {
  //   "name": "Snubob",
  //   "image": "assets/images/dami.png",
  //   "followButton": "Following"
  // },
];
