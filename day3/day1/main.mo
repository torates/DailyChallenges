//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions
import Nat8 "mo:base/Nat8";
import Array "mo:base/Array";
actor {

    //testing func

    public func testSwap(array : [Nat], j : Nat, i : Nat) : async [Nat] {
        return await swap(array, j, i);
    };

    private func swap(array : [Nat], j : Nat, i : Nat) : async [Nat] {
        var mutArr : [var Nat] = Array.thaw<Nat>(array);

        let tempval = mutArr[j];
        mutArr[j] := mutArr[i];
        mutArr[i] := tempval;

        let finalArr : [Nat] = Array.freeze<Nat>(mutArr);

        return finalArr;

    }
};
