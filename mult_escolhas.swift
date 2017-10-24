//
//  aula1.swift
//  AgoraSIm
//  Multiplas escolhas
//  Created by Vitor Matheus de Azevedo Martins on 8/28/17.
//  Copyright © 2017 Vitor Matheus de Azevedo Martins. All rights reserved.
//

import Foundation

func mult_escolhas() {
    let questions = ["Qual a única peça do xadrez que pode pular obstáculos?", "Qual a cor do cavalo branco de Napoleão?", "Qual o significado de T.M. no Yellow Umbrella?"];
    let options = [["A) Rainha", "B) Torre", "C) Cavalo", "D) Rei", "E) Peão"], ["A) Marrom", "B) Preto", "C) Cinza", "D) Branco", "E) Xadrez"], ["A) Ted Mosby", "B) Tracy McConnell", "C) Trevor Mosby", "D) Taylor McConnell", "E) Ted McDonald"]];
    let answers = ["c", "d", "b"];
    var score = 0;
    
    var i = 0, j = 0;
    
    while(i < questions.count) {
        
        print(questions[i]);
        
        while(j < options[i].count) {
            print(options[i][j]);
            j += 1;
        }
        
        var hint:String = readLine()!;
        hint = hint.lowercased();
        
        if(hint == answers[i]) {
            score += 1;
            print("Parabeins!\n");
        } else {
            score -= 1;
            print("Noob lixo!\n");
        }
        
        j = 0;
        i += 1;
    }
    
    if(score < 0) {
        print("Ponto: 0");
    } else {
        print("Pontos: \(score)");
    }
}
