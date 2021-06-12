import 'dart:io';

/*task2를 비동기로 3초 뒤에 실행시키므로 task3는 null을 반환
 하지만 task2로 Future하고 함수에 async를 붙여주고 데이터에 await을 붙여주면
 3초 뒤에 task2 값이 나온 이후 task3가 출력됨.
*/

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String tast2Result = await task2();
  task3(tast2Result);
}

void task1() {
  String result = "task1 data";
  print("Task 1 complete!");
}

Future task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  String result;
  await Future.delayed(threeSeconds, () {
    result = "task 2";
    print('Tast 2 complte');
  });

  return result;
}

void task3(String task2Data) {
  String result = "task3 data";
  print("Task 3 complete! with $task2Data");
}
