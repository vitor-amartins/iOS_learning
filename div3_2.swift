//
//  div3_2.swift
//  AgoraSIm
//  Ver se é divisível por 3 usando guard
//  Created by Vitor Matheus de Azevedo Martins on 8/28/17.
//  Copyright © 2017 Vitor Matheus de Azevedo Martins. All rights reserved.
//

import Foundation

func val(x:Int) -> Bool{
    if (x < 100) {
        return false;
    } else if (x > 999) {
        return false;
    }
    return true;
}

func div3_2() {
    
    print("Digite um numero entre 100 e 999");
    
    let aux = readLine();
    guard let x = aux else {
        print("Entrada inválida")
        return
    }
    guard let num = Int(x) else {
        print("Entrada inválida")
        return
    }
    if(num > 99 && num < 1000) {
        if(num % 3 == 0) {
            print("É divisível por 3")
        } else {
            print("Não é divisível por 3")
        }
    }
    
}
