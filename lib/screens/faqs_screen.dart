import 'package:flutter/material.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQ'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          FaqItem(
            question: 'What courses do you offer?',
            answer:
                'We offer a wide range of courses in various subjects, including Math, Science, History, and more. Explore our catalog to find the perfect course for you.',
          ),
          FaqItem(
            question: 'How do I enroll in a course?',
            answer:
                'To enroll in a course, simply navigate to the course details page and click on the "Enroll" button. Follow the on-screen instructions to complete the enrollment process.',
          ),
          FaqItem(
            question: 'Can I access my courses on multiple devices?',
            answer:
                'Yes, you can access your courses on multiple devices. Simply log in with your account credentials, and your progress will be synchronized across devices.',
          ),
          FaqItem(
            question: 'Is there a mobile app available?',
            answer:
                'Yes, we have a mobile app available for both iOS and Android devices. You can download it from the App Store or Google Play Store and enjoy learning on the go.',
          ),
          FaqItem(
            question: 'How do I reset my password?',
            answer:
                'If you forgot your password, you can use the "Forgot Password" option on the login screen. Follow the instructions sent to your registered email to reset your password.',
          ),
          FaqItem(
            question: 'Are there any free courses available?',
            answer:
                'Yes, we offer a selection of free courses. You can explore these courses without any cost. However, some premium courses may require payment.',
          ),
          FaqItem(
            question: 'How can I contact customer support?',
            answer:
                'For any assistance or queries, you can contact our customer support team at support@example.com. We are here to help you!',
          ),
          FaqItem(
            question: 'Can I request a refund for a course?',
            answer:
                'Refund policies vary for each course. Please review the refund policy on the course details page or contact customer support for more information.',
          ),
          FaqItem(
            question: 'Is there a trial period for premium courses?',
            answer:
                'Yes, some premium courses may offer a trial period. You can check the course details to see if a trial option is available for the course you are interested in.',
          ),
          FaqItem(
            question: 'How do I track my progress in a course?',
            answer:
                'You can track your progress within each course. The app will show your completed lessons, quizzes, and overall completion percentage. Monitor your progress on the course dashboard.',
          ),
          FaqItem(
            question: 'Do you offer certifications for completed courses?',
            answer:
                'Yes, upon successful completion of a course, you will receive a certificate of completion. Certificates can be downloaded or shared directly from the app.',
          ),
          FaqItem(
            question: 'Can I collaborate with other learners?',
            answer:
                'Yes, you can collaborate with other learners through discussion forums and group activities within certain courses. Engage with fellow learners and enhance your learning experience.',
          ),
          FaqItem(
            question: 'Are the courses self-paced?',
            answer:
                'Most of our courses are designed to be self-paced, allowing you to learn at your own convenience. However, some courses may have specific schedules or deadlines.',
          ),
          FaqItem(
            question: 'How can I provide feedback on a course?',
            answer:
                'We value your feedback! You can provide feedback on a course by accessing the course details page and using the provided feedback option. Your input helps us improve.',
          ),
          FaqItem(
            question: 'Are there any system requirements for the app?',
            answer:
                'Our app is compatible with a wide range of devices. Ensure your device meets the minimum requirements specified in the app store for optimal performance.',
          ),
          FaqItem(
            question: 'Can I download courses for offline viewing?',
            answer:
                'Yes, you can download certain courses for offline viewing. Look for the download option on the course details page and enjoy learning without an internet connection.',
          ),
        ],
      ),
    );
  }
}

class FaqItem extends StatelessWidget {
  final String question;
  final String answer;

  const FaqItem({super.key, required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        question,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(answer),
        ),
      ],
    );
  }
}
