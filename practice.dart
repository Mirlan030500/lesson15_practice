import 'dart:io';
import 'dart:math';

void main() {
//task1();
//task2();
//task3();
  task4();
}

void task1() {
  int a = Random().nextInt(11);
  int b = Random().nextInt(11);
  int c = a + b;

  stdout.write('Введите число: ');
  int numb = int.parse(stdin.readLineSync()!);

  if (numb == c) {
    print('Правильно!');
  } else {
    task1();
  }
}

void task2() {
  int max = 6;
  int min = 1;
  int a = Random().nextInt(max - min + 1) + min;

  print(a);
  stdout.write(
      'Введите число: 1 - чтобы продолжить поиск или 2 - чтобы остановить поиск : ');
  int numb = int.parse(stdin.readLineSync()!);

  if (numb == 1) {
    task2();
  } else if (numb == 2) {
    print('wasted');
  } else {
    print('Ошибка');
  }
}

void task3() {
  stdout.write('Введите число: ');
  int a = int.parse(stdin.readLineSync()!);

  stdout.write('Введите степень: ');
  int b = int.parse(stdin.readLineSync()!);

  print('Результат возведения числа $a в степень $b = ${pow(a, b)}');
}

void task4() {
  int n = 3456;
  int sum = 0;
  String n1 = n.toString();
  
  for (int i = 0; i < n1.length; i++) {
    if (i >= 0) {
       sum += int.parse(n1[i]);
    } else {
      print('oshibka');
    }
  }
  print(sum);
}
