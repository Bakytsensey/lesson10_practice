import 'dart:io';

void main() {
  //1) Создайте и заполните массив. Выведите первый и последний элемент
  //  списка.
  //List array = [1, 2, 3, 4, 5];
  //print(task1(array));

  //2) Дано трехзначное число. Найдите произведение их цифр.
  //print (task2 ());

  //3) Дано трехзначное число. Замените среднюю цифру на ноль.
  //print(task3());

  //4) Дан номер дня недели. Выведите название дня недели. Решение через if и
  //print(task4());

  //5) Вывести на экран 8 раз фразу "Loading...". Используйте цикл for
  //print(task5());

  //6)Даны три числа. Если сумма двух из них равна третьему, то выведите
  //такое равенство, если нет, то выведите произведение всех чисел.
  //print(task6());

  //7) Анкета. С помощью stdin sdout реализуйте программу, которая
  //запрашивает у пользователя имя, возраст, адрес, хобби.
  //В конечном итоге вывести на экран информацию о пользователе:
  //Вас зовут: XXX
  //Ваш возраст: XXX
  //Ваш адрес: XXX
  //Ваше хобби: XXX
  //print(task7());

  //8) Поставить проверку к предыдущему заданию.
  //Создайте переменные myName myAge и.т.д
  //Если ваши имена совпали - вывести на экран «У нас одинаковое имя»
  //Если ваш возраст совпал - вывести на экран «Мы ровесники»
  //Если ваш адрес совпал - вывести на экран «Мы соседи»
  //Если ваше хобби совпало - вывести на экран «У нас одинаковое хобби»
  //Если совпали все поля - вывести на экран «Давай дружить»

  //9) В диапазоне чисел от 1 до 100 найти среднее арифметическое чисел.
  // print(task9());

  //10) При заданном целом числе n посчитайте n + nn + nnn.
  print(task10());
  //11) Дан возраст. Если возраст до 7, вывести "Вам в садик". Если возраст с 7
  //до 18, вывести "Вам в школу". Если возраст с 19 до 23, вывести "Вам в
  //универ".Если возраст с 23 до 60, вывести "Вам на работу". Если возраст с 60
  //до 100, вывести "Вы пенсионер". В противном случае вывести
  //"Неправильный возраст".
  //print(task11());
}

task1(List array) {
  print(
      'первое число = ${array.first}, последнее число ранвно = ${array.last}');
  print('\n');
}

task2() {
  print('TASK2');

  stdout.write("Введите трехзначное число: ");
  String input = stdin.readLineSync()!;

  if (input.length != 3 || int.tryParse(input) == null) {
    print("Ошибка: Введите трехзначное число.");
    return;
  }

  int number = int.parse(input);
  int product = (number ~/ 100) * ((number ~/ 10) % 10) * (number % 10);
  print("Произведение цифр числа: $product");
}

task3() {
  stdout.write("Введите трехзначное число: ");
  String input = stdin.readLineSync()!;

  if (input.length != 3 || int.tryParse(input) == null) {
    print("Ошибка: Введите трехзначное число.");
    return;
  }

  int task3 = int.parse(input);
  int a1 = task3 ~/ 100;
  int a2 = (task3 ~/ 10) % 10;
  int a3 = task3 % 10;
  int newNumber = a1 * 100 + a3;
  print("Число после замены средней цифры на ноль: $newNumber");

  print('\n');
}

task4() {
  print('решение через if else');
  print(
    '*' * 15,
  );
  stdout.write('Введите номер дня недели от 1 до 7; ');
  String daily1 = stdin.readLineSync()!;
  if (int.tryParse(daily1) == null) {
    print("Ошибка: Введите число от 1 до 7.");
    return;
  }
  int daily = int.parse(daily1);
  if (daily == 1) {
    print('Monday');
  } else if (daily == 2) {
    print('Tuesday');
  } else if (daily == 3) {
    print('Wednesday');
  } else if (daily == 4) {
    print('Thursday');
  } else if (daily == 5) {
    print('Friday');
  } else if (daily == 6) {
    print('Saturday');
  } else if (daily == 7) {
    print('Sunday');
  } else {
    print('Eror');
  }

  print(
    '*' * 15,
  );
  print('решение через switch case');
  // Решение через switch case

  switch (daily) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print("Eror");
  }

  print(
    '*' * 15,
  );
}

task11() {
  print('решение через if else');
  print(
    '*' * 15,
  );
  stdout.write('Введите ваш возраст: ');
  String age1 = stdin.readLineSync()!;
  int.tryParse(age1) == null;
  int age = int.parse(age1);

  if (age == 1 && age <= 7) {
    print('Вам в садик');
  } else if (age >= 8 && age <= 18) {
    print('Вам в школу');
  } else if (age >= 19 && age <= 23) {
    print('Вам в универ');
  } else if (age >= 23 && age <= 60) {
    print('Вам на работу:(');
  } else if (age >= 60 && age <= 100) {
    print('Вы пенсионер');
  } else {
    print('Неправильный возраст');
  }
}

task5() {
  for (int i = 1; i == 7; i++) {
    print('Loading...');
  }
}

task6() {
  stdout.write("Введите первое число: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write('введите второе число: ');
  int b = int.parse(stdin.readLineSync()!);

  stdout.write('введите третье число: ');
  int c = int.parse(stdin.readLineSync()!);

  int result;

  if (a + b == c || a + c == b || b + c == a) {
    print("Сумма двух чисел равна третьему = $c");
  } else {
    int result = a * b * c;
    print("Произведение всех чисел: $result");
  }
}

task7() {
  stdout.write('Вас зовут? :');
  String name = stdin.readLineSync()!;
  stdout.write('Ваш возраст? :');
  int age = int.parse(stdin.readLineSync()!);
  stdout.write('Ваш адресс? :');
  String adress = stdin.readLineSync()!;
  stdout.write('Ваше хобби? :');
  String hobby = stdin.readLineSync()!;
  print('*' * 10);
  print('меня зовут : $name');
  print('мне : $age года');
  print('мой адресс : $adress');
  print('мое хобби  : $hobby');

  stdout.write('Вас зовут? :');
  String name2 = stdin.readLineSync()!;
  stdout.write('Ваш возраст? :');
  int age2 = int.parse(stdin.readLineSync()!);
  stdout.write('Ваш адресс? :');
  String adress2 = stdin.readLineSync()!;
  stdout.write('Ваше хобби? :');
  String hobby2 = stdin.readLineSync()!;
  print('*' * 10);
  if (name == name2) {
    print('«У нас одинаковое имя');
  }
  if (age == age2) {
    print('Мы ровесники');
  }
  if (adress == adress2) {
    print('Мы соседи');
  }
  if (hobby == hobby2) {
    print('У нас одинаковое хобби');
  }
  if (name == name2 && age == age2 && adress == adress2 && hobby == hobby2) {
    print('Давай дружить');
  } else {
    ('Приятно познакомится');
  }
}

task9() {
  int a = 0;
  for (int i = 1; i <= 100; i++) {
    a += 1;
  }
  int b = a ~/ 100;
  print('Результат $b');
}

task10() {
  stdout.write('Введите любую цифру: ');
  String a = stdin.readLineSync()!;
  String aa = a + a;
  String aaa = a + a + a;
  int a1 = int.parse(a);
  int aa1 = int.parse(aa);
  int aaa1 = int.parse(aaa);
  int result = a1 + aa1 + aaa1;
  print("Результат выражения a + aa + aaa при a = $a: $result");
}
