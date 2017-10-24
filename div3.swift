//
//  div3.swift
//  AgoraSIm
//
//  Created by Vitor Matheus de Azevedo Martins on 8/28/17.
//  Copyright © 2017 Vitor Matheus de Azevedo Martins. All rights reserved.
//

import Foundation

func val2(x:Int) -> Bool{
    if (x < 100) {
        return false;
    } else if (x > 999) {
        return false;
    }
    return true;
}

func div3() {
    
    print("Digite um numero entre 100 e 999");
    
    let aux = readLine();
    if let x = aux, let num = Int(x){
        if(val2(x: num)) {
            if(num % 3 == 0) {
                print("Divisível por 3");
            } else {
                print("Não é divisível por 3");
            }
        }
    }
}
