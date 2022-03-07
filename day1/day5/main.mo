//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions
actor {
  public func divide(n : Nat, m : Nat) : async Bool {
      switch (n % m) {
          case 0 {
              return true;
          };
          case (_) {
              return false;
          }
      };
  };
};
