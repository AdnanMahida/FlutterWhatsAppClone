import 'package:get_storage/get_storage.dart';

class MyPref {
  static final _otherBox = () => GetStorage('MyPref');

  final username = ''.val('username');
  final age = 0.val('age');
  final price = 1000.val('price', getBox: _otherBox);

  // or
  final username2 = ReadWriteValue('username', '');
  final age2 = ReadWriteValue('age', 0);
  final price2 = ReadWriteValue('price', '', _otherBox);
}

void updateAge() {
  final age = 0.val('age');
  // or
  // final age = ReadWriteValue('age', 0, () => box);
  // or
  // final age = Get.find<MyPref>().age;

  age.val = 1; // will save to box
  final realAge = age.val; // will read from box
}
