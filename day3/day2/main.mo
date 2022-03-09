//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions
import Nat8 "mo:base/Nat8";
import Array "mo:base/Array";
actor {

    //testing func

    

/* Challenge 2 : Write a function init_count that takes a Nat n and returns an array [Nat] where value is equal to it's corresponding index.

Note : init_count(5) -> [0,1,2,3,4].
Note 2 : Do not use Array.append.
 */

    public func init_count(n : Nat) : async [Nat] {
        var f = func(x : Nat) : Nat {
            return x;
        };
        var natArr :  [Nat] = Array.tabulate<Nat>(n, f);
        return natArr;
    };
};