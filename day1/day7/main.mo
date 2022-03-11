import Iter "mo:base/Iter";

//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions
actor {
  public func sum_of_array(n : [Nat]) : async Nat {
      var totalSum : Nat = 0;
      //Nests the whole process in a try - catch statement so to catch any possible error.
      try { 
        let iterable = Iter.fromArray(n);
        for(i in iterable) {
            totalSum += i;
        };
        return totalSum;
      } catch (e) {
          return 0;
      };
  };
};
