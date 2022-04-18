part of 'pages.dart';

class AccountConfirmationPage extends StatefulWidget {
  final RegistrationData registrationData;

  AccountConfirmationPage(this.registrationData);

  @override
  _AccountConfirmationPageState createState() =>
      _AccountConfirmationPageState();
}

class _AccountConfirmationPageState extends State<AccountConfirmationPage> {
  bool isSigningUp = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context
            .bloc<PageBloc>()
            .add(GoToPreferencePage(widget.registrationData));
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
                  .add(GoToPreferencePage(widget.registrationData));
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 90),
                    height: 70,
                    child: Center(
                      child: Text(
                        "Konfirmasi\nAkun Baru",
                        style: blackTextFont.copyWith(fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  
                  Container(
                    width: 150,
                    height: 150,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image:
                                (widget.registrationData.profileImage == null)
                                    ? AssetImage("assets/user_pic.png")
                                    : FileImage(
                                        widget.registrationData.profileImage),
                            fit: BoxFit.cover)),
                  ),
                  Text(
                    "Selamat Datang, ",
                    style: blackTextFont.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "${widget.registrationData.name}" + "!",
                    textAlign: TextAlign.center,
                    style: blackTextFont.copyWith(fontSize: 30),
                  ),
                  SizedBox(
                    height: 110,
                  ),
                  (isSigningUp)
                      ? SpinKitCircle(
                          color: mainColor,
                          size: 45,
                        )
                      : SizedBox(
                          width: 250,
                          height: 45,
                          child: RaisedButton(
                              color: mainColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                "Buat Akun Saya",
                                style: whiteTextFont.copyWith(fontSize: 16),
                              ),
                              onPressed: () async {
                                setState(() {
                                  isSigningUp = true;
                                });

                                imageFileToUpload =
                                    widget.registrationData.profileImage;

                                SignInSignUpResult result =
                                    await AuthServices.signUp(
                                        widget.registrationData.email,
                                        widget.registrationData.password,
                                        widget.registrationData.name,
                                        widget.registrationData.selectedSchool);

                                if (result.user == null) {
                                  setState(() {
                                    isSigningUp = false;
                                  });

                                  Flushbar(
                                    duration: Duration(milliseconds: 1500),
                                    flushbarPosition: FlushbarPosition.TOP,
                                    backgroundColor: Color(0xFFFF5C83),
                                    message: result.message,
                                  )..show(context);
                                }
                              })),
                              SizedBox(
                    height: 110,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
