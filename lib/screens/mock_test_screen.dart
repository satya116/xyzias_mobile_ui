// import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:saffron_ias_flutter_mobile/widgets/options_widget.dart';
// import 'package:stop_watch_timer/stop_watch_timer.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

enum SingingCharacter { lafayette, jefferson }

class _TestScreenState extends State<TestScreen> {
  List<Map<String, dynamic>> questions = [
    {
      // replace question with plain_question
      // replace options with plain_options
      "question": "What is the name of the",
      "options": ["Yuan", "Yen", "Won", "Ringgit"],
      "plain_question": "Consider the following statements",
      "plain_options": ["Yuan", "Yen", "Won", "Ringgit"],

      "isPlainQuestion": false,
      "initial_question": "Consider the following statements",
      "body_of_question": "",
      "final_question": "How many of the statements· given above are correct?",

      "map_statements_headings": ["Port", "Well known as"],
      "map_statements": [
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        },
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        },
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        }
      ],
      "serial_statements": [
        "Jhelum River passes through Wular Lake.",
        "Krishna River directly feeds Kolleru Lake.",
        "Meandering of Gandak River formed Kanwar Lake."
      ],
      "diagram": "",
      "options2": [
        {"optionOne": "Only one", "isCorrectAnswer": true},
        {"optionTwo": "Only two", "isCorrectAnswer": false},
        {
          "optionThree": "All three                    ",
          "isCorrectAnswer": false
        },
        {"optionFour": "None", "isCorrectAnswer": false}
      ]
    },
    {
      "question": "What is the name of the",
      "options": ["Yuan", "Yen", "Won", "RinggitSSSS"],
      "plain_question": "Consider the following statements",
      "isPlainQuestion": false,
      "initial_question": "Consider the following statements",
      "map_statements_headings": ["Port", "Well known as"],
      "map_statements": [
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        },
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        },
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        }
      ],
      "serial_statements": [
        "Jhelum River passes through Wular Lake.",
        "Krishna River directly feeds Kolleru Lake.",
        "Meandering of Gandak River formed Kanwar Lake."
      ],
      "final_question": "How many of the statements· given above are correct?",
      "diagram": "",
      "options2": [
        {"optionOne": "Only one", "isCorrectAnswer": true},
        {"optionTwo": "Only two", "isCorrectAnswer": false},
        {
          "optionThree": "All three                    ",
          "isCorrectAnswer": false
        },
        {"optionFour": "None", "isCorrectAnswer": false}
      ]
    },
    {
      "question": "What is the name of the",
      "options": ["Yuan", "Yen", "Won", "Ringgit"],
      "plain_question": "Consider the following statements",
      "isPlainQuestion": false,
      "initial_question": "Consider the following statements",
      "map_statements_headings": ["Port", "Well known as"],
      "map_statements": [
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        },
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        },
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        }
      ],
      "serial_statements": [
        "Jhelum River passes through Wular Lake.",
        "Krishna River directly feeds Kolleru Lake.",
        "Meandering of Gandak River formed Kanwar Lake."
      ],
      "final_question": "How many of the statements· given above are correct?",
      "diagram": "",
      "options2": [
        {"optionOne": "Only one", "isCorrectAnswer": true},
        {"optionTwo": "Only two", "isCorrectAnswer": false},
        {
          "optionThree": "All three                    ",
          "isCorrectAnswer": false
        },
        {"optionFour": "None", "isCorrectAnswer": false}
      ]
    },
    {
      "question": "What is the name of the",
      "options": ["Yuan", "Yen", "Won", "Ringgit"],
      "plain_question": "Consider the following statements",
      "isPlainQuestion": false,
      "initial_question": "Consider the following statements",
      "map_statements_headings": ["Port", "Well known as"],
      "map_statements": [
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        },
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        },
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        }
      ],
      "serial_statements": [
        "Jhelum River passes through Wular Lake.",
        "Krishna River directly feeds Kolleru Lake.",
        "Meandering of Gandak River formed Kanwar Lake."
      ],
      "final_question": "How many of the statements· given above are correct?",
      "diagram": "",
      "options2": [
        {"optionOne": "Only one", "isCorrectAnswer": true},
        {"optionTwo": "Only two", "isCorrectAnswer": false},
        {
          "optionThree": "All three                    ",
          "isCorrectAnswer": false
        },
        {"optionFour": "None", "isCorrectAnswer": false}
      ]
    },
    {
      "question": "What is the name of the",
      "options": ["Yuan", "Yen", "Won", "Ringgit"],
      "plain_question": "Consider the following statements",
      "isPlainQuestion": false,
      "initial_question": "Consider the following statements",
      "map_statements_headings": ["Port", "Well known as"],
      "map_statements": [
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        },
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        },
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        }
      ],
      "serial_statements": [
        "Jhelum River passes through Wular Lake.",
        "Krishna River directly feeds Kolleru Lake.",
        "Meandering of Gandak River formed Kanwar Lake."
      ],
      "final_question": "How many of the statements· given above are correct?",
      "diagram": "",
      "options2": [
        {"optionOne": "Only one", "isCorrectAnswer": true},
        {"optionTwo": "Only two", "isCorrectAnswer": false},
        {
          "optionThree": "All three                    ",
          "isCorrectAnswer": false
        },
        {"optionFour": "None", "isCorrectAnswer": false}
      ]
    },
    {
      "question": "What is the name of the",
      "options": ["Yuan", "Yen", "Won", "Ringgit"],
      "plain_question": "Consider the following statements",
      "isPlainQuestion": false,
      "initial_question": "Consider the following statements",
      "map_statements_headings": ["Port", "Well known as"],
      "map_statements": [
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        },
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        },
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        }
      ],
      "serial_statements": [
        "Jhelum River passes through Wular Lake.",
        "Krishna River directly feeds Kolleru Lake.",
        "Meandering of Gandak River formed Kanwar Lake."
      ],
      "final_question": "How many of the statements· given above are correct?",
      "diagram": "",
      "options2": [
        {"optionOne": "Only one", "isCorrectAnswer": true},
        {"optionTwo": "Only two", "isCorrectAnswer": false},
        {
          "optionThree": "All three                    ",
          "isCorrectAnswer": false
        },
        {"optionFour": "None", "isCorrectAnswer": false}
      ]
    },
    {
      "question": "What is the name of the",
      "options": ["Yuan", "Yen", "Won", "Ringgit"],
      "plain_question": "Consider the following statements",
      "isPlainQuestion": false,
      "initial_question": "Consider the following statements",
      "map_statements_headings": ["Port", "Well known as"],
      "map_statements": [
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        },
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        },
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        }
      ],
      "serial_statements": [
        "Jhelum River passes through Wular Lake.",
        "Krishna River directly feeds Kolleru Lake.",
        "Meandering of Gandak River formed Kanwar Lake."
      ],
      "final_question": "How many of the statements· given above are correct?",
      "diagram": "",
      "options2": [
        {"optionOne": "Only one", "isCorrectAnswer": true},
        {"optionTwo": "Only two", "isCorrectAnswer": false},
        {
          "optionThree": "All three                    ",
          "isCorrectAnswer": false
        },
        {"optionFour": "None", "isCorrectAnswer": false}
      ]
    },
    {
      "question": "What is the name of the",
      "options": ["Yuan", "Yen", "Won", "Ringgit"],
      "plain_question": "Consider the following statements",
      "isPlainQuestion": false,
      "initial_question": "Consider the following statements",
      "map_statements_headings": ["Port", "Well known as"],
      "map_statements": [
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        },
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        },
        {
          "left": "hvhvh",
          "right": "First major port in India registered as a company ·"
        }
      ],
      "serial_statements": [
        "Jhelum River passes through Wular Lake.",
        "Krishna River directly feeds Kolleru Lake.",
        "Meandering of Gandak River formed Kanwar Lake."
      ],
      "final_question": "How many of the statements· given above are correct?",
      "diagram": "",
      "options2": [
        {"optionOne": "Only one", "isCorrectAnswer": true},
        {"optionTwo": "Only two", "isCorrectAnswer": false},
        {
          "optionThree": "All three                    ",
          "isCorrectAnswer": false
        },
        {"optionFour": "None", "isCorrectAnswer": false}
      ]
    }
  ];

  int currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    // int? timeCounter = 200000;
    // late Timer timer;
    int seconds = 0;
    int? ansSelected = 0;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: const Color.fromARGB(127, 255, 193, 7),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("UPSCE PRELIMS: $seconds"),
                          const Text("TIME LEFT"),
                          const Icon(Icons.access_alarm)
                        ]),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    questions[currentQuestionIndex]['question'],
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      // growable: true,
                      questions[currentQuestionIndex]['options'].length,
                      (index) {
                        if (kDebugMode) {
                          // print(index);
                          // currentQuestionIndexxx = index;
                        }
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: [
                              OptionsWidget(
                                optionIndex: index,
                                optionSelected: ansSelected,
                              ),
                              Text(
                                (index + 1).toString(),
                                style: const TextStyle(fontSize: 22),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Text(
                                questions[currentQuestionIndex]['options']
                                    [index],
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(0.0),
                width: double.infinity,
                child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    direction: Axis.horizontal,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            // CountUpTimerPage
                          },
                          child: const Expanded(child: Text("CLEAR RESPONSE"))),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              // show a alert box.
                              if (currentQuestionIndex + 1 ==
                                  questions.length) {
                                Navigator.pushNamed(
                                    context, "/test_result_screen", arguments: {
                                  "exam_name": "satya",
                                  "result": "Pass"
                                });
                              } else {
                                currentQuestionIndex++;
                              }
                            });

                            // checkAnswer(index);
                          },
                          child: const Expanded(child: Text("SKIP"))),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              // if last question then show a modal to submit the test.
                              if (currentQuestionIndex + 1 ==
                                  questions.length) {
                                Navigator.pushNamed(
                                    context, "/test_result_screen", arguments: {
                                  "exam_name": "satya",
                                  "result": "Pass"
                                });
                              } else {
                                currentQuestionIndex++;
                              }
                            });
                          },
                          child: const Expanded(child: Text("SAVE & NEXT"))),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  void checkAnswer(int selectedOptionIndex) {
    // String correctAnswer = questions[currentQuestionIndex]['correctAnswer'];

    // String selectedAnswer =
    //     questions[currentQuestionIndex]['options'][selectedOptionIndex];

    // bool isCorrect = selectedAnswer == correctAnswer;

    // You can add your scoring logic here

    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        // All questions are answered, you can navigate to the result screen or reset the quiz
        // For simplicity, let's reset the quiz here

        Navigator.pushNamed(context, "/test_result_screen");

        // currentQuestionIndex = 0;
      }
    });
  }
}
