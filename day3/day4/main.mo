//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions
import Nat8 "mo:base/Nat8";
import Array "mo:base/Array";
actor {

    //testing func

/* Challenge 4 : Write a function nat_opt_to_nat that takes two parameters : n of type ?Nat and m of type Nat . This function will return the value of n if n is not null and if n is null it will default to the value of m. */

    public func nat_opt_to_nat(n : ?Nat, m : Nat) : async Nat {
        switch (n) {
            case null {
                return m;
            };
            case (?x) {
                return x;
            }
        }
    };
};