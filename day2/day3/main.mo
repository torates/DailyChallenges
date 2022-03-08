//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions
import Array "mo:base/Array";
import Text "mo:base/Text";
import Iter "mo:base/Iter";

actor {
  public func decimal_to_bits(n : Nat) : async Text {
      var newN : Nat = n;
      if(n == 0) {
          return "00000000";
      }; 
      var str : [Char] = [];

      
      
      while(newN > 0) {
          if(newN % 2 == 0) {
              str := Array.append(str, ['0']);
              newN := newN / 2;
          } else {
             str := Array.append(str, ['1']);
             newN := (newN-1) / 2
          };
      };

      var numToAdd : Nat = 8 - str.size();

      var emptyArr : [Char] = []; //add padding of 0s to text
      while(numToAdd > 0) {
                emptyArr := Array.append(emptyArr, ['0']);
                numToAdd -= 1;
        };


      var len = str.size() - 1;
      var len2 = len;

      while(len2 >= 0) { //reverses the arr with obtained bits and appends to padding
          emptyArr := Array.append(emptyArr, [str[len2]]);
          if(len2 == 0) { //catches error, could be done with a try catch statement but im sleepy 😖
            return Text.fromIter(Iter.fromArray(emptyArr));
          };
          len2 -= 1;
      };
      return Text.fromIter(Iter.fromArray(emptyArr));
    };
};
