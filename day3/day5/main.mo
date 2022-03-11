//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions
import Nat "mo:base/Nat";
import Array "mo:base/Array";
actor {

    //testing func
/* Challenge 5 : Write a function day_of_the_week that takes a Nat n and returns a Text value corresponding to the day. If n doesn't correspond to any day it will return null .

day_of_the_week (1) -> "Monday".
day_of_the_week (7) -> "Sunday".
day_of_the_week (12) -> null.  */

    public func day_of_the_week(n : Nat) : async Text {
        switch(n) {
            case (1) {
                return "Monday";
            }; case (2) {
                return "Tuesday";
            }; case (3) {
                return "Wednesday";
            }; case (4) {
                return "Thursday";
            }; case (5) {
                return "Fridayt";
            }; case (6) {
                return "Saturday";
            }; case (7) {
                return "Sunday";
            }; case (_) {
                "sorry this day doesnt exist haha";
            }
        };
    };
};