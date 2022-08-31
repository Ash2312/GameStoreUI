import 'dart:ui';

import 'package:flutter/material.dart';

import '../data.dart';
class ScrollableGameWidget extends StatelessWidget {
  final double _height;
  final double _width;
  final bool showTitle;
  final List<Game>_gamesData;

  ScrollableGameWidget(this._height,this._width,this.showTitle,this._gamesData);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children:_gamesData.map((_game){
          return Container(
            padding: EdgeInsets.only(right: _width*0.03,left:_width*0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(height: _height*0.7,width: _width*0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,image: 
                  NetworkImage(_game.coverImage.url))
                ),
                ),
                Text(_game.title,maxLines:2,style: TextStyle(fontSize: _height*0.08),)
              ],
            ),
          );
        }).toList()),
    );
    
  }
}   