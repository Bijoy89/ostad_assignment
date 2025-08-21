abstract class Animal{
  String _name;

  Animal(this._name);

  void makeSound();

  String getName()=>_name;

}

class Lion extends Animal{
  double? _maneSize;

  Lion(String name,double maneSize):super(name){
    this.maneSize = maneSize;
  }

  double get maneSize=>_maneSize!;

  set maneSize(double value){
    if(value>=0){
      _maneSize=value;
    }
    else{
      throw ArgumentError("Mane Size cannot be Negative");
    }
  }

  @override
  void makeSound() {
    print("${getName()} roars: Roaaarrr! ");
  }

}

class Elephant extends Animal{
  double? _trunkLength;

  Elephant(String name,double trunkLength):super(name){
    this.trunkLength=trunkLength;
  }

  double get trunkLength=>_trunkLength!;

  set trunkLength(double value){
    if(value>=0){
      _trunkLength=value;
    }
    else{
      throw ArgumentError("Trunk Length cannot be Negative");
    }
  }

  @override
  void makeSound() {
    print("${getName()} trumpets: Pawooow! ");
  }

}
class Parrot extends Animal{
  int? _vocabularySize;

  Parrot(String name,int vocabularySize):super(name){
    this.vocabularySize=vocabularySize;
  }

  int get vocabularySize=>_vocabularySize!;

  set vocabularySize(int value){
    if(value>=0){
      _vocabularySize=value;
    }
    else{
      throw ArgumentError("Vocabulary Size cannot be Negative");
    }
  }

  @override
  void makeSound() {
    print("${getName()} squawks: Hello! Polly wants a cracker! ");
  }

}

void main(){
  List<Animal> zoo=[];

  zoo.add(Lion("Simba", 26.5));
  zoo.add(Elephant("Rumbo", 148.0));
  zoo.add(Parrot("Polly", 100));

  for(var animal in zoo){
    print("Animal: ${animal.getName()}");
    if(animal is Lion){
      print("Mane Size:${animal.maneSize} cm");
    } else if(animal is Elephant){
      print("Trunk Length:${animal.trunkLength} cm");
    } else if(animal is Parrot){
      print("Vocabulary Size:${animal.vocabularySize} words");
    }

    animal.makeSound();
    print("--------------");
  }

}

