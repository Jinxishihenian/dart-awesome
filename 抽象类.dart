main() {
  Dog dog = new Dog();
  dog.eat();
  dog.printInfo();

  Cat cat = new Cat();
  cat.eat();
  cat.printInfo();

  Horse horse = new Horse();
  horse.eat();
  horse.printInfo();
}

abstract class Animal {
  // 抽象方法.
  eat();

  // 抽象方法.
  run();

  printInfo() {
    print('我是一个抽象类的普通方法');
  }
}

// 当做抽象类.
class Dog extends Animal {
  @override
  eat() {
    print('小狗吃骨头');
  }

  @override
  run() {
    print('小狗再跑');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('小猫吃老鼠');
  }

  @override
  run() {
    print('小猫在跑');
  }
}

// 当做接口.
class Horse implements Animal {
  @override
  eat() {
    print('小马吃草');
  }

  @override
  printInfo() {
    print('实现接口中的方法');
  }

  @override
  run() {
    print('小马在奔跑');
  }
}
