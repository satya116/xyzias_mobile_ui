import 'package:saffron_ias_flutter_mobile/screens/faqs_screen.dart';
import 'package:saffron_ias_flutter_mobile/screens/feedback_screen.dart';
import 'package:saffron_ias_flutter_mobile/screens/home_screen.dart';
import 'package:saffron_ias_flutter_mobile/screens/login_otp_verify_screen.dart';
import 'package:saffron_ias_flutter_mobile/screens/login_screen.dart';
import 'package:saffron_ias_flutter_mobile/screens/mock_test_result_screen.dart';
import 'package:saffron_ias_flutter_mobile/screens/mock_test_screen.dart';
import 'package:saffron_ias_flutter_mobile/screens/onboarding_screen.dart';
import 'package:saffron_ias_flutter_mobile/screens/pdf_viewer_screen.dart';
import 'package:saffron_ias_flutter_mobile/screens/play_ground.dart';
import 'package:saffron_ias_flutter_mobile/screens/privacy_policy_screen.dart';
// import 'package:saffron_ias_flutter_mobile/screens/video_player_screen.dart';
import 'package:saffron_ias_flutter_mobile/screens/video_player_screen_2.dart';

final routes = {
  "/home": (context) => const HomeScreen(),
  "/onboarding": (context) => const OnboardingScreen(),
  "/video_player_screen": (context) => const VideoPlayerScreen2(),
  "/privacy_policy": (context) => const PrivacyPolicyScreen(),
  "/faqs": (context) => const FAQScreen(),
  "/feedback": (context) => const FeedbackForm(),
  "/login": (context) => const LoginScreen(),
  "/login_otp_verify": (context) => const LoginOTPVerifyScreen(),
  "/test_screen": (context) => const TestScreen(),
  "/test_result_screen": (context) => const TestResultScreen(),
  "/playground": (context) => const MyPlayGroundScreen(),
  "/pdf_viewer_screen": (context) => const PdfViewerScreen(),
};
