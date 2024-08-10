import 'dart:math';

main() {
  // 上下文.
  Context context = new Context();
  StartState startState = new StartState();

  StopState stopState = new StopState();
  startState.doActive(context);
  print(context.getState().toString());
  stopState.doActive(context);
  print(context.getState().toString());
}

abstract class State {
  void doActive(Context context);
}

// Context类.
class Context {
  State? _state;

  Context() {
    _state = null;
  }

  void setState(State state) {
    _state = state;
  }

  State? getState() {
    return _state;
  }
}

class StartState implements State {
  // 状态本身可以切换其他状态.
  @override
  void doActive(Context context) {
    print('Player is in start state');
    context.setState(this);
  }

  String toString() {
    return 'Start State';
  }
}

class StopState implements State {
  @override
  void doActive(Context context) {
    print('Player is in ');
    context.setState(this);
  }

  String toString() {
    return 'Stop State';
  }
}
