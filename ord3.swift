//
//  ord3.swift
//  AgoraSIm
//
//  Created by Vitor Matheus de Azevedo Martins on 8/28/17.
//  Copyright © 2017 Vitor Matheus de Azevedo Martins. All rights reserved.
//

import Foundation

func ord3() {
    print("Digite 3 números")
    
    var aux = readLine();
    guard let x = aux else {
        print("Entrada inválida")
        return
    }
    guard let a = Int(x) else {
        print("Entrada inválida")
        return
    }
    aux = readLine();
    guard let y = aux else {
        print("Entrada inválida")
        return
    }
    guard let b = Int(y) else {
        print("Entrada inválida")
        return
    }
    aux = readLine();
    guard let z = aux else {
        print("Entrada inválida")
        return
    }
    guard let c = Int(z) else {
        print("Entrada inválida")
        return
    }
    
    if(a < b && b < c) {
        print("\(a) \(b) \(c)")
    } else if (a < c && c < b) {
        print("\(a) \(c) \(b)")
    } else if (b < a && a < c) {
        print("\(b) \(a) \(c)")
    } else if (b < c && c < a) {
        print("\(b) \(c) \(a)")
    } else if (c < a && a < b) {
        print("\(c) \(a) \(b)")
    } else if (c < b && b < a) {
        print("\(c) \(b) \(a)")
    }
}
