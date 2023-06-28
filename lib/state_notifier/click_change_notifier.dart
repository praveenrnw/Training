import 'package:state_notifier/state_notifier.dart';

class ClickStateNotifier extends StateNotifier<int> {
  ClickStateNotifier(int initial) : super(initial);

  void increment() => state++;
  void decrement() => state--;
}
