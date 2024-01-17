import 'package:flutter/material.dart';

class ExploreCategoriesWidget extends StatefulWidget {
  const ExploreCategoriesWidget({super.key});

  @override
  State<ExploreCategoriesWidget> createState() =>
      _ExploreCategoriesWidgetState();
}

class _ExploreCategoriesWidgetState extends State<ExploreCategoriesWidget> {
  final List<Map<String, dynamic>> exploreCategoriesList = [
    {
      "category": "Indian Polity",
      "numberOfVideos": "69",
      "instructor": "instructor"
    },
    {
      "category": "Indian Economics",
      "numberOfVideos": "69",
      "instructor": "instructor"
    },
    {
      "category": "Indian Geography",
      "numberOfVideos": "69",
      "instructor": "instructor"
    },
    {
      "category": "Indian History",
      "numberOfVideos": "69",
      "instructor": "instructor"
    },
    {
      "category": "Indian XYZ2",
      "numberOfVideos": "69",
      "instructor": "instructor"
    },
    {
      "category": "Indian XYZ",
      "numberOfVideos": "69",
      "instructor": "instructor"
    },
    {
      "category": "Indian NCERT",
      "numberOfVideos": "69",
      "instructor": "instructor"
    },
    {
      "category": "Indian XYZ3",
      "numberOfVideos": "69",
      "instructor": "instructor"
    },
    {
      "category": "Indian NCERT2",
      "numberOfVideos": "69",
      "instructor": "instructor"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Explore Categories",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              TextButton(
                onPressed: () {
                  
                },
                child: const Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: exploreCategoriesList.length < 4
                  ? exploreCategoriesList.length
                  : 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
              ),
              itemBuilder: (cc, index) {
                return GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 4,
                            spreadRadius: .05,
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                'https://images.studyiq.com/https://www.studyiq.net/Course/1924/M-Laxmikanth-By-Shashank-tyagi_1696922907.jpg',
                                height: 100.0, // Adjust the height as needed
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Text(
                              exploreCategoriesList[index]['category']
                                  .toString(),
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Text(exploreCategoriesList[index]
                                    ['numberOfVideos']
                                .toString()),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
