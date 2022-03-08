//For Motoko Playground testing purposes it creates a canister, on a real app I would add all of the daily challenges into a module and import it to the main.mo of my canister to use it's functions

import Char "mo:base/Char";
import Text "mo:base/Text";
import Blob "mo:base/Blob";
import Nat8 "mo:base/Nat8";
import Nat32 "mo:base/Nat32";
actor {
  public func capitalize_text(n : Text) : async Text {
      var encodedText = Text.encodeUtf8(n);
      let encodedTextArr : [Nat8] = Blob.toArray(encodedText);
    (assert encodedTextArr[0] > 96); //checks code is in the lowercase range
    (assert encodedTextArr[0] < 123);
    var code : [Nat8] = [encodedTextArr[0] - 32];

    //lol and i tought i was not going to use this code

    let codeBlob : Blob =  Blob.fromArray(code);
    let decodedText = Text.decodeUtf8(codeBlob);
    switch (decodedText) {
        case (?text) {
            return text;
        };
        case null {
            return "something went wrong"
            }
        }
    };
};
