//
//  MagnificationGesture.swift
//  GesturesProject
//
//  Created by Elaine  Cruz on 16/10/22.
//

import SwiftUI

struct PinchGesture: View {
    @State var scale: CGFloat = 1
    
    var body: some View {
        VStack{
            Image("limao")
                .resizable()
                .scaledToFit()
                .padding()
                .scaleEffect(scale)
                .gesture(
                    MagnificationGesture()
                        .onChanged { amount in
                            scale = amount
                        }
                        .onEnded{ _ in
                            scale = 1
                        }
                )
        }
    }
}

struct MagnificationGesture_Previews: PreviewProvider {
    static var previews: some View {
        PinchGesture()
    }
}
