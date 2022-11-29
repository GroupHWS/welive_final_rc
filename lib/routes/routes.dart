import 'package:flutter/material.dart';
import 'package:we_live_chat_app/authentication/authenticating.dart';
import 'package:we_live_chat_app/authentication/create_user.dart';
import 'package:we_live_chat_app/authentication/login.dart';
import 'package:we_live_chat_app/userprofile/profile_edit.dart';
import 'package:we_live_chat_app/userprofile/user_ui.dart';
import 'package:we_live_chat_app/views/bookings.dart';
import 'package:we_live_chat_app/views/chat.dart';
import 'package:we_live_chat_app/views/home_view.dart';
import 'package:we_live_chat_app/views/info_splash.dart';
import 'package:we_live_chat_app/views/journal_view.dart';
import 'package:we_live_chat_app/views/onboard_info.dart';
import 'package:we_live_chat_app/views/prof_profile.dart';
import 'package:we_live_chat_app/views/user_home.dart';

class RouteManager {
  static const String infoScreen = '/';
  static const String authScreen = 'authScreen';
  static const String userHome = 'userHome';
  static const String homeChat = 'homeChat';
  static const String profProfile = 'profProfile';
  static const String bookings = 'bookings';
  static const String journalScreen = 'journalScreen';
  static const String loginScreen = 'loginScreen';
  static const String createUser = 'createUser';
  static const String userProfile = 'userProfile';
  static const String editProfile = 'editProfile';
  static const String onboardInfo = 'onboardInfo';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case infoScreen:
        return MaterialPageRoute(
          builder: (context) => InfoScreen(),
        );

      case authScreen:
        return MaterialPageRoute(
          builder: (context) => Authenticate(),
        );

      case userHome:
        return MaterialPageRoute(
          builder: (context) => UserHome(),
        );

      case homeChat:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );

      case profProfile:
        return MaterialPageRoute(
          builder: (context) => ProfessionalProfile(),
        );

      case bookings:
        return MaterialPageRoute(
          builder: (context) => Bookings(),
        );

      case journalScreen:
        return MaterialPageRoute(
          builder: (context) => JournalView(),
        );

      case loginScreen:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );

      case createUser:
        return MaterialPageRoute(
          builder: (context) => CreateAccount(),
        );

       case userProfile:
        return MaterialPageRoute(
          builder: (context) => SettingsPage(),
        );

       case editProfile:
        return MaterialPageRoute(
          builder: (context) => EditProfilePage(),
        );

      case onboardInfo:
        return MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
        );

      default:
        throw FormatException('Route not found! Check routes again!');
    }
  }
}
