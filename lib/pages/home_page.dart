import 'package:flutter/material.dart';
import 'package:gamify_app/data.dart';
import 'package:gamify_app/widgets/scrollable_games_widget.dart';
import '';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _deviceHeight;
  var _deviceWidth;
  var _selectedPage;

  @override
  void initState(){
    super.initState();
    _selectedPage=0;
  }
  @override
  Widget build(BuildContext context) {
    _deviceHeight=MediaQuery.of(context).size.height;
    _deviceWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body:Stack(children: <Widget>[
        _featuredGamesWidget(),
        _gradientBoxWidget(),
        _topLayerWidget(),

      ],

      ) 
    
    );
  }
  Widget _featuredGamesWidget(){
    return SizedBox(height:_deviceHeight*0.5,width:_deviceWidth,
    child: PageView(
      onPageChanged: (_index){
        setState(() {
          _selectedPage=_index;
        });

      },
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
  Widget _gradientBoxWidget(){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
      height: _deviceHeight*0.8,
      width: _deviceWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors:[Color.fromRGBO(35, 45, 60, 1),
        Colors.transparent
        ,],

        stops: [0.65,1],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter) 
      ),
    ),
    );
  }
  Widget _topLayerWidget(){
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _topBarWidget(),
          SizedBox(height: _deviceHeight*0.15,),
          _featuredGamesInfoWidget(),
          ScrollableGameWidget(_deviceHeight*0.2, _deviceWidth, true, games),
                    ScrollableGameWidget(_deviceHeight*0.2, _deviceWidth, true, games),
          
        ],
      ),

    );
  }
  Widget _topBarWidget(){
    return SizedBox(height: _deviceHeight*0.15,width: _deviceWidth,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.menu,color: Colors.white,size: 30,),
        Row(
          children: [
            SizedBox(width: _deviceWidth*0.03,),
            Icon(Icons.search,color: Colors.white,size: 30,),
            SizedBox(width: _deviceWidth*0.03,),
            Icon(Icons.notifications,color: Colors.white,size: 30,),
            SizedBox(width: _deviceWidth*0.03,),
          ],
        ),
      ],
    ),);
  }
  Widget _featuredGamesInfoWidget(){
    return SizedBox(height: _deviceHeight*0.11,width:_deviceWidth,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(featuredGames[_selectedPage].title
          ,style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold
          ),),
          Row(),
        ],
      ),
    );
  }
}
