import UIKit

let numeros = 0...100


for aux in numeros{
    if (aux % 5 == 0){
        print("\(aux) Bingo")
    }
    if (aux % 2 == 0){
        print("\(aux) Par")
    }else{
        print("\(aux) impar")
    }
    if ( aux >= 30 && aux <= 40 ){
        print("\(aux) Viva Swift")
    }
}
