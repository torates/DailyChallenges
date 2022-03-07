//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions
actor {
  public func add(n1 : Nat, n2 : Nat) : async Nat {
    return n1 + n2;
  };
};
