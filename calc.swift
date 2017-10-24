//
//  calc.swift
//  AgoraSIm
//  Calculadora
//  Created by Vitor Matheus de Azevedo Martins on 8/28/17.
//  Copyright © 2017 Vitor Matheus de Azevedo Martins. All rights reserved.
//

import Foundation

func operacao(ope: String, ope1: Double, ope2: Double) -> Double {
    if ope == "+" {
        return (ope1 + ope2)
    }
    if ope == "-" {
        return (ope1 - ope2)
    }
    if ope == "*" {
        return (ope1 * ope2)
    }
    if ope == "/" {
        if(ope2 != 0) {
            return (ope1 / ope2)
        }
    }
    return 0
}

func calc() {
    var m:Double = 0;
    var r:Double = 0;
    while(true) {
        print("Digite um operador (+, -, *, / ou M)")
        let op = readLine()
        if(op != "+" && op != "-" && op != "*" && op != "/" && op != "M") {
            print("Operador inválido")
            return
        } else if (op == "M") {
            m = r
        } else if let signal = op {
            print("Digite os operandos")
            let aux = readLine()
            if (aux == "m") {                                                               //Se o primeiro operando for m
                let aux2 = readLine();
                if let y = aux2, y == "m" {                                                 //Se o segundo operando também for m
                    r = operacao(ope: signal, ope1: m, ope2: m)
                    print(r)
                } else if let y = aux2, let op2 = Double(y) {                               //Se o segundo operando não for m
                    r = operacao(ope: signal, ope1: m, ope2: op2)
                    print(r)
                }
            } else if let x = aux, let op1 = Double(x) {                                    //Se o primeiro operando não for m
                let aux2 = readLine();
                if let y = aux2, y == "m" {                                                 //Se o segundo operando for m
                    r = operacao(ope: signal, ope1: op1, ope2: m)
                    print(r)
                } else if let y = aux2, let op2 = Double(y) {                               //Se o segundo operando tbm não for m
                    r = operacao(ope: signal, ope1: op1, ope2: op2)
                    print(r)
                }
            }
        }
    }
}
