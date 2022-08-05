main() {
  Web w = new Web();
  print(w.name);
  w.printInfo();

  Web1 w1 = new Web1("隔壁老王", 39, '男');
  print(w1.name);
  w1.printInfo();
  w1.run();

  Web2 w2 = new Web2("隔壁老李", 50, '女');
  print(w2.name);
  w2.run();

  Web3 w3 = new Web3("隔壁老张", 20);
  w3.printInfo();
  w3.work();

  Web4 w4 = new Web4("隔壁王刚", 90);
  w4.work();
  w4.printInfo();
}

// 普通继承.
class Person {
  String name = "张三";
  num age = 20;

  void printInfo() {
    print("${this.name}-----${this.age}");
  }
}

class Web extends Person {}

// super 关键字继承.
class Person1 {
  late String name;
  late num age;

  Person1(this.name, this.age);

  void printInfo() {
    print('${this.name}---${this.age}');
  }
}

class Web1 extends Person1 {
  late String sex;

  Web1(String name, num age, String sex) : super(name, age) {
    this.sex = sex;
  }

  run() {
    print("${this.name}---${this.age}---${this.sex}");
  }
}

// super 关键字继承(命名构造函数)
class Person2 {
  String name;
  num age;

  Person2(this.name, this.age);

  Person2.xxx(this.name, this.age);
}

class Web2 extends Person2 {
  late String sex;

  Web2(String name, num age, String sex) : super(name, age) {
    this.sex = sex;
  }

  run() {
    print("${name}---${age}---${sex}");
  }
}

// 继承覆盖.
class Person3 {
  String name;
  num age;

  Person3(this.name, this.age);

  void printInfo() {
    print("${name}---${age}");
  }

  work() {
    print("${name}在工作");
  }
}

class Web3 extends Person3 {
  Web3(String name, num age) : super(name, age);

  run() {
    print('run');
  }

// dart子类覆写父类方法.
  @override
  void printInfo() {
    print("姓名:${this.name}---年龄:${this.age}");
  }

  @override
  void work() {
    print("${this.name}的工作是写代码");
  }
}

class Person4 {
  String name;
  num age;

  Person4(this.name, this.age);

  void printInfo() {
    print("${this.name}---${this.age}");
  }

  work() {
    print("${this.name}在工作...");
  }
}

class Web4 extends Person4 {
  Web4(String name, num age) : super(name, age);

  run() {
    print('run');
    super.work();
  }

  @override
  void printInfo() {
    print('姓名:${this.name}---年龄:${this.age}');
  }
}
