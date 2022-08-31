import 'package:flutter/material.dart';
import 'package:gamify_app/data.dart';
import '';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _deviceHeight;
  var _deviceWidth;
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    _deviceHeight=MediaQuery.of(context).size.height;
    _deviceWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body:Stack(children: <Widget>[
        _featuredGamesWidget()

      ],

      ) 
    
    );
  }
  Widget _featuredGamesWidget(){
    return SizedBox(height:_deviceHeight*0.5,width:_deviceWidth,
    child: PageView(
      scrollDirection: Axis.horizontal,
      children: featuredGames.map((_game){
        return Container(
          decoration: 
    BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover
        ,image: 
      NetworkImage(_game.coverImage.url))
    )
        );
      }).toList(),),
    );
  }
}
