import 'package:flutter/material.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  final controller = ScrollController();

  final List<Map<String, String>> books = [
    {
      "name": "How to Finish Everything You Start",
      "price": "₹265.50",
      "image": "images/every.jpg",
    },
    {
      "name": "The Psychology of Money",
      "price": "₹265.50",
      "image": "images/phycology.jpg",
    },
    {
      "name": "The Power of Mind",
      "price": "₹399.00",
      "image": "images/the_mind.jpg",
    },
    {
      "name": "Thus Spoke Zarathustra",
      "price": "₹246.97",
      "image": "images/zara.jpg",
    },
    {
      "name": "You Become What You Think",
      "price": "₹265.50",
      "image": "images/think.jpg",
    },
    {"name": "Can't Hurt Me", "price": "₹399.00", "image": "images/hurt.jpg"},
  ];

  void scrollForward() {
    if (controller.hasClients) {
      controller.animateTo(
        (controller.offset + 400).clamp(
          0.0,
          controller.position.maxScrollExtent,
        ),
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text(
                      "Find books for building success",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 32, 31, 31),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: scrollForward,
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 410,
                child: ListView.builder(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: books.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 180,
                      margin: const EdgeInsets.only(right: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Image.asset(
                              books[index]["image"]!,
                              width: 180,
                              height: 280,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: 180,
                                  height: 280,
                                  color: Colors.grey.shade800,
                                  child: const Icon(
                                    Icons.menu_book,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            books[index]["name"]!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 13,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 32, 31, 31),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              books[index]["price"]!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                //fontWeight: FontWeight.w100,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
