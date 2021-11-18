class FollowersModel {
  String name;
  String image;
  String desc;
  String followButton;

  FollowersModel(this.name, this.image, this.desc, this.followButton);
}

List<FollowersModel> follower = followerList
    .map((item) => FollowersModel(
        item['name'], item['image'], item['desc'], item['followButton']))
    .toList();
List<Map<String, dynamic>> followerList = [
  {
    "name": "Naz T",
    "image": "assets/images/charles.png",
    "desc": " ",
    "followButton": "Follow"
  },
  {
    "name": "Will i C",
    "image": "assets/images/dami.png",
    "desc": "Finance major. College grad. Music Exec",
    "followButton": "Follow"
  },
  {
    "name": "Gonetilo",
    "image": "assets/images/kahari.png",
    "desc": " ",
    "followButton": "Follow"
  },
  {
    "name": "Fintch tec",
    "image": "assets/images/charles.png",
    "desc": " ",
    "followButton": "Follow"
  },
  {
    "name": "Snubob",
    "image": "assets/images/dami.png",
    "desc": " ",
    "followButton": "Follow"
  },

  {
    "name": "Naz T",
    "image": "assets/images/kahari.png",
    "desc": " ",
    "followButton": "Follow"
  },
  {
    "name": "Will i C",
    "image": "assets/images/charles.png",
    "desc": "Finance major. College grad. Music Exec",
    "followButton": "Follow"
  },
  {
    "name": "Gonetilo",
    "image": "assets/images/dami.png",
    "desc": " ",
    "followButton": "Follow"
  },
  {
    "name": "Fintch tec",
    "image": "assets/images/kahari.png",
    "desc": " ",
    "followButton": "Follow"
  },
  {
    "name": "Snubob",
    "image": "assets/images/kahari.png",
    "desc": " ",
    "followButton": "Follow"
  },
  {
    "name": "Naz T",
    "image": "assets/images/kahari.png",
    "desc": " ",
    "followButton": "Follow"
  },
  {
    "name": "Will i C",
    "image": "assets/images/kahari.png",
    "desc": "Finance major. College grad. Music Exec",
    "followButton": "Follow"
  },
  {
    "name": "Gonetilo",
    "image": "assets/images/kahari.png",
    "desc": " ",
    "followButton": "Follow"
  },
  {
    "name": "Fintch tec",
    "image": "assets/images/kahari.png",
    "desc": " ",
    "followButton": "Follow"
  },
  {
    "name": "Snubob",
    "image": "assets/images/kahari.png",
    "desc": " ",
    "followButton": "Follow"
  },
  {
    "name": "Naz T",
    "image": "assets/images/charles.png",
    "desc": " ",
    "followButton": "Follow"
  },
  {
    "name": "Will i C",
    "image": "assets/images/dami.png",
    "desc": "Finance major. College grad. Music Exec",
    "followButton": "Follow"
  },
  {
    "name": "Gonetilo",
    "image": "assets/images/dami.png",
    "desc": " ",
    "followButton": "Follow"
  },
  {
    "name": "Fintch tec",
    "image": "assets/images/dami.png",
    "desc": " ",
    "followButton": "Follow"
  },
  {
    "name": "Snubob",
    "image": "assets/images/kahari.png",
    "desc": " ",
    "followButton": "Follow"
  },
];
