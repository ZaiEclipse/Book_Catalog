import 'package:get/get.dart';
import 'package:tecnova2_4/controller/book_controller.dart';                         

class BookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookController>(() => BookController( ));
  }
} 