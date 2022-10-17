//
//  DragGestureView.swift
//  GesturesProject
//
//  Created by Elaine  Cruz on 16/10/22.
//

import SwiftUI

struct DragGestureView: View {
    @State private var offset = CGSize.zero
    @State private var dragOffset = CGSize.zero

    var body: some View {
        Image("maracuja")
            .resizable()
            .padding()
            .scaledToFit()
            .offset(x: offset.width + dragOffset.width,
                    y: offset.height + dragOffset.height)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        self.dragOffset = value.translation
                    }
                    .onEnded {_ in
                        self.offset.width += self.dragOffset.width
                        self.offset.height += self.dragOffset.height
                        self.dragOffset = .zero
                    }
            )
    }
}

struct DragGestureView_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureView()
    }
}
