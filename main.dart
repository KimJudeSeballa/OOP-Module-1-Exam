/*This class is an abstraction because it contains functional codes that are abstracted from the user.
 *The visible features to the users are the buttons found in line 61 to 72 */
class Aircraft {
  go() {
    print('Take Off!');
  }
  
  stop() {
    print('Landing...');
  }
}

//This class is an inheritance because it inherits the functions from it's class parent (Aircraft).
class Airplane extends Aircraft{
  String passengers;
  
  announce(){
    print('The airplane contains '+this.passengers+' passengers.');
  }
  
  Airplane(this.passengers);
}

/*This class is an encapsulation because it contain data and functions into a single unit class(Jetplane).
 * A class is an example of a encapsulation. */
class Jetplane extends Aircraft{
  String passengers;
  
  eject() {
    print('Ejecting! POOF!');
  }
  
  announce(){
    print('The airplane contains '+this.passengers+' passengers.');
  }
  
  Jetplane(this.passengers);
}
  
/*This class is a polymorphism because it inherits some functions from the parent class (Aircraft) but this class has
 *its own unique behavior which add some new function or override some existing functions from the parents class (Aircraft).*/

class Seaplane extends Aircraft{
  String passengers;
  
  stop() {
    print('Anchors down!');
  }
  
  announce(){
    print('The airplane contains '+this.passengers+' passengers.');
  }
  
  Seaplane(this.passengers);
}

void main () {
  //samples
  Airplane philippineAirlines = Airplane('500');
  Jetplane kamikaze = Jetplane ('2');
  Seaplane sandaurs = Seaplane ('5');
  //buttons
  philippineAirlines.announce();
  philippineAirlines.go();
  philippineAirlines.stop();
  print('');
  kamikaze.announce();
  kamikaze.go();
  kamikaze.stop();
  kamikaze.eject();
  print('');
  sandaurs.announce();
  sandaurs.go();
  sandaurs.stop();
}
