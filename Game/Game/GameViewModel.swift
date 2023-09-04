//
//  GameViewModel.swift
//  Game
//
//  Created by Sam Martins on 9/3/23.
//

import Foundation

class GameViewModel: ObservableObject {
    @Published var data: [Bool] = [false]
    
    init() {
        self.data = [false]
    }
    
    func addFalse(){
        self.data.append(false)
    }
}
