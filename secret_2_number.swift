//
//  aula2.swift
//  AgoraSIm
//  Numero secreto 2
//  Created by Vitor Matheus de Azevedo Martins on 8/28/17.
//  Copyright © 2017 Vitor Matheus de Azevedo Martins. All rights reserved.
//

import Foundation

func two(palpite: Int, s: Int, s2: Int) -> Bool{
    if(palpite > s && palpite > s2) {
        print("O palpite é maior que ambos os números")
        return false
    } else if (palpite < s && palpite < s2) {
        print("O palpite é menor que ambos os números")
        return false
    } else if (palpite == s && palpite < s2 || palpite == s2 && palpite < s) {
        print("Acertou um dos números, o outro número é maior")
        return true
    } else if (palpite == s && palpite > s2 || palpite == s2 && palpite > s) {
        print("Acertou um dos números, o outro número é menor")
        return true
    } else {
        print("O palpite está entre os dois números")
        return false
    }
}

func secret_2_number() {
    
    print("Digite dois numeros secretos");
    var aux = readLine();
    let aux2 = readLine()
    
    if let y = aux, var secret = Int(y), let z = aux2, var secret2 = Int(z) {
        
        if(secret2 < secret) {
            let a = secret2
            secret2 = secret
            secret = a
        }
        print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
        
        var acertos = 0
        
        while(acertos < 2) {
            print("Digite seu palpite");
            aux = readLine();
            
            if let x = aux, let palpite = Int(x) {
                if(acertos == 0) {
                    if (two(palpite: palpite, s: secret, s2: secret2)) {
                        if (palpite == secret) {
                            secret = secret2
                        }
                        acertos += 1
                    }
                } else {
                    if(palpite == secret) {
                        print("Acertô miseravi!");
                        break;
                    } else if (palpite > secret) {
                        print("O numero é menor que o seu palpite");
                    } else {
                        print("O numero é maior que o seu palpite");
                    }
                }
            } else {
                print("Digita um numero válido doidjo");
            }
        }
    } else {
        print("Numero inválido");
    }
}
