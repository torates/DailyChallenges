//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions
import Nat8 "mo:base/Nat8";
actor {
  public shared({caller}) func is_anonymous() : async Bool {
    Principal.equal(caller, Principal.fromText("2vxsx-fae"))
    };
};