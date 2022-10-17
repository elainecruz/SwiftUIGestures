//
//  SequencedGestures.swift
//  GesturesProject
//
//  Created by Elaine  Cruz on 16/10/22.
//

import SwiftUI

struct SequencedGesturesView: View {
    @State var toques = 0
    @State private var offset = CGSize.zero
    @State private var dragOffset = CGSize.zero
    
    var body: some View {
        VStack{
            Text("Toque longo no morango \(toques) vezes")
            Image("morango")
                .resizable()
                .scaledToFit()
                .padding()
                .offset(x: offset.width + dragOffset.width,
                        y: offset.height + dragOffset.height)
                .gesture(
                    LongPressGesture()
                        .onEnded{_ in
                            toques += 1
                        }
                        .sequenced(before:
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
                )
        }
    }
}

struct SequencedGestures_Previews: PreviewProvider {
    static var previews: some View {
        SequencedGesturesView()
    }
}
