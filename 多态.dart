main() {
  Dog d = new Dog();
  d.eat();
  d.run();

  Cat c = new Cat();
  c.eat();
  c.run();
}

abstract class Animal {
  eat(); // 抽象方法.
}

class Dog extends Animal {
  @override
  eat() {
    print('小狗吃骨头');
  }

  run() {
    print('run');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('小猫吃老鼠');
  }

  run() {
    print('run');
  }
}
