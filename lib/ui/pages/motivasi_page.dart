part of 'pages.dart';

class MotivasiPage extends StatefulWidget {
  @override
  _MotivasiPageState createState() => _MotivasiPageState();
}

class _MotivasiPageState extends State<MotivasiPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bgg.jpg"), fit: BoxFit.cover)),
          child: ListView(children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(50),
                  ),

                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10),
                SizedBox(height: 80,
                child: Image.asset("assets/student.png")
                ),
                SizedBox(height: 10),
                Text("Info Buat si Pejuang", style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 23,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    )),
              ]),
            ),
            SizedBox(height: 20),
            StreamBuilder(
                stream:
                    FirebaseFirestore.instance.collection("info").snapshots(),
                builder: (_, snapshot) {
                  if (!snapshot.hasData)
                    return SpinKitCircle(color: accentColor2, size: 100);
                  return DaftarList(daftarInfo: snapshot.data.docs);
                }),
          ]),
        ),
      ],
    );
  }
}

class DaftarList extends StatelessWidget {
  final List<DocumentSnapshot> daftarInfo;

  DaftarList({
    Key key,
    this.daftarInfo,
  }) : super(key: key);

  void customLaunch(command) async {
      await launch(command); 
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height -270,
      child: ListView.builder(
          itemCount: daftarInfo.length,
          itemBuilder: (_, index) {
            return Container(
                height: 180,
                padding: EdgeInsets.only(top: 7.0, left: 15.0, right: 15.0),
                child: InkWell(
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white70),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height:10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(width: 10),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(image: NetworkImage(daftarInfo[index]
                                            .data()["gambar"]
                                            .toString() ??
                                        '',), fit: BoxFit.fill)
                                  )
                                  ),
                                  Text(
                                    daftarInfo[index]
                                            .data()["judul"]
                                            .toString() ??
                                        '',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 23,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  FlatButton(
                                    onPressed: () {
                                      customLaunch(daftarInfo[index]
                                          .data()["link"]
                                          .toString());
                                    },
                                    child: Icon(
                                  Icons.arrow_forward_sharp,
                                  color: Colors.white,
                                ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    color: mainColor,
                                    padding: const EdgeInsets.all(10),
                                  ),
                                  SizedBox(width: 30)
                                ],
                              ),
                            ]))));
          }),
    );
  }
}
