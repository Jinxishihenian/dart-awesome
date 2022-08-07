main() {
  getDataDemo<String>("你好");

  MyList myList1 = new MyList();
  myList1.add("张三");
  myList1.add(12);
  print(myList1.getList());

  MyList myList2 = new MyList<String>();
  myList2.add("张三1");
  print(myList2.getList());

  MyList myList3 = new MyList<int>();
  myList3.add(1);
  // myList3.add("bb");
  print(myList3.getList());

  FileCache fileCache = new FileCache();
  fileCache.setByKey("wss", "我存储的值");

  MemoryCache memoryCache = new MemoryCache<int>();
  memoryCache.setByKey("wym", 200);
}

String getData(String value) {
  return value;
}

// 泛型方法.
T getDataDemo<T>(T value) {
  return value;
}

// 泛型类.
class MyList<T> {
  List list = <T>[];

  void add<T>(T value) {
    this.list.add(value);
  }

  List getList() {
    return list;
  }
}

// 泛型接口.
abstract class Cache<T> {
  getByKey(String key);

  void setByKey(String key, T value);
}

class FileCache implements Cache<String> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, String value) {
    print("我是文件缓存 把key=${key} value=${value} 的数据写入到了文件中");
  }
}

class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print("我是文件缓存 把key=${key} value=${value} 的数据写入到了文件中");
  }
}
