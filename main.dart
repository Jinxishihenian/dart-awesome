void main(List<String> args) {
  date();
  month();
}

/*
* 昨天
*  */


/*
* 三天内
*  */


/*
* 本周
*  */

void date() {
  var hao = new DateTime.now();
  String begin = "00:00:00";
  String end = "23:59:59";
  print(hao.day);
/*  print(hao.weekday);
  print(hao.add(new Duration(days: -hao.weekday+1)).toString().substring(0,10)+" "+begin);  //周一
  print(hao.add(new Duration(days: (7-hao.weekday))).toString().substring(0,10)+" "+end);  //周末*/
  String weekBegin = hao.add(new Duration(days: -hao.weekday + 1))
      .toString()
      .substring(0, 10) + " " + begin;
  String weekEnd = hao.add(new Duration(days: (7 - hao.weekday)))
      .toString()
      .substring(0, 10) + " " + end;
  int monday = DateTime
      .parse(weekBegin)
      .millisecondsSinceEpoch;
  int sunday = DateTime
      .parse(weekEnd)
      .millisecondsSinceEpoch;
}


/*
*本月
*/
void month() {
  var hao = new DateTime.now();
  String begin = "00:00:00";
  String end = "23:59:59";

  print(hao.add(new Duration(days: -hao.day + 1))); //一号
  //print(hao.add()); // 月末

}

