import 'package:flutter/material.dart';
import 'package:flutter_restaruant/utils/Dimens.dart';
import 'package:flutter_restaruant/utils/UIConstants.dart';

class RestaurantInfoCell extends StatelessWidget {

  static const int MAP_IMAGE_W = 140;
  static const int MAP_IMAGE_H = 140;

  const RestaurantInfoCell({Key? key = const Key("RestaurantImageCell")}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
      padding: EdgeInsets.only(left: 5, right: 5, top: 10),
      child: Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
        SizedBox(
            width: RestaurantInfoCell.MAP_IMAGE_H.toDouble(),
            height: RestaurantInfoCell.MAP_IMAGE_W.toDouble(),
            child: FadeInImage.assetNetwork(
                placeholder: UIConstants.NO_IMAGE,
                imageErrorBuilder: (context, error, trace) =>
                    Image.asset(UIConstants.NO_IMAGE),
                image: "https://staticmapmaker.com/img/google@2x.png",
                imageCacheHeight: RestaurantInfoCell.MAP_IMAGE_H,
                imageCacheWidth: RestaurantInfoCell.MAP_IMAGE_W,
                placeholderCacheHeight: RestaurantInfoCell.MAP_IMAGE_H,
                placeholderCacheWidth: RestaurantInfoCell.MAP_IMAGE_W,
                fit: BoxFit.fill)
        ),
        Expanded(
            child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("235 新北市中和區中和路238號1111111",
                          style: TextStyle(fontWeight: FontWeight.w700),
                          overflow: TextOverflow.ellipsis),
                      Row(children: <Widget>[
                        Text("電話:",
                            style:
                            TextStyle(fontWeight: FontWeight.w700)),
                        SizedBox(width: 10),
                        Text("+8860982736457",
                            style: TextStyle(color: Colors.blue))
                      ]),
                      Text("餐廳", style: TextStyle(color: Colors.grey)),
                      Image.asset("images/Star_rating_2_of_5.png",
                          height: 20),
                      Text("1則評論", style: TextStyle(color: Colors.grey)),
                      DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(15.0))),
                          child: Padding(
                              padding: EdgeInsets.all(3),
                              child: Text("close",
                                  style: TextStyle(
                                      color: Colors.white)
                              )
                          )
                      )
                    ])
            )
        )
       ]
      )
  );
}
