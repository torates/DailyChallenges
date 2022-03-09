import Animal "animal";
import Custom "custom";

import List "mo:base/List";


actor {

    public type List<T> = ?(T, List<T>);

    public func fun() : async Bool {
        let myself : Custom = { //func could take args and make a different bootcamper
            name = "Andres Mateo";
            age = 20;
            isStressed = false;
            isHavingFun = true;
            willProbablyEndUpGettingACatNextWeek = true;
        }
        return myself.isHavingFun
    }

    let cat : Animal = { //func could take args and make a different bootcamper
        specie = "Rowdy Black Cat";
        energy = 202;
    }

    public func create_animal_then_takes_a_break(specie : Text, energy : Nat) : async Animal2 {
    var animal : Animal = {
      specie = specie;
      energy = energy;
    };
    // put this animal to sleep before returning it
    // what does it mean ?#
    if(animal.energy > 0){
      animal := {
          specie = specie;
          energy = 0; //zzzz let the poor thing sleep
      }
    };

    return animal;
  };

  var list : List<Animal> = List.nil<Animal>();

  public func push_animal(animal : Animal) : async () {
        list := List.push<Animal>(animal, list);
  };

  public func get_animals() : async [Animal] {
    var animalArr : [Animal] = [];
    let f = func(x : Animal) : () {
      animalArr := Array.append(animalArr, [x]);
    };
    List.iterate<Animal>(list, f);
    return animalArr;
  }
};
