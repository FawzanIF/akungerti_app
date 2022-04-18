part of 'pages.dart';

//Materi Matematika Page
class MateriMTKPage extends StatelessWidget {
  final MTKInfo kontenMTK;

  const MateriMTKPage({
    Key key,
    this.kontenMTK,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return;
      },
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bgg.jpg"), fit: BoxFit.cover))),
          ListView(
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_rounded)),
                      SizedBox(width: 40),
                      Text("Yuk, Belajar " + kontenMTK.name,
                          style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'Varela',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(kontenMTK.link),
                    looping: true),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.white70,
                ),
                child: ExpansionTile(
                  title: Text("Penjelasan Video " + kontenMTK.name),
                  leading: Icon(Icons.lightbulb_outline),
                  backgroundColor: Colors.transparent,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                          kontenMTK.description, style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Varela',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300)),
                    ),
                              SizedBox(height: 20)
                  ],
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}

//Materi Fisika Page
class MateriFisikaPage extends StatelessWidget {
  final FisikaInfo kontenFis;

  const MateriFisikaPage({
    Key key,
    this.kontenFis,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return;
      },
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bgg.jpg"), fit: BoxFit.cover))),
          ListView(
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_rounded)),
                      SizedBox(width: 40),
                      Text("Yuk, Belajar " + kontenFis.name,
                          style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'Varela',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(kontenFis.link),
                    looping: true),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.white70,
                ),
                child: ExpansionTile(
                  title: Text("Penjelasan Video " + kontenFis.name),
                  leading: Icon(Icons.lightbulb_outline),
                  backgroundColor: Colors.transparent,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                          kontenFis.description, style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Varela',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300)),
                    ),
                              SizedBox(height: 20)
                  ],
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}

//Materi Kimia Page
class MateriKimiaPage extends StatelessWidget {
  final KimiaInfo kontenKim;

  const MateriKimiaPage({
    Key key,
    this.kontenKim,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return;
      },
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bgg.jpg"), fit: BoxFit.cover))),
          ListView(
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_rounded)),
                      SizedBox(width: 40),
                      Text("Yuk, Belajar " + kontenKim.name,
                          style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'Varela',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(kontenKim.link),
                    looping: true),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.white70,
                ),
                child: ExpansionTile(
                  title: Text("Penjelasan Video " + kontenKim.name),
                  leading: Icon(Icons.lightbulb_outline),
                  backgroundColor: Colors.transparent,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                          kontenKim.description, style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Varela',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300)),
                    ),
                              SizedBox(height: 20)
                  ],
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}

//Materi Biologi Page
class MateriBiologiPage extends StatelessWidget {
  final BioInfo kontenBio;

  const MateriBiologiPage({
    Key key,
    this.kontenBio,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return;
      },
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bgg.jpg"), fit: BoxFit.cover))),
          ListView(
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_rounded)),
                      SizedBox(width: 40),
                      Text("Yuk, Belajar " + kontenBio.name,
                          style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'Varela',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(kontenBio.link),
                    looping: true),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.white70,
                ),
                child: ExpansionTile(
                  title: Text("Penjelasan Video " + kontenBio.name),
                  leading: Icon(Icons.lightbulb_outline),
                  backgroundColor: Colors.transparent,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                          kontenBio.description, style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Varela',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300)),
                    ),
                              SizedBox(height: 20)
                  ],
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}

//Materi Indonesia Page
class MateriIndonesiaPage extends StatelessWidget {
  final IndoInfo kontenIndo;

  const MateriIndonesiaPage({
    Key key,
    this.kontenIndo,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return;
      },
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bgg.jpg"), fit: BoxFit.cover))),
          ListView(
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_rounded)),
                      SizedBox(width: 40),
                      Text("Yuk, Belajar " + kontenIndo.name,
                          style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'Varela',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(kontenIndo.link),
                    looping: true),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.white70,
                ),
                child: ExpansionTile(
                  title: Text("Penjelasan Video " + kontenIndo.name),
                  leading: Icon(Icons.lightbulb_outline),
                  backgroundColor: Colors.transparent,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                          kontenIndo.description, style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Varela',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300)),
                    ),
                              SizedBox(height: 20)
                  ],
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}

//Materi Inggris Page
class MateriInggrisPage extends StatelessWidget {
  final InggrisInfo kontenIng;

  const MateriInggrisPage({
    Key key,
    this.kontenIng,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return;
      },
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bgg.jpg"), fit: BoxFit.cover))),
          ListView(
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_rounded)),
                      SizedBox(width: 40),
                      Text("Yuk, Belajar " + kontenIng.name,
                          style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'Varela',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(kontenIng.link),
                    looping: true),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.white70,
                ),
                child: ExpansionTile(
                  title: Text("Penjelasan Video " + kontenIng.name),
                  leading: Icon(Icons.lightbulb_outline),
                  backgroundColor: Colors.transparent,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                          kontenIng.description, style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Varela',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300)),
                    ),
                              SizedBox(height: 20)
                  ],
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}

//Materi Ekonomi Page
class MateriEkonomiPage extends StatelessWidget {
  final EkoInfo kontenEko;

  const MateriEkonomiPage({
    Key key,
    this.kontenEko,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return;
      },
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bgg.jpg"), fit: BoxFit.cover))),
          ListView(
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_rounded)),
                      SizedBox(width: 40),
                      Text("Yuk, Belajar " + kontenEko.name,
                          style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'Varela',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(kontenEko.link),
                    looping: true),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.white70,
                ),
                child: ExpansionTile(
                  title: Text("Penjelasan Video " + kontenEko.name),
                  leading: Icon(Icons.lightbulb_outline),
                  backgroundColor: Colors.transparent,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                          kontenEko.description, style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Varela',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300)),
                    ),
                              SizedBox(height: 20)
                  ],
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}

//Materi Sejarah Page
class MateriSejarahPage extends StatelessWidget {
  final SejInfo kontenSej;

  const MateriSejarahPage({
    Key key,
    this.kontenSej,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return;
      },
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bgg.jpg"), fit: BoxFit.cover))),
          ListView(
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_rounded)),
                      SizedBox(width: 40),
                      Text("Yuk, Belajar " + kontenSej.name,
                          style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'Varela',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(kontenSej.link),
                    looping: true),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.white70,
                ),
                child: ExpansionTile(
                  title: Text("Penjelasan Video " + kontenSej.name),
                  leading: Icon(Icons.lightbulb_outline),
                  backgroundColor: Colors.transparent,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                          kontenSej.description, style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Varela',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300)),
                    ),
                              SizedBox(height: 20)
                  ],
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}

//Materi Sosiologi Page
class MateriSosiologiPage extends StatelessWidget {
  final SosioInfo kontenSos;

  const MateriSosiologiPage({
    Key key,
    this.kontenSos,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return;
      },
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bgg.jpg"), fit: BoxFit.cover))),
          ListView(
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_rounded)),
                      SizedBox(width: 40),
                      Text("Yuk, Belajar " + kontenSos.name,
                          style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'Varela',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(kontenSos.link),
                    looping: true),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.white70,
                ),
                child: ExpansionTile(
                  title: Text("Penjelasan Video " + kontenSos.name),
                  leading: Icon(Icons.lightbulb_outline),
                  backgroundColor: Colors.transparent,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                          kontenSos.description, style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Varela',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300)),
                    ),
                              SizedBox(height: 20)
                  ],
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}

//Materi Geografi Page
class MateriGeografiPage extends StatelessWidget {
  final GeoInfo kontenGeo;

  const MateriGeografiPage({
    Key key,
    this.kontenGeo,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        
        return;
      },
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bgg.jpg"), fit: BoxFit.cover))),
          ListView(
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_rounded)),
                      SizedBox(width: 40),
                      Text("Yuk, Belajar " + kontenGeo.name,
                          style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'Varela',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
              Container(
                height: 250,
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(kontenGeo.link),
                    looping: true),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.white70,
                ),
                child: ExpansionTile(
                  title: Text("Penjelasan Video " + kontenGeo.name),
                  leading: Icon(Icons.lightbulb_outline),
                  backgroundColor: Colors.transparent,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                          kontenGeo.description, style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Varela',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300)),
                    ),
                              SizedBox(height: 20)
                  ],
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
