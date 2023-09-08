
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
  Car(super.wheelCount);//can't be const, becz speed is a non-final variable

  int _speed =0;

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
}