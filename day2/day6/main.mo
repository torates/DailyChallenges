//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions

import Text "mo:base/Text";

actor {
  type Pattern = { #char : Char; #text : Text; #predicate : (Char -> Bool) }; //import pattern type to use on text methods
  public func is_inside(n : Text, c : Char) : async Bool {
      
      let typo : Pattern = #char(c);
      return Text.contains(n, typo);
      };
};

