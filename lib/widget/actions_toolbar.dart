import 'package:cached_network_image/cached_network_image.dart';
import 'package:cookup/views/open_room.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionsToolbar extends StatelessWidget {
  const ActionsToolbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _getFollowAction(),
            _getSocialAction(
                title: '4445', imagrUrl: "assets/images/tikstar.png"),
            _getSocialAction(
                title: '64', imagrUrl: "assets/images/message icon.png"),
            GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) => const OpenRoom());
                },
                child: _getSocialAction(
                    title: '64', imagrUrl: "assets/images/grp.png")),
            _getSocialAction(
                title: 'Share', imagrUrl: "assets/images/tikshare.png"),
            _getMusicPlayerAction()
            // _getSocialAction(title: '', imagrUrl: "assets/images/disc.png"),
          ]),
    );
  }

  Widget _getSocialAction({required String title, required String imagrUrl}) {
    return Container(
        margin: const EdgeInsets.only(top: 15.0),
        width: 60.0,
        height: 60.0,
        child: Column(children: [
          Image.asset(imagrUrl, height: 30, width: 30),
          Text(title,
              style: const TextStyle(fontSize: 12.0, color: Colors.white))
        ]));
  }

  Widget _getFollowAction() {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        width: 60.0,
        height: 60.0,
        child: Stack(children: [_getProfilePicture(), _getPlusIcon()]));
  }

  Widget _getPlusIcon() {
    return Positioned(
      bottom: 0,
      left: ((60 / 2) - (20 / 2)),
      child: Image.asset(
        "assets/images/addtofavorites.png",
        width: 20,
        height: 20,
      ),
    );
  }

  Widget _getProfilePicture() {
    return Positioned(
        left: (60 / 2) - (50 / 2),
        child: Container(
          padding: const EdgeInsets.all(1.0),
          // Add 1.0 point padding to create border
          height: 50.0,
          // ProfileImageSize = 50.0;
          width: 50.0,
          // ProfileImageSize = 50.0;
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.0 / 2)),
          child: CachedNetworkImage(
            imageUrl:
                "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ));
  }

  LinearGradient get musicGradient => LinearGradient(colors: [
        Colors.grey.shade800,
        Colors.grey.shade900,
        Colors.grey.shade900,
        Colors.grey.shade800,
      ], stops: const [
        0.0,
        0.4,
        0.6,
        1.0
      ], begin: Alignment.bottomLeft, end: Alignment.topRight);

  Widget _getMusicPlayerAction() {
    return Container(
        margin: EdgeInsets.only(top: 10.0),
        width: 60,
        height: 60,
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(11.0),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                gradient: musicGradient,
                borderRadius: BorderRadius.circular(50 / 2)),
            child: CachedNetworkImage(
              imageUrl:
                  "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
              placeholder: (context, url) => new CircularProgressIndicator(),
              errorWidget: (context, url, error) => new Icon(Icons.error),
            ),
          ),
        ]));
  }
}
