import 'package:app/model/flowercart.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  List<Project> Myproduct = [];

  // إضافة منتج إلى السلة مع التأكد من عدم إضافة منتج مكرر
  void add(Project item) {
    if (!Myproduct.contains(item)) {
      Myproduct.add(item);
      update(); // تحديث الواجهة تلقائيًا
    }
  }

  // إرجاع عدد المنتجات في السلة
  int get count {
    return Myproduct.length;
  }

  // إرجاع قائمة المنتجات الموجودة في السلة
  List<Project> get getProduct {
    return Myproduct;
  }

  // حساب السعر الإجمالي
  double get totalPrice {
    return Myproduct.fold(0, (sum, item) => sum + double.parse(item.price!.replaceAll('\$', '')));
  }
}


