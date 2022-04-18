part of 'pages.dart';

class MoviePage extends StatefulWidget {
  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  Future<void> openDialogIPA() async {
    switch (await showDialog<Mapel>(
      context: this.context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("Pilih Mata Pelajaran"),
          children: <Widget>[
            SimpleDialogOption(
              child: Row(
                children: <Widget>[
                  SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset("assets/mtk.png")),
                  SizedBox(width: 10),
                  Text("Matematika"),
                ],
              ),
              onPressed: () {
                context.bloc<PageBloc>().add(GoToMatematikaPage());
                Navigator.of(context).pop(Mapel.Matematika);
              },
            ),
            SimpleDialogOption(
              child: Row(
                children: <Widget>[
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset("assets/fisika.png")),
                  SizedBox(width: 10),
                  Text("Fisika"),
                ],
              ),
              onPressed: () {
                context.bloc<PageBloc>().add(GoToFisikaPage());
                Navigator.of(context).pop(Mapel.Fisika);
              },
            ),
            SimpleDialogOption(
              child: Row(
                children: <Widget>[
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset("assets/kimia.png")),
                  SizedBox(width: 10),
                  Text("Kimia"),
                ],
              ),
              onPressed: () {
                context.bloc<PageBloc>().add(GoToKimiaPage());
                Navigator.of(context).pop(Mapel.Kimia);
              },
            ),
            SimpleDialogOption(
              child: Row(
                children: <Widget>[
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset("assets/biologi.png")),
                  SizedBox(width: 10),
                  Text("Biologi"),
                ],
              ),
              onPressed: () {
                context.bloc<PageBloc>().add(GoToBiologiPage());
                Navigator.of(context).pop(Mapel.Bio);
              },
            ),
            SimpleDialogOption(
              child: Row(
                children: <Widget>[
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset("assets/indo.png")),
                  SizedBox(width: 10),
                  Text("Bahasa Indonesia"),
                ],
              ),
              onPressed: () {
                context.bloc<PageBloc>().add(GoToIndonesiaPage());
                Navigator.of(context).pop(Mapel.Indo);
              },
            ),
            SimpleDialogOption(
              child: Row(
                children: <Widget>[
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset("assets/inggris.jpg")),
                  SizedBox(width: 10),
                  Text("Bahasa Inggris"),
                ],
              ),
              onPressed: () {
                context.bloc<PageBloc>().add(GoToInggrisPage());
                Navigator.of(context).pop(Mapel.Inggris);
              },
            ),
          ],
        );
      },
    )) {
      case Mapel.Matematika:
        print("Matematika");
        break;
      case Mapel.Fisika:
        print("Fisika");
        break;
      case Mapel.Kimia:
        print("Kimia");
        break;
      case Mapel.Inggris:
        print("Inggris");
        break;
      case Mapel.Indo:
        print("Indo");
        break;
      case Mapel.Bio:
        print("Bio");
        break;
    }
  }

  Future<void> openDialogIPS() async {
    switch (await showDialog<Mapel2>(
      context: this.context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("Pilih Mata Pelajaran"),
          children: <Widget>[
            SimpleDialogOption(
              child: Row(
                children: <Widget>[
                  SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset("assets/pertumbuhan ekonomi.png")),
                  SizedBox(width: 10),
                  Text("Ekonomi"),
                ],
              ),
              onPressed: () {
                context.bloc<PageBloc>().add(GoToEkonomiPage());
                Navigator.of(context).pop(Mapel2.Ekonomi);
              },
            ),
            SimpleDialogOption(
              child: Row(
                children: <Widget>[
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset("assets/pengantar sejarah.png")),
                  SizedBox(width: 10),
                  Text("Sejarah"),
                ],
              ),
              onPressed: () {
                context.bloc<PageBloc>().add(GoToSejarahPage());
                Navigator.of(context).pop(Mapel2.Sejarah);
              },
            ),
            SimpleDialogOption(
              child: Row(
                children: <Widget>[
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset("assets/interaksi sosial.png")),
                  SizedBox(width: 10),
                  Text("Sosiologi"),
                ],
              ),
              onPressed: () {
                context.bloc<PageBloc>().add(GoToSosiologiPage());
                Navigator.of(context).pop(Mapel2.Sosiologi);
              },
            ),
            SimpleDialogOption(
              child: Row(
                children: <Widget>[
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset("assets/sda.png")),
                  SizedBox(width: 10),
                  Text("Geografi"),
                ],
              ),
              onPressed: () {
                context.bloc<PageBloc>().add(GoToGeografiPage());
                Navigator.of(context).pop(Mapel2.Geografi);
              },
            ),
            SimpleDialogOption(
              child: Row(
                children: <Widget>[
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset("assets/indo.png")),
                  SizedBox(width: 10),
                  Text("Bahasa Indonesia"),
                ],
              ),
              onPressed: () {
                context.bloc<PageBloc>().add(GoToIndonesiaPage());
                Navigator.of(context).pop(Mapel2.Indo);
              },
            ),
            SimpleDialogOption(
              child: Row(
                children: <Widget>[
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset("assets/inggris.jpg")),
                  SizedBox(width: 10),
                  Text("Bahasa Inggris"),
                ],
              ),
              onPressed: () {
                context.bloc<PageBloc>().add(GoToInggrisPage());
                Navigator.of(context).pop(Mapel2.Inggris);
              },
            ),
          ],
        );
      },
    )) {
      case Mapel2.Ekonomi:
        print("Ekonomi");
        break;
      case Mapel2.Sejarah:
        print("Sejarah");
        break;
      case Mapel2.Sosiologi:
        print("Sosiologi");
        break;
      case Mapel2.Geografi:
        print("Geografi");
        break;
      case Mapel2.Indo:
        print("Indo");
        break;
      case Mapel2.Inggris:
        print("Inggris");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    return Stack(
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bgg.jpg"), fit: BoxFit.cover))),
        ListView(
          children: <Widget>[
            SizedBox(height: 30),
            // note: HEADER
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              padding:
                  EdgeInsets.fromLTRB(defaultMargin, 20, defaultMargin, 30),
              child: BlocBuilder<UserBloc, UserState>(builder: (_, userState) {
                if (userState is UserLoaded) {
                  if (imageFileToUpload != null) {
                    uploadImage(imageFileToUpload).then((downloadURL) {
                      imageFileToUpload = null;
                      context
                          .bloc<UserBloc>()
                          .add(UpdateData(profileImage: downloadURL));
                    });
                  }

                  return Row(
                    children: <Widget>[
                      Container(
                        child: Stack(
                          children: <Widget>[
                            SpinKitFadingCircle(
                              color: accentColor2,
                              size: 50,
                            ),
                            GestureDetector(
                              onTap: () {
                                context.bloc<PageBloc>().add(
                                    GoToEditProfilePage(
                                        (userState as UserLoaded).user));
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: (userState.user.profilePicture ==
                                                ""
                                            ? AssetImage("assets/user_pic.png")
                                            : NetworkImage(
                                                userState.user.profilePicture)),
                                        fit: BoxFit.cover)),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: MediaQuery.of(context).size.width -
                                2 * defaultMargin -
                                78,
                            child: Text(
                              "Halo, " + userState.user.name,
                              style: blackTextFont.copyWith(fontSize: 18),
                              maxLines: 1,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                          Text(
                            userState.user.selectedSchool,
                            style: blackTextFont.copyWith(fontSize: 18),
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                          )
                        ],
                      ),
                      
                    ],
                  );
                } else {
                  return SpinKitFadingCircle(
                    color: accentColor2,
                    size: 50,
                  );
                }
              }),
            ),
            Divider(
              color: Colors.transparent,
              thickness: 0.8,
              indent: 20.0,
              endIndent: 20.0,
            ),
            SizedBox(height: MediaQuery.of(context).size.height/9.5),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(width: 20),
                    Text(
                      "Mau Belajar Apa Nih?",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Source Sans',
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        openDialogIPA();
                      },
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 20),
                            SizedBox(
                              width: 130,
                              height: 130,
                              child: Image.asset("assets/ipa.png"),
                            ),
                            SizedBox(height: 5),
                            Text("SAINTEK",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Varela',
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        openDialogIPS();
                      },
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 20),
                            SizedBox(
                              width: 130,
                              height: 130,
                              child: Image.asset("assets/ips.png"),
                            ),
                            SizedBox(height: 5),
                            Text("SOSHUM",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Varela',
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

enum Mapel { Matematika, Fisika, Kimia, Inggris, Indo, Bio }
enum Mapel2 { Ekonomi, Sejarah, Geografi, Inggris, Indo, Sosiologi }
