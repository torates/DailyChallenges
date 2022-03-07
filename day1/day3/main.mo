//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions
actor {
  public func days_to_second(n : Nat) : async Nat {
    let secondsInADay : Nat = 86400;
    return n * secondsInADay; //There are n * secondsInADay seconds in n days.
  };
};
