//
//  raiz_cubica.swift
//  AgoraSIm
//
//  Created by Vitor Matheus de Azevedo Martins on 8/30/17.
//  Copyright © 2017 Vitor Matheus de Azevedo Martins. All rights reserved.
//

import Foundation

func raiz_cubica() {
    let a = readLine()
    if let x = a, let n = Int(x) {
        var t = 1
        while(t*t*t < n) {
            t += 1
        }
        if (t*t*t == n) {
            print(t)
        } else {
            print("O número não possui raíz cúbica")
        }
    }
}
