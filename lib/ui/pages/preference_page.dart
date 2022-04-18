part of 'pages.dart';

class PreferencePage extends StatefulWidget {
  final List<String> school = [
    "Kelas 10",
    "Kelas 11",
    "Kelas 12",
  ];

  final RegistrationData registrationData;

  PreferencePage(this.registrationData);

  @override
  _PreferencePageState createState() => _PreferencePageState();
}

class _PreferencePageState extends State<PreferencePage> {
  String selectedSchool = "Kelas 12";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        widget.registrationData.password = "";

        context
            .bloc<PageBloc>()
            .add(GoToRegistrationPage(widget.registrationData));
        return;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          title: GestureDetector(
            onTap: () {
              widget.registrationData.password = "";

              context
                  .bloc<PageBloc>()
                  .add(GoToRegistrationPage(widget.registrationData));
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 30),
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Kelas Berapa Kamu?",
                    style: purpleTextFont.copyWith(fontSize: 20, fontWeight: FontWeight.w700)
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Wrap(
                    spacing: 24,
                    runSpacing: 24,
                    children: generateSchoolWidgets(context),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      child: RaisedButton(
                          color: mainColor,
                          child: Text(
                            'Lanjutkan',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontFamily: 'Felbridge', fontWeight: FontWeight.w400),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.all(10),
                          onPressed: () {
                           if (selectedSchool.length == 0) {                              
                             Flushbar(
                                duration: Duration(milliseconds: 1500),
                                flushbarPosition: FlushbarPosition.TOP,
                               backgroundColor: Color(0xFFFF5C83),
                               message:
                                   "Pilih salah satu diantara opsi dibawah",
                             )..show(context);
                           } else {
                            widget.registrationData.selectedSchool =
                                selectedSchool;

                            context.bloc<PageBloc>().add(
                                GoToAccountConfirmationPage(
                                    widget.registrationData));
//                            }
                          }}),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> generateSchoolWidgets(BuildContext context) {
    double width =
        (MediaQuery.of(context).size.width - 2 * defaultMargin - 24) / 2;

    return widget.school
        .map((e) => SelectableBox(
              e,
              width: width,
              isSelected: selectedSchool == e,
              onTap: () {
                setState(() {
                  selectedSchool = e;
                });
              },
            ))
        .toList();
  }
}
