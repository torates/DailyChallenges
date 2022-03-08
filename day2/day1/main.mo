//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions
import Nat8 "mo:base/Nat8";
actor {
  public func nat8_to_nat(n : Nat8) : async Nat {
      return(Nat8.toNat(n));
    };
};
