import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";
import Cycles "mo:base/ExperimentalCycles";


actor {
    let favoriteNumber = HashMap.HashMap<Principal, Nat>(0, Principal.equal, Principal.hash);

    public shared({caller}) func add_favorite_number(n : Nat) : async () {
        favoriteNumber.put(caller, n);
    };

    public shared({caller}) func add_favorite_number2(n : Nat) : async Text {
        let num = favoriteNumber.get(caller);
        switch (num) {
            case (?temp) {
                if(temp == n) {
                    return "You already registered this number";
                } else {
                    favoriteNumber.put(caller, n);
                    return "You successfully registered your number";
                }
            };
            case null {
                favoriteNumber.put(caller, n);
                return "You successfully registered your number";
            }
        }
        
    };

    public shared({caller}) func show_favorite_number() : async ?Nat {
        return(favoriteNumber.get(caller));
    };
    public shared({caller}) func update_favorite_number(n : Nat): async Text {
        favoriteNumber.put(caller,n);
        return "You've successfully updated your number";
    };

    public shared({caller}) func delete_favorite_number(): async Text {
        favoriteNumber.delete(caller);
        return "You've successfully deleted your number";
    };

    public func deposit_cycles() : async Nat {
        let amnt : Nat = 100_000;

        let received = Cycles.accept(amnt);
        return(received);
    };
};