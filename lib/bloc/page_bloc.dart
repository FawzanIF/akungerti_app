import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:akungerti_app/models/models.dart';
import 'package:equatable/equatable.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  @override
  PageState get initialState => OnInitialPage();

  @override
  Stream<PageState> mapEventToState(
    PageEvent event,
  ) async* {
    if (event is GoToSplashPage) {
      yield OnSplashPage();
    } else if (event is GoToLoginPage) {
      yield OnLoginPage();
    } else if (event is GoToSignUpPage) {
      yield OnSignUpPage();
    } else if (event is GoToMainPage) {
      yield OnMainPage();
    } else if (event is GoToRegistrationPage) {
      yield OnRegistrationPage(event.registrationData);
    } else if (event is GoToPreferencePage) {
      yield OnPreferencePage(event.registrationData);
    } else if (event is GoToAccountConfirmationPage) {
      yield OnAccountConfirmationPage(event.registrationData);
    } else if (event is GoToSaintekPage) {
      yield OnSaintekPage();
    } else if (event is GoToMatematikaPage) {
      yield OnMatematikaPage();
    } else if (event is GoToMateriMTKPage) {
      yield OnMateriMTKPage();
    } else if (event is GoToFisikaPage) {
      yield OnFisikaPage();
    } else if (event is GoToMateriFisikaPage) {
      yield OnMateriFisikaPage();
    }   else if (event is GoToKimiaPage) {
      yield OnKimiaPage();
    } else if (event is GoToMateriKimiaPage) {
      yield OnMateriKimiaPage();
    } else if (event is GoToBiologiPage) {
      yield OnBiologiPage();
    } else if (event is GoToMateriBiologiPage) {
      yield OnMateriBiologiPage();
    } else if (event is GoToIndonesiaPage) {
      yield OnIndonesiaPage();
    } else if (event is GoToMateriIndonesiaPage) {
      yield OnMateriIndonesiaPage();
    } else if (event is GoToInggrisPage) {
      yield OnInggrisPage();
    } else if (event is GoToMateriInggrisPage) {
      yield OnMateriInggrisPage();
    } else if (event is GoToEkonomiPage) {
      yield OnEkonomiPage();
    } else if (event is GoToMateriEkonomiPage) {
      yield OnMateriEkonomiPage();
    } else if (event is GoToSosiologiPage) {
      yield OnSosiologiPage();
    } else if (event is GoToMateriSosiologiPage) {
      yield OnMateriSosiologiPage();
    } else if (event is GoToSejarahPage) {
      yield OnSejarahPage();
    } else if (event is GoToMateriSejarahPage) {
      yield OnMateriSejarahPage();
    } else if (event is GoToGeografiPage) {
      yield OnGeografiPage();
    } else if (event is GoToMateriGeografiPage) {
      yield OnMateriGeografiPage();
    } else if (event is GoToEditProfilePage) {
      yield OnEditProfilePage(event.user);
    } 
  }
}
