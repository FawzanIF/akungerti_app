part of 'pages.dart';


//Matematika Page
class MatematikaPage extends StatefulWidget {
  @override
  _MatematikaPageState createState() => _MatematikaPageState();
}

class _MatematikaPageState extends State<MatematikaPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToMainPage());
        return;
      },
      child: Scaffold(
        body: ListView(
          physics:
              NeverScrollableScrollPhysics(), // <-- this will disable scroll
          shrinkWrap: true,
          children: <Widget>[
            Container(
              color: Colors.yellow[300],
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(50),
                    ),
                    color: Colors.blue[300],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 10),
                            GestureDetector(
                                onTap: () {
                                  context.bloc<PageBloc>().add(GoToMainPage());
                                },
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/mtk.png")),
                        Text("Matematika IPA",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 10),
                        Text("Tingkat SMA",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700))
                      ])),
            ),
            Container(
              color: Colors.yellow[300],
              child: ListView(
                shrinkWrap: true,
                children: <Widget> [
                  
                    Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width - 100.0,
                        height: MediaQuery.of(context).size.height-297,
                        child: GridView.builder(
                            itemCount: kontenMTK.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:2),
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, a, b) => MateriMTKPage(
                                        kontenMTK: kontenMTK[index],
                                      ),
                                    ),
                                  );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(

                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 100, height: 100,
                                            child: Image.asset(
                                              kontenMTK[index].iconImage,
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            kontenMTK[index].name,
                                            style: TextStyle(
                                                color: Color(0xFF575E67),
                                                fontFamily: 'Varela',
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700),
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                               ) );
                            }),
                      ),
                    ),
                  ],
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Fisika Page
class FisikaPage extends StatefulWidget {
  @override
  _FisikaPageState createState() => _FisikaPageState();
}

class _FisikaPageState extends State<FisikaPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToMainPage());
        return;
      },
      child: Scaffold(
        body: ListView(
          physics:
              NeverScrollableScrollPhysics(), // <-- this will disable scroll
          shrinkWrap: true,
          children: <Widget>[
            Container(
              color: Colors.blue[200],
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(50),
                    ),
                    color: Colors.yellow[600],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 10),
                            GestureDetector(
                                onTap: () {
                                  context.bloc<PageBloc>().add(GoToMainPage());
                                },
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/fisika.png")),
                        Text("Fisika",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 10),
                        Text("Tingkat SMA",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700))
                      ])),
            ),
            Container(
              color: Colors.blue[200],
              child: ListView(
                shrinkWrap: true,
                children: <Widget> [
                  
                    Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width - 100.0,
                        height: MediaQuery.of(context).size.height-297,
                        child: GridView.builder(
                            itemCount: kontenFis.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:2),
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, a, b) => MateriFisikaPage(
                                        kontenFis: kontenFis[index],
                                      ),
                                    ),
                                  );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(

                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 100, height: 100,
                                            child: Image.asset(
                                              kontenFis[index].iconImage,
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            kontenFis[index].name,
                                            style: TextStyle(
                                                color: Color(0xFF575E67),
                                                fontFamily: 'Varela',
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700),
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                               ) );
                            }),
                      ),
                    ),
                  ],
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Kimia Page
class KimiaPage extends StatefulWidget {
  @override
  _KimiaPageState createState() => _KimiaPageState();
}

class _KimiaPageState extends State<KimiaPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToMainPage());
        return;
      },
      child: Scaffold(
        body: ListView(
          physics:
              NeverScrollableScrollPhysics(), // <-- this will disable scroll
          shrinkWrap: true,
          children: <Widget>[
            Container(
              color: Colors.grey[400],
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(50),
                    ),
                    color: Colors.red[300],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 10),
                            GestureDetector(
                                onTap: () {
                                  context.bloc<PageBloc>().add(GoToMainPage());
                                },
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/kimia.png")),
                        Text("Kimia",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 10),
                        Text("Tingkat SMA",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700))
                      ])),
            ),
            Container(
              color: Colors.grey[400],
              child: ListView(
                shrinkWrap: true,
                children: <Widget> [
                  
                    Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width - 100.0,
                        height: MediaQuery.of(context).size.height-297,
                        child: GridView.builder(
                            itemCount: kontenKim.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:2),
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, a, b) => MateriKimiaPage(
                                        kontenKim: kontenKim[index],
                                      ),
                                    ),
                                  );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(

                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 100, height: 100,
                                            child: Image.asset(
                                             kontenKim[index].iconImage,
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            kontenKim[index].name,
                                            style: TextStyle(
                                                color: Color(0xFF575E67),
                                                fontFamily: 'Varela',
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700),
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                               ) );
                            }),
                      ),
                    ),
                  ],
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Biologi Page
class BiologiPage extends StatefulWidget {
  @override
  _BiologiPageState createState() => _BiologiPageState();
}

class _BiologiPageState extends State<BiologiPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToMainPage());
        return;
      },
      child: Scaffold(
        body: ListView(
          physics:
              NeverScrollableScrollPhysics(), // <-- this will disable scroll
          shrinkWrap: true,
          children: <Widget>[
            Container(
              color: Colors.grey[400],
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(50),
                    ),
                    color: Colors.green[300],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 10),
                            GestureDetector(
                                onTap: () {
                                  context.bloc<PageBloc>().add(GoToMainPage());
                                },
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/biologi.png")),
                        Text("Biologi",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 10),
                        Text("Tingkat SMA",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700))
                      ])),
            ),
            Container(
              color: Colors.grey[400],
              child: ListView(
                shrinkWrap: true,
                children: <Widget> [
                  
                    Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width - 100.0,
                        height: MediaQuery.of(context).size.height-297,
                        child: GridView.builder(
                            itemCount: kontenBio.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:2),
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, a, b) => MateriBiologiPage(
                                        kontenBio: kontenBio[index],
                                      ),
                                    ),
                                  );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(

                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 100, height: 100,
                                            child: Image.asset(
                                              kontenBio[index].iconImage,
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            kontenBio[index].name,
                                            style: TextStyle(
                                                color: Color(0xFF575E67),
                                                fontFamily: 'Varela',
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700),
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                               ) );
                            }),
                      ),
                    ),
                  ],
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Bahasa Indonesia Page
class IndonesiaPage extends StatefulWidget {
  @override
  _IndonesiaPageState createState() => _IndonesiaPageState();
}

class _IndonesiaPageState extends State<IndonesiaPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToMainPage());
        return;
      },
      child: Scaffold(
        body: ListView(
          physics:
              NeverScrollableScrollPhysics(), // <-- this will disable scroll
          shrinkWrap: true,
          children: <Widget>[
            Container(
              color: Colors.black54,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(50),
                    ),
                    color: Colors.redAccent[100],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 10),
                            GestureDetector(
                                onTap: () {
                                  context.bloc<PageBloc>().add(GoToMainPage());
                                },
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/indo.png")),
                        Text("Bahasa Indonesia",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 10),
                        Text("Tingkat SMA",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700))
                      ])),
            ),
            Container(
              color: Colors.black54,
              child: ListView(
                shrinkWrap: true,
                children: <Widget> [
                  
                    Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width - 100.0,
                        height: MediaQuery.of(context).size.height-297,
                        child: GridView.builder(
                            itemCount: kontenIndo.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:2),
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, a, b) => MateriIndonesiaPage(
                                        kontenIndo: kontenIndo[index],
                                      ),
                                    ),
                                  );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(

                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 100, height: 100,
                                            child: Image.asset(
                                              kontenIndo[index].iconImage,
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            kontenIndo[index].name,
                                            style: TextStyle(
                                                color: Color(0xFF575E67),
                                                fontFamily: 'Varela',
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700),
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                               ) );
                            }),
                      ),
                    ),
                  ],
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Bahasa Inggris Page
class InggrisPage extends StatefulWidget {
  @override
  _InggrisPageState createState() => _InggrisPageState();
}

class _InggrisPageState extends State<InggrisPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToMainPage());
        return;
      },
      child: Scaffold(
        body: ListView(
          physics:
              NeverScrollableScrollPhysics(), // <-- this will disable scroll
          shrinkWrap: true,
          children: <Widget>[
            Container(
              color: Colors.red[400],
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(50),
                    ),
                    color: Colors.blue[700],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 10),
                            GestureDetector(
                                onTap: () {
                                  context.bloc<PageBloc>().add(GoToMainPage());
                                },
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/inggris.jpg")),
                        Text("Bahasa Inggris",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 10),
                        Text("Tingkat SMA",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700))
                      ])),
            ),
            Container(
              color: Colors.red[400],
              child: ListView(
                shrinkWrap: true,
                children: <Widget> [
                  
                    Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width - 100.0,
                        height: MediaQuery.of(context).size.height-297,
                        child: GridView.builder(
                            itemCount: kontenIng.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:2),
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, a, b) => MateriInggrisPage(
                                        kontenIng: kontenIng[index],
                                      ),
                                    ),
                                  );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(

                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 100, height: 100,
                                            child: Image.asset(
                                              kontenIng[index].iconImage,
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            kontenIng[index].name,
                                            style: TextStyle(
                                                color: Color(0xFF575E67),
                                                fontFamily: 'Varela',
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700),
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                               ) );
                            }),
                      ),
                    ),
                  ],
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Ekonomi Page
class EkonomiPage extends StatefulWidget {
  @override
  _EkonomiPageState createState() => _EkonomiPageState();
}

class _EkonomiPageState extends State<EkonomiPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToMainPage());
        return;
      },
      child: Scaffold(
        body: ListView(
          physics:
              NeverScrollableScrollPhysics(), 
          shrinkWrap: true,
          children: <Widget>[
            Container(
              color: Colors.yellow[700],
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(50),
                    ),
                    color: Colors.orange,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 10),
                            GestureDetector(
                                onTap: () {
                                  context.bloc<PageBloc>().add(GoToMainPage());
                                },
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/pertumbuhan ekonomi.png")),
                        Text("Ekonomi",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 10),
                        Text("Tingkat SMA",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700))
                      ])),
            ),
            Container(
              color: Colors.yellow[700],
              child: ListView(
                shrinkWrap: true,
                children: <Widget> [
                  
                    Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width - 100.0,
                        height: MediaQuery.of(context).size.height-297,
                        child: GridView.builder(
                            itemCount: kontenEko.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:2),
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, a, b) => MateriEkonomiPage(
                                        kontenEko: kontenEko[index],
                                      ),
                                    ),
                                  );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(

                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 100, height: 100,
                                            child: Image.asset(
                                              kontenEko[index].iconImage,
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            kontenEko[index].name,
                                            style: TextStyle(
                                                color: Color(0xFF575E67),
                                                fontFamily: 'Varela',
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700),
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                               ) );
                            }),
                      ),
                    ),
                  ],
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Sejarah Page
class SejarahPage extends StatefulWidget {
  @override
  _SejarahPageState createState() => _SejarahPageState();
}

class _SejarahPageState extends State<SejarahPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToMainPage());
        return;
      },
      child: Scaffold(
        body: ListView(
          physics:
              NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            Container(
              color: Colors.lightGreen[700],
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(50),
                    ),
                    color: Colors.brown[700],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 10),
                            GestureDetector(
                                onTap: () {
                                  context.bloc<PageBloc>().add(GoToMainPage());
                                },
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/pergerakan nasional.jpg")),
                        Text("Sejarah",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 10),
                        Text("Tingkat SMA",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700))
                      ])),
            ),
            Container(
              color: Colors.lightGreen[700],
              child: ListView(
                shrinkWrap: true,
                children: <Widget> [
                  
                    Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width - 100.0,
                        height: MediaQuery.of(context).size.height-297,
                        child: GridView.builder(
                            itemCount: kontenSej.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:2),
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, a, b) => MateriSejarahPage(
                                        kontenSej: kontenSej[index],
                                      ),
                                    ),
                                  );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 100, height: 100,
                                            child: Image.asset(
                                              kontenSej[index].iconImage,
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            kontenSej[index].name,
                                            style: TextStyle(
                                                color: Color(0xFF575E67),
                                                fontFamily: 'Varela',
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700),
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                               ) );
                            }),
                      ),
                    ),
                  ],
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Sosiologi Page
class SosiologiPage extends StatefulWidget {
  @override
  _SosiologiPageState createState() => _SosiologiPageState();
}

class _SosiologiPageState extends State<SosiologiPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToMainPage());
        return;
      },
      child: Scaffold(
        body: ListView(
          physics:
              NeverScrollableScrollPhysics(), 
          shrinkWrap: true,
          children: <Widget>[
            Container(
              color: Colors.lightGreenAccent[700],
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(50),
                    ),
                    color: Colors.green[800],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 10),
                            GestureDetector(
                                onTap: () {
                                  context.bloc<PageBloc>().add(GoToMainPage());
                                },
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/interaksi sosial.png")),
                        Text("Sosiologi",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 10),
                        Text("Tingkat SMA",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700))
                      ])),
            ),
            Container(
              color: Colors.lightGreenAccent[700],
              child: ListView(
                shrinkWrap: true,
                children: <Widget> [
                  
                    Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width - 100.0,
                        height: MediaQuery.of(context).size.height-297,
                        child: GridView.builder(
                            itemCount: kontenSos.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:2),
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, a, b) => MateriSosiologiPage(
                                        kontenSos: kontenSos[index],
                                      ),
                                    ),
                                  );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(

                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 100, height: 100,
                                            child: Image.asset(
                                              kontenSos[index].iconImage,
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            kontenSos[index].name,
                                            style: TextStyle(
                                                color: Color(0xFF575E67),
                                                fontFamily: 'Varela',
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700),
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                               ) );
                            }),
                      ),
                    ),
                  ],
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Geografi Page
class GeografiPage extends StatefulWidget {
  @override
  _GeografiPageState createState() => _GeografiPageState();
}

class _GeografiPageState extends State<GeografiPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToMainPage());
        return;
      },
      child: Scaffold(
        body: ListView(
          physics:
              NeverScrollableScrollPhysics(), // <-- this will disable scroll
          shrinkWrap: true,
          children: <Widget>[
            Container(
              color: Colors.blue[300],
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(50),
                    ),
                    color: Colors.greenAccent[700],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 10),
                            GestureDetector(
                                onTap: () {
                                  context.bloc<PageBloc>().add(GoToMainPage());
                                },
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/sda.png")),
                        Text("Geografi",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 10),
                        Text("Tingkat SMA",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700))
                      ])),
            ),
            Container(
              color: Colors.blue[300],
              child: ListView(
                shrinkWrap: true,
                children: <Widget> [
                  
                    Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width - 100.0,
                        height: MediaQuery.of(context).size.height-297,
                        child: GridView.builder(
                            itemCount: kontenGeo.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:2),
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, a, b) => MateriGeografiPage(
                                        kontenGeo: kontenGeo[index],
                                      ),
                                    ),
                                  );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(

                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 100, height: 100,
                                            child: Image.asset(
                                              kontenGeo[index].iconImage,
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            kontenGeo[index].name,
                                            style: TextStyle(
                                                color: Color(0xFF575E67),
                                                fontFamily: 'Varela',
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700),
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                               ) );
                            }),
                      ),
                    ),
                  ],
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}