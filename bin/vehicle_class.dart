
class Vehicle {
  final int wheelCount;

  const Vehicle(this.wheelCount);

}

class Car extends Vehicle{
  
  //-----------------------------------------------------
  // const Car() :  super(4);
  //-----------------------------------------------------
  // final int noOfWheel;
  // const Car(this.noOfWheel) : super(noOfWheel);
  //-----------------------------------------------------
  // Car(super.wheelCount);//can't be const, becz speed is a non-final variable
  Car(super.wheelCount){
    print("this is constructor");
  }

  int _speed =0;//private variable

  //getter
  int get speedGeter=> _speed + 1;
  //setter
  set setSpeed(int val){
    // _speed = val;
    _speed = val;
  }

  // void drive({required int setSpeed}){
  //   this.setSpeed = setSpeed;
  void drive({required int spd}){
    setSpeed = spd;
    print("Driving speed is $_speed");
  }
  void check(){
    print(super.wheelCount);
    print(runtimeType);
  }
}

// class Motor extends Vehicle{
//   final int noOfWheel;
//   const Motor(this.noOfWheel) : super(noOfWheel);

//   void check(){
//     print(super.wheelCount);
//   }
// }
void main(){

  Car obj1 = Car(4);
  obj1.check();//4
  print("speed is: ${obj1.speedGeter}");
  obj1.setSpeed = 20;
  print("speed is: ${obj1.speedGeter}");
  obj1.drive(spd: 40);
  print("speed is: ${obj1.speedGeter}");
  // Motor obj2 = Motor(5);
  // obj2.check();
  // myFn("dd");
  myFn(val:"dd");
  myFn2("dd2");
  myFn2(null);
  myFn3(val: "dd3");

}

///  2 types of parameter in function:
/// i) Positioned Parameter => void myFun(String val1, String val2) {}
/// ii) Named Parameter => void myFun({String val1, String val2}) {}

//named Parameter
// void myFn(String val){
void myFn({String? val}){

  print("val is $val");
}

//required parameter but not named => Positional Parameter, positional parameter can't have the 
//default value
void myFn2(String? val){

  print("val is $val");
}

//required named parameter
void myFn3({required String val}){

  print("val is $val");
}

void myFn4([String? val]){

  print("val is $val");
}
