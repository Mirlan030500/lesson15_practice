import 'dart:io';

void main(){
  //task1
BaseConverter baseConverter = BaseConverter(25);
baseConverter.convert();

Converter converter = Convert();
converter.convert(45);

//task2
Tiles boss = Tiles('Boss', 55, 55, 5555);
Tiles armani_exchange = Tiles('Armani Exchange', 77, 77, 7777);
Tiles polo = Tiles('Polo', 11, 11, 1111);
print('task2');
boss.getData();
armani_exchange.getData();
polo.getData();

//task3
Children children = Children('Джеймс', 'Бонд', 7);
print('task3');
children.showInfo();

//task4
Soda soda = Soda('');
print('task4');
soda.show_my_drink();

//task5
Worker worker = Worker('Джеймс', 'Бонд', 1000, 26);
print('task5');
worker.getSalary();

//task6
Driver driver = Driver('Джеймс Бонд Бондович', 7);
Engine engine = Engine(150, 'Toyota');
Car car = Car('Toyota Camry', 'Седан', 1500, driver, engine);
Lorry lorry = Lorry('Камаз', 'Грузовик', 9, driver, engine, 7);
SportCar sportCar = SportCar('Mclaren', 'Спортивная машина', 1, driver, engine, 322);
print('task6');
car.printCarSetting();
car.start();
car.stop();
car.turnRight();
car.turnLeft();
lorry.printCarSetting();
print('*' * 50);

//task7
stdout.write('Введите ширину тоннеля: ');
double tunnelWidth = double.parse(stdin.readLineSync()!);

stdout.write('Введите высоту тоннеля: ');
double tunnelHeight = double.parse(stdin.readLineSync()!);

stdout.write('Введите длинну поезда: ');
double trainLength = double.parse(stdin.readLineSync()!);

stdout.write('Введите ширину поезда: ');
double trainWidth = double.parse(stdin.readLineSync()!);

stdout.write('Введите высоту поезда: ');
double trainHeight = double.parse(stdin.readLineSync()!);

if(tunnelHeight >= trainHeight && tunnelWidth >= trainWidth){
  print('Поезд пройдет в туннель!');
} else{
  print('Поезд не пройдет в туннель!');
}
}

//task1
class BaseConverter{
  num celsius;

  BaseConverter(this.celsius);

  void convert(){
   print('task1');
   print('Конвертация $celsius градусов по Цельсию в Кельвины: ${celsius + 273.15}');
   print('Конвертация $celsius градусов по Цельсию в Фаренгейты: ${(celsius * 9 / 5) + 32}');
   print('*' * 50);
  }
}

abstract class Converter{
  void convert(num celsius);
  
}

class Convert implements Converter{
  
  @override
  void convert(num celsius) {
    print('Конвертация $celsius градусов по Цельсию в Кельвины: ${celsius + 273.15}');
    print('Конвертация $celsius градусов по Цельсию в Фаренгейты: ${(celsius * 9 / 5) + 32}');
    print('*' * 50);
  }
}

//task2

class Tiles{
  String? brand;
  num? size_h;
  num? size_w;
  int? price;

  Tiles(this.brand, this.size_h, this.size_w, this.price);

  void getData(){
   print('Бренд: <<$brand>>, размер высоты: $size_h см, размер ширины: $size_w см, цена: $price сом');
   print('*' * 50);
  }
}

//task3
class Children{
  String _lastName;
  String _firstName;
  int _age;

  Children(this._firstName, this._lastName, this._age);

  void showInfo(){
    print('ФИО ребенка: $_firstName $_lastName');
    print('Возраст: $_age');
    print('*' * 50);
  }
}

//task4

class Soda{
  String additive;

  Soda(this.additive);

  void show_my_drink(){
   additive != null && additive.isNotEmpty ? print('газировка и $additive') : print('обычная газировка');
  print('*' * 50);
  }
}

//task5

class Worker{
  String name;
  String surname;
  num rate;
  int days;

  Worker(this.name,this.surname,this.rate,this.days,);

  void getSalary(){
    print('Зарплата работника состовляет: ${rate * days}');
    print('*' * 50);
  }
}

//task6

class Car{
  String? model;
  String? carClass;
  num? weight;
  Driver? driver;
  Engine? engine;

  Car(this.model, this.carClass, this.weight,this.driver,this.engine,);

  void start(){
  print('Поехали');
}

void stop(){
  print('Останавливаемся');
}

void turnRight(){
  print('Поворот направо');
}

void turnLeft(){
  print('Поворот налево');
}

void printCarSetting(){
  print('Марка автомобиля: $model');
  print('Класс автомобиля: $carClass');
  print('Вес: $weight');
  print('Мотор: Мощность - ${engine?.power}, Производитель - ${engine?.manufacturer}');
  print('Водитель: ${driver?.fio}, Стаж вождения: ${driver?.drivingExperience} лет');
}
}

class Engine {
  int? power;
  String? manufacturer;

  Engine(this.power, this.manufacturer); 
}

class Driver {
  String? fio;
  num? drivingExperience;

  Driver(this.fio,this.drivingExperience) ; 
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Lorry extends Car{
  int? carrying;

  Lorry(super.model, super.carClass, super.weight, super.driver, super.engine, this.carrying,);
}

class SportCar extends Car{
  int maxspeed;

  SportCar(super.model, super.carClass, super.weight, super.driver, super.engine, this.maxspeed,);
}



