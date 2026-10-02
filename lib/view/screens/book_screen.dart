import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tecnova2_4/controller/book_controller.dart';

class BookScreen extends GetView<BookController> {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BookController controller = Get.put(BookController());
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            "Book Catalog",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            height: 1,
            width: .infinity,
            margin: EdgeInsets.only(left: 25, right: 25),
          ),
          SizedBox(height: 0),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.75,
              ),
              itemCount: controller.imagelist.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),

                  height: 190,
                  width: 150,

                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 167, 121, 177),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.only(left: 10, top: 10),
                        alignment: Alignment.center,

                        height: 180,
                        width: 160,
                        child: Image.asset(
                          controller.imagelist[index],
                          height: 150,
                          width: 185,
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          controller.bookList[index],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          controller.name[index],
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          controller.price[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
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
    );
  }
}
