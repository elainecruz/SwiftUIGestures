//
//  SimultaneousGestures.swift
//  GesturesProject
//
//  Created by Elaine  Cruz on 16/10/22.
//

import SwiftUI

struct SimultaneousGestures: View {
    @State var toquesNoTexto = 0
    @State var toquesNaTela = 0

    var body: some View {
        VStack{
            Text("Toquei no Texto \(toquesNoTexto) vezes")
                .onTapGesture {
                    toquesNoTexto += 1
                }
            
            Text("Toquei na tela \(toquesNaTela) vezes")
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.cyan)
        .simultaneousGesture(
            TapGesture()
                .onEnded {
                    toquesNaTela += 1
                }
        )
    }
}

struct SimultaneousGestures_Previews: PreviewProvider {
    static var previews: some View {
        SimultaneousGestures()
    }
}
