import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:like_button/like_button.dart';
import 'package:shervinbdndev/components/component.dart';

class ShervinBdnDevBlogBox extends StatelessWidget {
  final String image;
  final dynamic ontap;
  final double width;
  final double height;
  final int likeCount;
  final int saveCount;

  const ShervinBdnDevBlogBox({
    super.key,
    required this.image,
    required this.ontap,
    required this.width,
    required this.height,
    required this.likeCount,
    required this.saveCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        children: <Widget>[
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: ontap,
              borderRadius: BorderRadius.circular(10.0),
              child: HoverAnimatedContainer(
                width: width,
                height: height,
                hoverWidth: width + 30.0,
                hoverHeight: height + 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    width: 2.0,
                    color: BdnColors.purple,
                  ),
                ),
                cursor: MouseCursor.defer,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          SizedBox(
            width: 300.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                LikeButton(
                  likeCountAnimationDuration:
                      const Duration(milliseconds: 1000),
                  countPostion: CountPostion.right,
                  likeBuilder: (isLiked) {
                    return Icon(
                      Icons.favorite,
                      color: isLiked ? BdnColors.purple : Colors.grey,
                    );
                  },
                  likeCount: likeCount,
                  likeCountAnimationType: LikeCountAnimationType.part,
                  isLiked: false,
                  animationDuration: const Duration(milliseconds: 1000),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.comment_rounded,
                    color: Colors.grey,
                  ),
                ),
                LikeButton(
                  likeCountAnimationDuration:
                      const Duration(milliseconds: 1000),
                  countPostion: CountPostion.right,
                  likeBuilder: (isLiked) {
                    return Icon(
                      Icons.save_rounded,
                      color: isLiked ? Colors.white : Colors.grey,
                    );
                  },
                  likeCount: saveCount,
                  likeCountAnimationType: LikeCountAnimationType.part,
                  isLiked: false,
                  animationDuration: const Duration(milliseconds: 1000),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
