//
//  soma_algarismos.swift
//  AgoraSIm
//  Somar algarismos de um número
//  Created by Vitor Matheus de Azevedo Martins on 8/30/17.
//  Copyright © 2017 Vitor Matheus de Azevedo Martins. All rights reserved.
//

import Foundation

func soma_algarismos() {
    var soma = 0;
    let a = readLine()
    if let x  = a, var n = Int(x) {
        while(n >= 10) {
            soma += n%10;
            n /= 10;
        }
        soma += n;
        print(soma)
    }
}
