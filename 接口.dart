main() {
  MySql mySql = new MySql('xxxxx');
  mySql.add('123213');

  C c = new C('wss');
  c.printA();
}

abstract class Db {
  // 当做接口 接口:就是约定,规范.
  late String uri; // 数据库的链接地址.
  add(String data);

  save();

  delete();
}

class MySql implements Db {
  @override
  String uri;

  MySql(this.uri);

  @override
  add(String data) {
    print('这是mysql的add方法' + data);
  }

  @override
  delete() {
    // TODO: implement delete
    return null;
  }

  @override
  save() {
    // TODO: implement save
  }

  remove() {}
}

/**
 * Dart 中一个类实现多个接口.
 */
abstract class A {
  late String name;

  printA();
}

abstract class B {
  printB();
}

class C implements A, B {
  @override
  String name;

  C(this.name);

  @override
  printA() {
    print('printA');
  }

  @override
  printB() {
    print('printB');
  }
}
