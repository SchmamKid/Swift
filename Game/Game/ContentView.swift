//
//  ContentView.swift
//  GameGuesser
//
//  Created by Sam Martins on 9/2/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        @State var val: String = ""
        @State var test: [Bool] = []
        @EnvironmentObject var gameList: GameViewModel
        VStack{
            Model3D(named: "Madden"){model in
                model.resizable()
                    .scaledToFit()
                    .scaleEffect(0.5)
                    .phaseAnimator([true, false]){ model, rotateXYZ in model
                            .rotation3DEffect(.degrees(rotateXYZ ? 720: 0), axis: (x: 0, y: 5, z: 0))
                        
                    }animation: {rotateXYZ in
                            .easeInOut(duration: 20).repeatForever(autoreverses: false)
                        
                    }
            } placeholder: {
                blank()
            }
            HStack{
                ForEach(gameList.data, id: \.self){ Bool in
                    if(Bool){
                        Rectangle()
                            .fill(.green)
                            .frame(width: 50, height: 50)
                    }else{
                        Rectangle()
                            .fill(.red)
                            .frame(width:50, height: 50)
                    }
                }
                
            }
            TextField("insert", text: $val)
                .multilineTextAlignment(.center)
            Button("placeholder"){
                test.append(false)
            }
        }
       
    }
}

struct blank: View{
    var body: some View{
        Text("loading")
    }
}

#Preview(windowStyle: .automatic) {
    ContentView().environmentObject(GameViewModel())
}
