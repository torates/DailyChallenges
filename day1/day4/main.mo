//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions
actor {
  var counter : Nat = 0;

  public func increment_counter() : async Nat {
    counter += 1; //Adds 1 to counter
    return counter;
  };

  public func clear_counter() : async Nat {
    counter := 0; //Resets to 0 using the assign operator
    return counter;
  };
};
