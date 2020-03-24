import 'package:flutter/material.dart';
import 'package:InstagramWeatherFlutter/src/helper/quad_clipper.dart';
import 'package:InstagramWeatherFlutter/src/pages/recomended_page.dart';
import 'package:InstagramWeatherFlutter/src/theme/color/light_color.dart';

class HomePage extends StatelessWidget {

  final location_data;
  final date_data;
  final sex_data;


  HomePage({Key key, @required this.location_data, this.date_data, this.sex_data}) : super(key: key);
  final myController = TextEditingController();
  double width;

  Widget _header(BuildContext context) {
    var width = MediaQuery.of(context).size.width/2;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 200,
                width: width,
                decoration: BoxDecoration(
                  color: LightColor.purple,
                ),
                child: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                        top: 40,
                        left: 0,
                        child: Container(
                            width: width,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[


                                RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  elevation: 4.0,
                                  //onPressed: callDatePicker,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.location_on,
                                        size: 18.0,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        " $location_data",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 0), //여백
                                RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  elevation: 4.0,
                                  //onPressed: callDatePicker,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.date_range,
                                        size: 18.0,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        " $date_data",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 0), //여백

                                RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  elevation: 4.0,
                                  //onPressed: callDatePicker,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.accessibility,
                                        size: 18.0,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        " $sex_data",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )))
                  ],
                )

          )
          ),
            Expanded(
                child: Container(
                    height: 200,
                    width: width,
                    decoration: BoxDecoration(
                      color: LightColor.purple,
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      alignment: Alignment.center,
                      children: <Widget>[
                        Positioned(
                            top: 40,
                            left: 0,
                            child: Container(
                                width: width,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            SizedBox(height: 68),

                                            //TEMPRATURE TEXT
                                            Text("29" + "º",
                                                style: TextStyle(
                                                  fontSize: 72,
                                                  color: Colors.white,
                                                ))
                                          ],
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 0), //여백
                                    TextField(
                                        controller: myController,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: '샌프란시스코'
                                        ),
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500)
                                    ),
                                  ],
                                )))
                      ],
                    )

                )
            )

          ],

      ),
    );
  }

  Widget _sepLine(
    String title
  ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: new Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Divider(
                  color: Colors.grey,
                  height: 36,
                )),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey,)
          ),
          Expanded(
            child: new Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Divider(
                  color: Colors.grey,
                  height: 36,
                )),
          ),
        ],
      ),
    );
  }


  Widget _coordyTips(
      String title
      ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      //height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,

            ),
          ),
        ],
      ),
    );
  }



  Widget _clothMainBox(BuildContext context) {
    var width = MediaQuery.of(context).size.width/2;
    return ClipRRect(
      child: Row(
        children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40),
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),

              child: Container(
                height: 350,
                width: width,

                decoration: BoxDecoration(
                  color: LightColor.grey,
                  image: DecorationImage(
                    image: AssetImage("images/샌프란시스코0_0.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                )
        ),
          ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),

              child: Container(
                height: 350,
                width: width,

                decoration: BoxDecoration(
                  color: LightColor.grey,
                  image: DecorationImage(
                    image: AssetImage("images/샌프란시스코1_0.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              )
          )

        ],

      ),
    );
  }

  Positioned _smallContainer(Color primary, double top, double left,
      {double radius = 10}) {
    return Positioned(
        top: top,
        left: left,
        child: CircleAvatar(
          radius: radius,
          backgroundColor: primary.withAlpha(255),
        ));
  }

  BottomNavigationBarItem _bottomIcons(IconData icon) {
    return BottomNavigationBarItem(icon: Icon(icon), title: Text(""));
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: LightColor.purple,
          unselectedItemColor: Colors.grey.shade300,
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            _bottomIcons(Icons.home),
            _bottomIcons(Icons.star_border),
            _bottomIcons(Icons.book),
            _bottomIcons(Icons.person),
          ],
          onTap: (index) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => RecomendedPage()));
          },
        ),
        body: SingleChildScrollView(
            child: Container(
          child: Column(
            children: <Widget>[
              _header(context),
              SizedBox(height: 20),
              _sepLine("오늘의 코디 Tip"),
              _coordyTips("일교차가 심하니 가벼운 가디건, 자켓으로\n레이어드하여 스타일링 해보세요"),
              SizedBox(height: 0),
              _clothMainBox(context)
            ],
          ),
        )));
  }

  void showMessage(String msg) {
    debugPrint('flag');
  }

}
