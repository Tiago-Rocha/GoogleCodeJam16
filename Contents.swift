//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*
14 Different letters

Uniques - Z (Zero), W (Two), U (Four), X (Six)

Two - H (Three || Eight), F (Four || Five), V (Five || Seven), S (Six || Seven)

Three - R (Zero || Three || Four), T (Two || Three || Eight)

Four -

Five -

----------

Z (Zero)
W (Two)
U (Four)
X (Six)

F (Four  || Five)
V (Five  || Seven)
S (Six-x || Seven)

H (Three || Eight)

R (Zero || Three  || Four)
T (Two  || Three  || Eight)
N (One  || Seven  || Nine)

O (Zero || One || Two   || Four) - X
I (Five || Six || Eight || Nine)

E (Zero || One || Three || Five || Seven || Eight || Nine)

*/

find("ZEROSIXZEROEIGHTZERO",num:"")
find("WEIGHFOXTOURIST", num:"")
find("OURNEONFOE", num:"")
find("ETHER", num:"")

extension String {
    
    // Just because Ruben Paz is awesome; A word less is a word less!
    func contains(ch:Character) -> Bool {
        return self.characters.contains(ch)
    
    }
}
func find (var s:String,var num:String) -> String {
    
    if (s.characters.count == 0){
        return num
    }else{
        if s.contains("Z"){
            find(remove(s,l: "ZERO"), num: num+"0")
            
        }else if s.contains("W"){
            find(remove(s,l: "TWO"), num: num+"2")
            
        }else if s.contains("U"){
            find(remove(s,l: "FOUR"), num: num+"4")
            
        }else if s.contains("X"){
            find(remove(s,l: "SIX"), num: num+"6")
            
        }else if s.contains("O"){
            find(remove(s,l: "ONE"), num: num+"1")
            
        }else if s.contains("S"){
            find(remove(s,l: "SEVEN"), num: num+"7")
            
        }else if s.contains("V"){
            find(remove(s,l: "FIVE"), num: num+"5")
            
        }else if s.contains("R"){
            find(remove(s,l: "THREE"), num: num+"3")
            
        }else if s.contains("T"){
            find(remove(s,l: "EIGHT"), num: num+"8")
            
        }else if s.contains("N"){
            find(remove(s,l: "NINE"), num: num+"9")
        }
    
    }
    return num
}

func remove(var s:String, l:String) -> String {
    for c in l.characters {
        s.removeAtIndex(s.characters.indexOf(c)!)
    }
    return s
}
