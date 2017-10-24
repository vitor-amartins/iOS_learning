//
//  main2.swift
//  AgoraSIm
//  Paridade 3 números
//  Created by Vitor Matheus de Azevedo Martins on 8/28/17.
//  Copyright © 2017 Vitor Matheus de Azevedo Martins. All rights reserved.
//

import Foundation

func par3n() {
    var a = 0, b = 0;
    var aux2:String;
    
    for _ in 0...2 {
        aux2 = readLine()!;
        a = Int(aux2)!;
        if (a % 2 == 0) {
            b += 1;
        }
    }
    
    print("\(b) número(s) par(es)");
}
