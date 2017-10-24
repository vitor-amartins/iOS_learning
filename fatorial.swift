//
//  fatorial.swift
//  AgoraSIm
//  Fatorial
//  Created by Vitor Matheus de Azevedo Martins on 8/30/17.
//  Copyright © 2017 Vitor Matheus de Azevedo Martins. All rights reserved.
//

import Foundation

func fatorial() {
    var prod = 1;
    print("Digite um numero para calcular seu fatorial");
    let a = readLine()
    if let x = a, let n = Int(x) {
        if(n != 0) {
            for i in 1...n {
                prod *= i
            }
        }
        print(prod)
    }
}
