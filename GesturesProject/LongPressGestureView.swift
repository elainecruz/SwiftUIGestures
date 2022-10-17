//
//  LongPressGesture.swift
//  GesturesProject
//
//  Created by Elaine  Cruz on 16/10/22.
//

import SwiftUI

struct LongPressGestureView: View {
    @State var toques = 0

    var body: some View {
        VStack{
            Text("Tocou no morango \(toques) vezes")
            Image("morango")
                .resizable()
                .scaledToFit()
                .padding()
                .onLongPressGesture {
                    toques+=1
                }
        }
    }
}

struct LongPressGesture_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureView()
    }
}
