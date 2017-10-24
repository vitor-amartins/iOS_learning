//
//  aula2.swift
//  AgoraSIm
//  Numero secreto
//  Created by Vitor Matheus de Azevedo Martins on 8/28/17.
//  Copyright © 2017 Vitor Matheus de Azevedo Martins. All rights reserved.
//

import Foundation

func secret_number() {
    
    print("Digite um numero secreto");
    var aux = readLine();
    
    if let y = aux, let secret = Int(y) {
        
        print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
        
        var n = 3;
        
        while(n > 0) {
            print("Digite seu palpite");
            aux = readLine();
            
            if let x = aux, let palpite = Int(x) {
                if(palpite == secret) {
                    print("Acertô miseravi!");
                    break;
                } else if (palpite > secret) {
                    print("O numero é menor que o seu palpite");
                } else {
                    print("O numero é maior que o seu palpite");
                }
                n -= 1;
                if (n == 0) {
                    print("Loser");
                }
            } else {
                print("Digita um numero válido doidjo");
            }
        }
    } else {
        print("Numero inválido");
    }
}
