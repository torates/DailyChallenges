//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions
import Nat8 "mo:base/Nat8";
import Array "mo:base/Array";
actor {

    //testing func

/*     
Challenge 3 : Write a function seven that takes an array [Nat] and returns "Seven is found" if one digit of ANY number is 7. Otherwise this function will return "Seven not found". */

    public func seven(n : [Nat]) : async Text {
        for(i in seven.vals()) {
            if(i == 7) {
                return "Seven found";
            }
        }
        return "Seven not found";
    };
};