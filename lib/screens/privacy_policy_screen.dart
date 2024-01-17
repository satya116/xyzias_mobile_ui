import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Introduction',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '''
                Welcome to our mobile application! We respect your privacy and are committed to protecting your personal information. This Privacy Policy is designed to help you understand how we collect, use, disclose, and safeguard your information. By using our app, you consent to the practices described in this policy.
                ''',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Information We Collect',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '''
                We may collect various types of information to provide and improve our services to you. The types of information we collect include:

                1. Personal Information: When you create an account or use our services, we may collect personal information such as your name, email address, and other relevant details.

                2. Usage Information: We collect information about how you interact with our app, including the pages you visit, the features you use, and the time spent on each page.

                3. Device Information: We may collect information about the device you use to access our app, including the device type, operating system, and unique device identifiers.

                4. Location Information: With your consent, we may collect information about your device's location to provide location-based services.
                ''',
                style: TextStyle(fontSize: 16.0),
              ),
              // ... Add more sections as needed

              SizedBox(height: 20.0),
              Text(
                'How We Use Your Information',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '''
                We use the information we collect for various purposes, including:

                1. To provide, maintain, and improve our services.

                2. To personalize your experience and deliver relevant content.

                3. To communicate with you, including sending important updates and notifications.

                4. To analyze and understand how users interact with our app and to make informed decisions about improvements.

                5. To comply with legal obligations and protect against misuse or unauthorized access.
                ''',
                style: TextStyle(fontSize: 16.0),
              ),
              // ... Add more sections as needed

              SizedBox(height: 20.0),
              Text(
                'How We Share Your Information',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '''
                We may share your information with third parties in the following circumstances:

                1. With your consent: We may share your information with third parties when you provide explicit consent.

                2. Service Providers: We may engage third-party service providers to assist us in providing and improving our services.

                3. Legal Compliance: We may share your information to comply with applicable laws, regulations, or legal processes.

                4. Business Transactions: In the event of a merger, acquisition, or sale of all or a portion of our assets, your information may be transferred as part of the transaction.
                ''',
                style: TextStyle(fontSize: 16.0),
              ),
              // ... Add more sections as needed

              SizedBox(height: 20.0),
              Text(
                'Your Choices and Controls',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '''
                We provide you with choices and controls over your information, including:

                1. Account Settings: You can update your account information and preferences through the app settings.

                2. Communications: You can opt-out of receiving promotional communications from us by following the instructions provided in the messages.

                3. Location Information: You can control whether we collect location information through your device settings.

                4. Cookies and Similar Technologies: You can manage your preferences for cookies and similar technologies through your browser or device settings.
                ''',
                style: TextStyle(fontSize: 16.0),
              ),
              // ... Add more sections as needed

              SizedBox(height: 20.0),
              Text(
                'Security Measures',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '''
                We take reasonable and appropriate measures to protect your information from unauthorized access, disclosure, alteration, and destruction. However, no method of transmission over the internet or electronic storage is completely secure, and we cannot guarantee absolute security.
                ''',
                style: TextStyle(fontSize: 16.0),
              ),
              // ... Add more sections as needed

              SizedBox(height: 20.0),
              Text(
                'Changes to This Privacy Policy',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '''
                We may update this Privacy Policy from time to time to reflect changes in our practices or for other operational, legal, or regulatory reasons. We will notify you of any material changes by posting the updated policy on this page.
                ''',
                style: TextStyle(fontSize: 16.0),
              ),
              // ... Add more sections as needed

              SizedBox(height: 20.0),
              Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '''
                If you have any questions, concerns, or feedback about this Privacy Policy, please contact us at [your contact email].
                ''',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
