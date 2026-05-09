import 'package:flutter/material.dart';

import '../../view/add_medicine_page/screen/add_medicine.dart';
import '../../view/cart_page/screen/my_cart_page.dart';
import '../../view/choose_page/screen/choose_page.dart';
import '../../view/create_new_password_page/screen/create_new_password_page.dart';
import '../../view/details_page/screen/details_page.dart';
import '../../view/doctor_consultation_page/screen/appointment_page.dart';
import '../../view/doctor_consultation_page/screen/doctor_details_page.dart';
import '../../view/doctor_consultation_page/screen/find_doctor_page.dart';
import '../../view/forget_password_page/screen/forget_password_page.dart';
import '../../view/home_page/screen/pharmacy_home_page.dart';
import '../../view/incoming_orders_page/screen/incoming_orders.dart';
import '../../view/location_page/screen/location_page.dart';
import '../../view/login_intro_page/screen/login_intro_page.dart';
import '../../view/login_page/screen/login_page.dart';
import '../../view/my_donation_page/screen/my_donation.dart';
import '../../view/my_orders_page/screen/my_orders.dart';
import '../../view/on_boarding_page/screen/on_boarding_page.dart';
import '../../view/pharmacy_dashboard_page/screen/pharmacy_dashboard_page.dart';
import '../../view/profile_page/screen/profile_page.dart';
import '../../view/reward_page/screen/reward_screen.dart';
import '../../view/scan_page/screen/scan_qr_page.dart';
import '../../view/sign_up_page/screen/sign_up_page.dart';
import '../../view/splash_page/screen/splash_page.dart';
import '../../view/verified_forget_password_page/screen/verified_forget_password_page.dart';
import '../widget/unknown_route_page.dart';

class RoutesManager {
  RoutesManager._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Widget page;

    switch (settings.name) {
      // ── Splash & Onboarding ──────────────────────────────────────────
      case '/':
        page = const SplashPage();
        break;
      case '/onboardingPage':
        page = const OnBoardingPage();
        break;

      // ── Auth ─────────────────────────────────────────────────────────
      case '/welcomePage':
        page = const LoginIntroPage();
        break;
      case '/loginPage':
        page = const LoginPage();
        break;
      case '/signUpPage':
        page = const SignUpPage();
        break;
      case '/forgetPasswordPage':
        page = const ForgetPasswordPage();
        break;
      case '/verifiedForgetPasswordPage':
        page = const VerifiedForgetPasswordPage();
        break;
      case '/createPasswordNewPage':
        page = const CreateNewPasswordPage();
        break;

      // ── Choose Role (User or Pharmacy) ────────────────────────────────
      case '/choosePage':
        page = const ChoosePage();
        break;

      // ── User Screens ──────────────────────────────────────────────────
      case '/homePage':
        page = const PharmacyHomePage();
        break;
      case '/detailsPage':
        page = const DetailsPage();
        break;
      case '/findDoctorPage':
        page = FindDoctorPage();
        break;
      case '/doctorDetailsPage':
        page = DoctorDetailsPage();
        break;
      case '/appointmentPage':
        page = AppointmentPage();
        break;
      case '/cartPage':
        page = const MyCartPage();
        break;
      case '/locationPage':
        page = const LocationPage();
        break;
      case '/profilePage':
        page = const ProfilePage();
        break;
      case '/myOrdersPage':
        page = const MyOrdersPage();
        break;
      case '/myDonationsPage':
        page = const MyDonationsPage();
        break;
      case '/rewardsPage':
        page = const RewardPointsPage();
        break;

      // ── Pharmacy Screens ──────────────────────────────────────────────
      case '/pharmacyDashboardPage':
        page = const PharmacyDashboardPage();
        break;
      case '/scanQrPage':
        page = const ScanQrPage();
        break;
      case '/addMedicinePage':
        page = const AddMedicinePage();
        break;
      case '/incomingOrdersPage':
        page = const IncomingOrdersPage();
        break;

      default:
        page = const UnknownRoutePage();
    }

    return MaterialPageRoute(
      builder: (context) => page,
      settings: settings,
    );
  }
}

// ── Route Names Enum ─────────────────────────────────────────────────────────
// Use these constants everywhere instead of raw strings to avoid typos
enum RoutesName {
  splash('/'),
  onBoarding('/onboardingPage'),
  loginIntro('/welcomePage'),
  login('/loginPage'),
  signUp('/signUpPage'),
  forgetPassword('/forgetPasswordPage'),
  verifiedForgetPassword('/verifiedForgetPasswordPage'),
  createNewPassword('/createPasswordNewPage'),
  choose('/choosePage'),

  // User
  home('/homePage'),
  detailsPage('/detailsPage'),
  findDoctor('/findDoctorPage'),
  doctorDetails('/doctorDetailsPage'),
  topDoctor('/topDoctorPage'),
  appointment('/appointmentPage'),
  cart('/cartPage'),
  locationPage('/locationPage'),
  profile('/profilePage'),
  myOrders('/myOrdersPage'),
  myDonations('/myDonationsPage'),
  rewards('/rewardsPage'),

  // Pharmacy
  pharmacyDashboard('/pharmacyDashboardPage'),
  scan('/scanQrPage'),
  addMedicine('/addMedicinePage'),
  incomingOrders('/incomingOrdersPage');

  final String routeName;
  const RoutesName(this.routeName);
}
