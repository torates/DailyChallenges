import Iter "mo:base/Iter";
import Array "mo:base/Array";

//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions
actor {
  public func selectionSort(n : [Nat]) : async [Nat] {
      let N = Array.thaw<Nat>(n);
      let lenght = N.size() - 1;
      for(j in Iter.range(0, lenght)) {
        var min = j;

        for(i in Iter.range(j + 1, lenght)){
          if(N[i] < N[min]){
            min := i;
          }
        };
        if(min != j) {
          let tempVal = N[j];
          N[j] := N[min];
          N[min] := tempVal;
        }
      };
      let N2 = Array.freeze<Nat>(N);
      return N2;
  };
};
