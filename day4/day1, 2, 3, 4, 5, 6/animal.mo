module {
    type Animal = {
        specie : Text;
        energy : Nat;
    };

    public func animal_sleep(someanimal : Animal) : Animal {
        var someAnimalVar = someanimal;
        someAnimalVar := {
            specie = someanimal.specie;
            energy = someanimal.energy + 10;
        };
        return someAnimalVar;
    }

    


}