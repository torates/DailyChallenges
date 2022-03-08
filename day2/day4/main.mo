//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions

import Char "mo:base/Char";
import Text "mo:base/Text";
import Blob "mo:base/Blob";
import Nat8 "mo:base/Nat8";
import Nat32 "mo:base/Nat32";
actor {
  public func capitalize_character(n : Char) : async Char {
      let charText : Text = Char.toText(n);
      var encodedText = Text.encodeUtf8(charText);
      let encodedTextArr : [Nat8] = Blob.toArray(encodedText);
    (assert encodedTextArr[0] > 96); //checks code is in the lowercase range
    (assert encodedTextArr[0] < 123);
    var code : [Nat8] = [encodedTextArr[0] - 32];
    var charn : Char = Char.fromNat32(Nat32.fromNat(Nat8.toNat(code[0])));

    return charn;
    
    //if you wanted this to return text (for some reason) you can use this ! :)

/*     let codeBlob : Blob =  Blob.fromArray(code);
    let decodedText = Text.decodeUtf8(codeBlob);
    switch (decodedText) {
        case (?text) {
            return text;
        };
        case null {
            return "something went wrong"
            }
        } */
    };
};
