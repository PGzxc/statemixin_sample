import 'package:get/get.dart';
import '../bean/User.dart';


class Controller extends GetxController with StateMixin<User> {
  var count = 0.obs;

  //increment() => count++;
  //increment() => ever(count++, (it) => print("$it has been changed"));
  //increment() => once(count++, (_) => print("$_ was changed once"));
  //increment() => debounce(count++, (_) => print("debouce$_"), time: Duration(seconds: 1));
  increment() => interval(count++, (_) => print("interval $_"),
      time: Duration(seconds: 1));

  changeLoading() {
    change(User(name: '1',age: 18), status: RxStatus.loading());
  }

  changeSuccess() {
    change(User(name: 'Success',age: 20), status: RxStatus.success());
  }

  changeEmpty() {
    change(User(name: '4',age: 21), status: RxStatus.empty());
  }

  changeError() {
    change(User(name: '5',age: 22), status: RxStatus.error('error'));
  }
}
