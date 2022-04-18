part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToSplashPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToLoginPage extends PageEvent {
  @override
  List<Object> get props => [];
}
class GoToSignUpPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToMainPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToRegistrationPage extends PageEvent {
  final RegistrationData registrationData;

  GoToRegistrationPage(this.registrationData);

  @override
  List<Object> get props => [];
}

class GoToPreferencePage extends PageEvent {
  final RegistrationData registrationData;

  GoToPreferencePage(this.registrationData);

  @override
  List<Object> get props => [];
}

class GoToAccountConfirmationPage extends PageEvent {
  final RegistrationData registrationData;

  GoToAccountConfirmationPage(this.registrationData);

  @override
  List<Object> get props => [];
}

class GoToSaintekPage extends PageEvent {

  @override
  List<Object> get props => [];
}

class GoToMatematikaPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToMateriMTKPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToFisikaPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToMateriFisikaPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToKimiaPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToMateriKimiaPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToBiologiPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToMateriBiologiPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToIndonesiaPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToMateriIndonesiaPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToInggrisPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToMateriInggrisPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToEkonomiPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToMateriEkonomiPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToSejarahPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToMateriSejarahPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToSosiologiPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToMateriSosiologiPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToGeografiPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToMateriGeografiPage extends PageEvent {

  @override
  List<Object> get props => [];
}
class GoToEditProfilePage extends PageEvent {
  final Users user;

  GoToEditProfilePage(this.user);

  @override
  List<Object> get props => [user];
}