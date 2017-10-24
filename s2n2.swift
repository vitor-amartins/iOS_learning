//
//  aula2.swift
//  AgoraSIm
//  Numero secreto 2 2.0
//  Created by Vitor Matheus de Azevedo Martins on 8/28/17.
//  Copyright © 2017 Vitor Matheus de Azevedo Martins. All rights reserved.
//

import Foundation

func too(palpite: Int, s: Int, s2: Int) -> Bool{
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

func read() -> Int {
    let a = readLine()
    if let x = a, let n = Int(x) {
        if(n != 42 && n >= 0 && n <= 100) {
            return n
        }
    }
    print("Número inválido")
    return -1
}

func s2n2() {
    
    print("Digite dois numeros secretos");
    
    var secret = read();
    while(secret == -1) {
        secret = read()
    }
    var secret2 = read()
    while(secret2 == -1) {
        secret2 = read()
    }
    
    if(secret2 < secret) {
        let a = secret2
        secret2 = secret
        secret = a
    }
    print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
    
    var acertos = 0
    
    while(acertos < 2) {
        print("Digite seu palpite");
        let aux = readLine();
        
        if let x = aux, let palpite = Int(x) {
            if(acertos == 0) {
                if (too(palpite: palpite, s: secret, s2: secret2)) {
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
}
