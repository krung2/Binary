import 'package:flutter/material.dart';
import 'login.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '비나리',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 2;
  var _pages = [Page1(), Page2(), Page3(), Page4(), Page5()];
  var _image = 'assets/schedule.png';
  var _color2 = Color(0xFFC2C2C2);
  var _color3 = Color(0xFFDE5B5B);
  var _color4 = Color(0xFFC2C2C2);
  var _color5 = Color(0xFFC2C2C2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/puppy.jpg'),
              ),
              accountEmail: Text('stac_binari@dgsw.hs.kr'),
              accountName: Text('풍원이'),
              onDetailsPressed: () {},
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0))),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 5.0,
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12.0,
        onTap: (index) {
          setState(() {
            if (index == 0) {
              _image = 'assets/schedule_color.png';
            } else {
              _image = 'assets/schedule.png';
            }
            if (index == 1) {
              _color2 = Color(0xFFDE5B5B);
            } else {
              _color2 = Color(0xFFC2C2C2);
            }
            if (index == 2) {
              _color3 = Color(0xFFDE5B5B);
            } else {
              _color3 = Color(0xFFC2C2C2);
            }
            if (index == 3) {
              _color4 = Color(0xFFDE5B5B);
            } else {
              _color4 = Color(0xFFC2C2C2);
            }
            if (index == 4) {
              _color5 = Color(0xFFDE5B5B);
            } else {
              _color5 = Color(0xFFC2C2C2);
            }
            _index = index;
          });
        },
        currentIndex: _index,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
              ),
              child: Image.asset(
                _image,
                height: 30,
                width: 30,
              ),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
              ),
              child: Image.asset(
                'assets/blood.png',
                height: 30,
                width: 30,
                color: _color2,
              ),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
              ),
              child: Image.asset(
                'assets/home.png',
                height: 30,
                width: 30,
                color: _color3,
              ),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
              ),
              child: Image.asset(
                'assets/hospital.png',
                height: 30,
                width: 30,
                color: _color4,
              ),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
              ),
              child: Image.asset(
                'assets/map.png',
                height: 30,
                width: 30,
                color: _color5,
              ),
            ),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Color(0xFFFF8181),
          height: 120,
          width: 5000,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
            child: Text(
              '예약내역',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 70, 20, 0),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0)),
                elevation: 8.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '2020.07.30, 10:00',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '00동물병원',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFFC2C2C2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0)),
                elevation: 8.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '2020.07.30, 10:00',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '00동물병원',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFFC2C2C2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0)),
                elevation: 8.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '2020.07.30, 10:00',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '00동물병원',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFFC2C2C2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                color: Color(0xFFFF8181),
                height: 120,
                width: 5000,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                  child: Text(
                    '수혈 요청 내역',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 80, 0, 0),
                        child: Text('지역 내',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(300, 80, 30, 0),
                        child: Text('대구 달서구',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ],
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    elevation: 8.0,
                    child: Container(
                      width: 460,
                      height: 280,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                            child: Text(
                              '대구 달서구 oo동물 병원',
                              style: TextStyle(
                                fontSize: 23,
                                color: Color(0xFF707070),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                              child: Container(
                                width: 600,
                                height: 1.5,
                                color: Color(0xFFE0E0E0),
                              )),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                            child: Text(
                              '대구 서구 oo동물 병원',
                              style: TextStyle(
                                fontSize: 23,
                                color: Color(0xFF707070),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                              child: Container(
                                width: 600,
                                height: 1.5,
                                color: Color(0xFFE0E0E0),
                              )),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                            child: Text(
                              '대구 남구 oo동물 병원',
                              style: TextStyle(
                                fontSize: 23,
                                color: Color(0xFF707070),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
            child: GestureDetector(
                child: Text(
                  '외 10개 더보기',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Color(0xFF707070),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page11()));
                })),
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                    child: Text('지역 외',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF707070),
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                elevation: 8.0,
                child: Container(
                  width: 460,
                  height: 280,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                        child: Text(
                          '부산 oo동물 병원',
                          style: TextStyle(
                            fontSize: 23,
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                          child: Container(
                            width: 600,
                            height: 1.5,
                            color: Color(0xFFE0E0E0),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                        child: Text(
                          '인천 oo동물 병원',
                          style: TextStyle(
                            fontSize: 23,
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                          child: Container(
                            width: 600,
                            height: 1.5,
                            color: Color(0xFFE0E0E0),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                        child: Text(
                          '대구 달서구 oo동물 병원',
                          style: TextStyle(
                            fontSize: 23,
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
            child: GestureDetector(
              child: Text(
                '외 10개 더보기',
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Color(0xFF707070),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              height: 233,
              width: 5000,
              color: Color(0xFFFF8181),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 50, 15, 70),
                  child: Container(
                    height: 1000,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/puppy.jpg'),
                              radius: 50.0,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '풍원이',
                                  style: TextStyle(
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '리트리버   DEA 1.1',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '견종                            혈액형',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          elevation: 8.0,
                          color: Colors.white,
                          child: Container(
                            width: 1400,
                            height: 300,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            elevation: 8.0,
                            color: Colors.white,
                            child: Container(
                              width: 1400,
                              height: 100,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 35, 0, 0),
                                child: Text(
                                  '2020.07.06 병원 예약',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF707070),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            elevation: 8.0,
                            color: Colors.white,
                            child: Container(
                              width: 1400,
                              height: 100,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 35, 0, 0),
                                child: Text(
                                  'DEA 1.1 혈액 요청 중인 병원 보기',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF707070),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            elevation: 8.0,
                            color: Colors.white,
                            child: Container(
                                width: 1400,
                                height: 100,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 35, 0, 0),
                                  child: Text(
                                    '2020.06.30 혈액 경로 확인하기',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: [
            Container(
              color: Color(0xFFFF8181),
              height: 120,
              width: 5000,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                child: Text(
                  '병원예약',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 100, 50, 0),
              child: Material(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: '위치를 입력해주세요',
                    hintStyle: TextStyle(
                      color: Color(0xFFCCCCCC),
                      fontWeight: FontWeight.bold,
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Page5 extends StatefulWidget {
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              color: Color(0xFFFF8181),
              height: 120,
              width: 5000,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                child: Text(
                  '혈액 추적',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 70, 20, 0),
              child: Column(
                children: [
                  GestureDetector(
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        elevation: 8.0,
                        child: Container(
                          width: 1400,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 35, 0, 0),
                            child: Text(
                              '대구 달서구 00동물병원',
                              style: TextStyle(
                                  color: Color(0xFF707070),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        )),
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page6()));
                    }),
                  ),
                  GestureDetector(
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        elevation: 8.0,
                        child: Container(
                          width: 1400,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 35, 0, 0),
                            child: Text(
                              '부산 00동물병원',
                              style: TextStyle(
                                  color: Color(0xFF707070),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        )),
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page7()));
                    }),
                  ),
                  GestureDetector(
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        elevation: 8.0,
                        child: Container(
                          width: 1400,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 35, 0, 0),
                            child: Text(
                              '대구 남구 00동물병원',
                              style: TextStyle(
                                  color: Color(0xFF707070),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        )),
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page8()));
                    }),
                  ),
                  GestureDetector(
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        elevation: 8.0,
                        child: Container(
                          width: 1400,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 35, 0, 0),
                            child: Text(
                              '대구 서구 00동물병원',
                              style: TextStyle(
                                  color: Color(0xFF707070),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        )),
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page9()));
                    }),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class Page6 extends StatefulWidget {
  @override
  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                '대구 달서구 00동물병원',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Color(0xFF707070),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              '\n2020년 02월 24일',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF707070),
                  fontWeight: FontWeight.bold),
            ),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0)),
                elevation: 8.0,
                child: Container(
                  width: 1400,
                  height: 500,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              elevation: 0.0,
                              child: Container(
                                width: 60,
                                height: 60,
                                color: Color(0xFF707070),
                              ),
                            ),
                            Container(
                              width: 220,
                              height: 5,
                              color: Color(0xFF707070),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              elevation: 0.0,
                              child: Container(
                                width: 60,
                                height: 60,
                                color: Color(0xFF707070),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(13, 2, 10, 0),
                          child: Row(
                            children: [
                              Text(
                                '풍원이',
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 230,
                              ),
                              Text(
                                '00동물병원',
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Row(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              elevation: 0.0,
                              child: Container(
                                width: 60,
                                height: 60,
                                color: Color(0xFF707070),
                              ),
                            ),
                            Container(
                              width: 220,
                              height: 5,
                              color: Color(0xFF707070),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              elevation: 0.0,
                              child: Container(
                                width: 60,
                                height: 60,
                                color: Color(0xFF707070),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 2, 10, 0),
                          child: Row(
                            children: [
                              Text(
                                '00동물병원',
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 233,
                              ),
                              Text(
                                '초코',
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class Page7 extends StatefulWidget {
  @override
  _Page6State createState() => _Page6State();
}

class _Page7State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
        child: Column(
          children: [
            Container(
              child: Text(
                '부산 00동물병원\n',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Color(0xFF707070),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page8 extends StatefulWidget {
  @override
  _Page6State createState() => _Page6State();
}

class _Page8State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
        child: Container(
          child: Text(
            '대구 남구 00동물병원\n',
            style: TextStyle(
              fontSize: 40.0,
              color: Color(0xFF707070),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class Page9 extends StatefulWidget {
  @override
  _Page6State createState() => _Page6State();
}

class _Page9State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
        child: Container(
          child: Text(
            '대구 서구 00동물병원\n',
            style: TextStyle(
              fontSize: 40.0,
              color: Color(0xFF707070),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class Page10 extends StatefulWidget {
  @override
  _Page10State createState() => _Page10State();
}

class _Page10State extends State<Page10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 25, 0, 0),
              child: Text(
                '지역 내 요청 내역',
                style: TextStyle(
                  color: Color(0xFF707070),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                elevation: 8.0,
                child: Container(
                  width: 1000,
                  height: 410,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Text(
                          '원하는 시간대를 입력해주세요',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Container(
                                    width: 150,
                                    height: 30,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          30.0, 0, 0, 0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[]),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                child: Text(
                                  '~',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Color(0xFF707070),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Container(
                                    width: 150,
                                    height: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Container(
                              width: 400,
                              height: 30,
                              color: Colors.white,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 80, 20, 0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          elevation: 8.0,
                          color: Color(0xFFFF8181),
                          child: Container(
                            color: Color(0xFFFF8181),
                            width: 400,
                            height: 50,
                            child: RaisedButton(
                              child: Text('다음',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                              color: Color(0xFFFF8181),
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Page12()));
                              }),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}

class Page11 extends StatefulWidget {
  @override
  _Page11State createState() => _Page11State();
}

class _Page11State extends State<Page11> {
  @override
  Widget build(BuildContext context) {
    var myColor = Colors.red;
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: ListView(children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 25, 0, 0),
                  child: Text(
                    '지역 내 요청 내역',
                    style: TextStyle(
                      color: Color(0xFF707070),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 25, 30, 0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      elevation: 8.0,
                      color: Colors.white,
                      child: Container(
                        width: 1400,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 35, 0, 0),
                          child: Text(
                            '대구 달서구 00동',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF707070),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: (() {
                    return showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16.0))),
                            contentPadding: EdgeInsets.only(top: 10.0),
                            content: Container(
                              width: 500.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20.0, 10, 0, 0),
                                    child: Text(
                                      '대구 달서구 00동물병원',
                                      style: TextStyle(
                                        color: Color(0xFF707070),
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 15, 0, 0),
                                    child: Text('달서구 장기동 123-1',
                                        style: TextStyle(
                                          color: Color(0xFF808080),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 5, 0, 0),
                                    child: Text('053 - 000 - 0000',
                                        style: TextStyle(
                                          color: Color(0xFF808080),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Container(
                                    width: 500,
                                    height: 200,
                                    color: Colors.green,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20.0, 10, 0, 0),
                                    child: Text(
                                      '□ 수혈 요청 중인 혈액형',
                                      style: TextStyle(
                                        color: Color(0xFF707070),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Row(children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        'DEA 1.1',
                                        style: TextStyle(
                                          color: Color(0xFFDE5B5B),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'DEA 1.2',
                                          style: TextStyle(
                                            color: Color(0xFFDE5B5B),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'DEA 3',
                                        style: TextStyle(
                                          color: Color(0xFFDE5B5B),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ]),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20.0, 0, 20, 20),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)),
                                      elevation: 8.0,
                                      color: Color(0xFFFF8181),
                                      child: Container(
                                        color: Color(0xFFFF8181),
                                        width: 100,
                                        height: 50,
                                        child: RaisedButton(
                                          child: Text('헌혈하기',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              )),
                                          color: Color(0xFFFF8181),
                                          onPressed: (() {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Page10()));
                                          }),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    elevation: 8.0,
                    color: Colors.white,
                    child: Container(
                      width: 1400,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 35, 0, 0),
                        child: Text(
                          '대구 서구 00동',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    elevation: 8.0,
                    color: Colors.white,
                    child: Container(
                      width: 1400,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 35, 0, 0),
                        child: Text(
                          '대구 남구 00동',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    elevation: 8.0,
                    color: Colors.white,
                    child: Container(
                      width: 1400,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 35, 0, 0),
                        child: Text(
                          '대구 북구 00동',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    elevation: 8.0,
                    color: Colors.white,
                    child: Container(
                      width: 1400,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 35, 0, 0),
                        child: Text(
                          '대구 북구 00동',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    elevation: 8.0,
                    color: Colors.white,
                    child: Container(
                      width: 1400,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 35, 0, 0),
                        child: Text(
                          '대구 달성군 00동',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}

class Page12 extends StatefulWidget {
  @override
  _Page12State createState() => _Page12State();
}

class _Page12State extends State<Page12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 25, 0, 0),
          child: Text(
            '헌혈 신청',
            style: TextStyle(
              color: Color(0xFF707070),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation: 8.0,
            child: Container(
              width: 1000,
              height: 450,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                    child: Text(
                      '대구 달서구 00동물병원',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                    child: Text(
                      '달서구 장기동 123-4\n053-000-0000',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                    child: Row(
                      children: [
                        Text('DEA 1.1',
                            style: TextStyle(
                              color: Color(0xFFDE5B5B),
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                    child: Row(children: [
                      Text('풍원이',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Icon(Icons.check_box),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            '헌혈에 동의합니다',
                            style: TextStyle(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 50, 20, 0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      elevation: 8.0,
                      color: Color(0xFFFF8181),
                      child: Container(
                        color: Color(0xFFFF8181),
                        width: 400,
                        height: 50,
                        child: RaisedButton(
                          child: Text('신청하기',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                          color: Color(0xFFFF8181),
                          onPressed: (() {}),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
