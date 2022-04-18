part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();
}

class OnInitialPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnLoginPage extends PageState {
  @override
  List<Object> get props => [];
}
class OnSignUpPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnSplashPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnMainPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnRegistrationPage extends PageState {
  final RegistrationData registrationData;

  OnRegistrationPage(this.registrationData);

  @override
  List<Object> get props => [];
}

class OnPreferencePage extends PageState {
  final RegistrationData registrationData;

  OnPreferencePage(this.registrationData);
  
  @override
  List<Object> get props => [];
}

class OnAccountConfirmationPage extends PageState {
  final RegistrationData registrationData;

  OnAccountConfirmationPage(this.registrationData);
  
  @override
  List<Object> get props => [];
}

class OnSaintekPage extends PageState {

  @override
  List<Object> get props => [];
}

class OnMatematikaPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnMateriMTKPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnFisikaPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnMateriFisikaPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnKimiaPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnMateriKimiaPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnBiologiPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnMateriBiologiPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnIndonesiaPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnMateriIndonesiaPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnInggrisPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnMateriInggrisPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnEkonomiPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnMateriEkonomiPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnSejarahPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnMateriSejarahPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnSosiologiPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnMateriSosiologiPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnGeografiPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnMateriGeografiPage extends PageState {

  @override
  List<Object> get props => [];
}
class OnEditProfilePage extends PageState {
  final Users user;

  OnEditProfilePage(this.user);

  @override
  List<Object> get props => [user];
}