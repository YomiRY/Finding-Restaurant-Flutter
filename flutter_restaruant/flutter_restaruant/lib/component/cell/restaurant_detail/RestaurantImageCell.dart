import 'package:flutter/material.dart';
import 'package:flutter_restaruant/utils/UIConstants.dart';

class RestaurantImageCell extends StatelessWidget {

  static const int IMAGE_H = 200;

  final String _imageUrl;

  const RestaurantImageCell({Key? key, required String imageUrl}) : this._imageUrl = imageUrl, super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      padding: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.width / 3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: FadeInImage.assetNetwork(
                placeholder: UIConstants.NO_IMAGE,
                image: this._imageUrl,
                imageCacheHeight: RestaurantImageCell.IMAGE_H,
                imageCacheWidth:
                MediaQuery.of(context).size.width.toInt(),
                placeholderCacheHeight: RestaurantImageCell.IMAGE_H,
                placeholderCacheWidth:
                MediaQuery.of(context).size.width.toInt(),
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.width / 3),
          )));
}
