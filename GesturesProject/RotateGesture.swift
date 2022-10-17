//
//  RotationGestures.swift
//  GesturesProject
//
//  Created by Elaine  Cruz on 16/10/22.
//

import SwiftUI

struct RotateGesture: View {
    @State private var angle = Angle.zero

    var body: some View {
        Image("caju")
            .resizable()
            .padding()
            .scaledToFit()
            .rotationEffect(angle)
            .gesture(
                RotationGesture()
                    .onChanged { angle in
                        self.angle = angle
                    }
            )
    }
}

struct RotationGestures_Previews: PreviewProvider {
    static var previews: some View {
        RotateGesture()
    }
}
