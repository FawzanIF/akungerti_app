part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/logo.png"))),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 16),
                child: Text(
                  "Belajar Yuk !",
                  style: blackTextFont.copyWith(fontSize: 20),
                ),
              ),
              Text(
                "Belajar Terasa Lebih Menyenangkan\nDi Aplikasi AKU NGERTI !",
                style: greyTextFont.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
              Container(
                width: 250,
                height: 46,
                margin: EdgeInsets.only(top: 70, bottom: 19),
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: mainColor)),
                    child: Text(
                      "Buat Akun Baru",
                      style: whiteTextFont.copyWith(fontSize: 16),
                    ),
                    color: mainColor,
                    onPressed: () {
                      context
                          .bloc<PageBloc>()
                          .add(GoToRegistrationPage(RegistrationData()));
                    }),
              ),
              Center(
                child: Container(
                  width: 250,
                  height: 46,
                  margin: EdgeInsets.only(top: 20, bottom: 19),
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(color: Colors.blue[300])),
                      textColor: Colors.white,
                      child: Text(
                        "Masuk",
                        style: blueTextFont.copyWith(fontSize: 16),
                      ),
                      color: Colors.white,
                      onPressed: () {
                        context.bloc<PageBloc>().add(GoToLoginPage());
                      }),
                ),
              ),
            ],
          ),
        ));
  }
}
