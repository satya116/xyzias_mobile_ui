import 'package:flutter/material.dart';

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  final _formKey = GlobalKey<FormState>();
  // String _name = '';
  // String _email = '';
  // String _feedbackCategory = '';
  // String _comments = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Feedback Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  // _name = value!;
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Phone'),
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter your email';
                //   } else if (!RegExp(
                //           r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$')
                //       .hasMatch(value)) {
                //     return 'Please enter a valid email address';
                //   }
                //   return null;
                // },
                onSaved: (value) {
                  // _email = value!;
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else if (!RegExp(
                          r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$')
                      .hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                onSaved: (value) {
                  // _email = value!;
                },
              ),
              const SizedBox(height: 10.0),
              // DropdownButton(items: [DropdownMenuItem(child: const Text("bngn"),)], onChanged: () {})
              // DropdownButtonFormField<String>(
              //   decoration: const InputDecoration(labelText: 'Feedback Category'),
              //   value: _feedbackCategory,
              //   items:
              //       ['General', 'Course Content', 'Technical Issues', 'Other']
              //           .map((category) => DropdownMenuItem<String>(
              //                 value: category,
              //                 child: Text(category),
              //               ))
              //           .toList(),
              //   onChanged: (value) {
              //     setState(() {
              //       _feedbackCategory = value!;
              //     });
              //   },
              // validator: (value) {
              //   if (value == null || value.isEmpty) {
              //     return 'Please select a feedback category';
              //   }
              //   return null;
              // },
              // ),
              const SizedBox(height: 10.0),
              TextFormField(
                maxLines: 3,
                decoration: const InputDecoration(labelText: 'Comments'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please provide your comments';
                  }
                  return null;
                },
                onSaved: (value) {
                  // _comments = value!;
                },
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Feedback Submitted'),
                          content: const Text('Thank you for your feedback!'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 252, 76, 61),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                child: const Text('Submit Feedback',
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
