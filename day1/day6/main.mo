//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions
actor {
  public func is_even(n : Nat) : async Bool {
      switch (n % 2) {
          case 0 {
              return true;
          };
          case (_) {
              return false;
          }
      };
  };
};
