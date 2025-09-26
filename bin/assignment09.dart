abstract class Animal{
  String _name;
  Animal(this._name){
  }
  void makeSound();
  String getName(){
    return _name;
  }
}
class Lion extends Animal{
  double _meanSize;
  Lion(String name, this._meanSize) : super(name);

  double get maneSize => _meanSize;
  set maneSize(double size){
    if(size > 0){
      _meanSize = size;
    }else{
      print('Mane Size Must Be Positive!');
    }
  }

  @override
  void makeSound() {
    print('Roarrrrr!');
  }
}

class Elephant extends Animal{
  double _trunklength;

  Elephant(String name, this._trunklength) : super(name);

  double get trunkLength => _trunklength;
  set trunkLength(double length){
    if(length > 0) {
      _trunklength = length;
    }else{
      print('Trunk length must be positive!');
    }
  }

  @override
  void makeSound() {
    print('Pawoooo!');
  }
}

class Parrot extends Animal{
  int _vocabularySize;
  
  Parrot(String name, this._vocabularySize) : super(name);

  int get vocabularySize => _vocabularySize;
  
  set vocabularySize(int size){
    if(size >= 0){
      _vocabularySize = size;
    }else{
      print('Vocabulary size cannot be negative!');
    }
  }
  
  @override
  void makeSound() {
    print('Squawk! Hello!');
  }
}

void main(){

  List<Animal> zoo = [];

  zoo.add(Lion('Lion', 25.0));
  zoo.add(Elephant('Elephant', 6.5));
  zoo.add(Parrot('Parrot', 120));

  for(var animal in zoo){
    print('Name: ${animal.getName()}');

    if(animal is Lion){
      print('ManeSize: ${animal._meanSize}');
    }else if(animal is Elephant){
      print('Trunk Length: ${animal._trunklength}');
    }else if(animal is Parrot){
      print('Vocabulary Size: ${animal._vocabularySize}');
    }

    animal.makeSound();
    print('_________');

  }

}