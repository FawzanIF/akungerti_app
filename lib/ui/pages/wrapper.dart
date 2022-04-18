part of 'pages.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User firebaseUser = Provider.of<User>(context);

    if (firebaseUser == null) {
      if (!(prevPageEvent is GoToSplashPage)) {
        prevPageEvent = GoToSplashPage();
        context.bloc<PageBloc>().add(prevPageEvent);
      }
    } else {
      if (!(prevPageEvent is GoToMainPage)) {
        context.bloc<UserBloc>().add(LoadUser(firebaseUser.uid));

        prevPageEvent = GoToMainPage();
        context.bloc<PageBloc>().add(prevPageEvent);
      }
    }

    return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is OnSplashPage)
            ? SplashPage()
            : (pageState is OnLoginPage)
                ? SignInPage()
                
                : (pageState is OnRegistrationPage)
                    ? SignUpPage(pageState.registrationData)
                    : (pageState is OnPreferencePage)
                        ? PreferencePage(pageState.registrationData)
                        : (pageState is OnAccountConfirmationPage)
                            ? AccountConfirmationPage(
                                pageState.registrationData)
                                : (pageState is OnSaintekPage)
                            ? SaintekPage(
                                )
                                : (pageState is OnMatematikaPage)
                            ? MatematikaPage(
                                )
                                : (pageState is OnFisikaPage)
                            ? FisikaPage(
                                )
                                : (pageState is OnKimiaPage)
                            ? KimiaPage(
                                )
                                : (pageState is OnBiologiPage)
                            ? BiologiPage(
                                )
                                : (pageState is OnIndonesiaPage)
                            ? IndonesiaPage(
                                )
                                : (pageState is OnInggrisPage)
                            ? InggrisPage(
                                )
                                : (pageState is OnEkonomiPage)
                            ? EkonomiPage(
                                )
                                : (pageState is OnSejarahPage)
                            ? SejarahPage(
                                )
                                : (pageState is OnSosiologiPage)
                            ? SosiologiPage(
                                )
                                : (pageState is OnGeografiPage)
                            ? GeografiPage(
                                )
                                : (pageState is OnEditProfilePage)
                                                ? EditProfilePage(
                                                    pageState.user)
                                
                            : MainPage());
  }
}
