// 自己实现的策略模式.
// 操作接口.
abstract class Strategy {
  int execute(int a, int b);
}

class Add implements Strategy {
  @override
  int execute(int a, int b) {
    print('add');
    return a + b;
  }
}

class Subtract implements Strategy {
  @override
  int execute(int a, int b) {
    print('subtract');
    return a - b;
  }
}

class Multiply implements Strategy {
  @override
  int execute(int a, int b) {
    print('multiply');
    return a * b;
  }
}

class Context {
  // 策略类型.
  static late Strategy _strategy;

  static setStrategy(Strategy strategy) {
    _strategy = strategy;
  }

  // Context(this._strategy);

  static executeStrategy(int a, int b) {
    // 委派.
    _strategy.execute(a, b);
  }
}

class ExampleApplication {
  String type = 'add';

  active() {
    if (type == 'add') {
      Context.setStrategy(new Add());
    }
    if (type == 'subtract') {
      Context.setStrategy(new Subtract());
    }
    if (type == 'multiply') {
      Context.setStrategy(new Multiply());
    }
    Context.executeStrategy(5, 4);
  }
}

// 菜鸟教程策略模式.
abstract class CStrategy {
  int doOperation(
    int num1,
    int num2,
  );
}

class OperationAdd implements CStrategy {
  @override
  int doOperation(int num1, int num2) {
    return num1 + num2;
  }
}

class OperationSubtract implements CStrategy {
  @override
  int doOperation(int num1, int num2) {
    return num1 - num2;
  }
}

class OperationMultiply implements CStrategy {
  @override
  int doOperation(int num1, int num2) {
    return num1 * num2;
  }
}

class CContext {
  late CStrategy _strategy;

  CContext(this._strategy);

  int doOperator(int num1, int num2) {
    return _strategy.doOperation(num1, num2);
  }
}

main() {
  ExampleApplication exampleApplication = new ExampleApplication();
  exampleApplication.active();

  CContext context = new CContext(new OperationAdd());
  print(" 10 + 5 = ${context.doOperator(10, 5)}");
  context = new CContext(new OperationSubtract());
  print(" 10 - 5 = ${context.doOperator(10, 5)}");
  context = new CContext(new OperationMultiply());
  print(" 10 * 5 = ${context.doOperator(10, 5)}");
}
