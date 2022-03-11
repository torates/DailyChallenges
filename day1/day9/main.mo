import Iter "mo:base/Iter";
import Array "mo:base/Array";

//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions
actor {
  public func remove_from_array(n : [Nat], blackSheep : Nat) : async [Nat] {
      var cleanArr : [Nat] = [];
      //Nests the whole process in a try - catch statement so to catch any possible error.
      try { 
        let iterable = Iter.fromArray(n);
        for(i in iterable) {
            if(i != blackSheep) {
                cleanArr := Array.append(cleanArr, [i]);
            }
        };
        return cleanArr;
      } catch (e) {
          return [];
      };
  };
};
