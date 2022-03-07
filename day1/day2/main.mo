//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions
actor {
  public func square(n : Nat) : async Nat { 
    return n * n; //The area of the square with sides of length n is equal to n * n
  };
};
