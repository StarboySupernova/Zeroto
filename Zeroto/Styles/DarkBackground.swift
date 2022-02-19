//
//  DarkBackground.swift
//  Zeroto
//
//  Created by Simbarashe Dombodzvuku on 2/17/22.
//

import Foundation
import SwiftUI

struct DarkBackground<S: Shape>: View {
    var isHighlighted: Bool //is it depressed or not
    var shape: S
    
    var body: some View {
        ZStack {
            if isHighlighted {
                shape
                    .fill(LinearGradient(Color("lightEnd"), Color("lightStart")))
                    .overlay(shape.stroke(LinearGradient(Color("darkEnd"), Color("darkStart")), lineWidth: 4)) //bevel appears when button is pressed
                    .shadow(color: Color("darkStart"), radius: 10, x: 5, y: 5)
                    .shadow(color: Color("darkEnd"), radius: 10, x: -5, y: -5)
            } else {
                shape
                    .fill(LinearGradient(Color("darkEnd"), Color("darkStart")))
                    .overlay(shape.stroke(Color("lightStart"), lineWidth: 4))
                    .shadow(color: Color("darkStart"), radius: 10, x: -10, y: -10)
                    .shadow(color: Color("darkEnd"), radius: 10, x: 10, y: 10)
            }
        }
    }
}

struct DarkButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(20)
            .contentShape(Capsule())
            .background(
                DarkBackground(isHighlighted: configuration.isPressed, shape: Capsule())
            )
    }
}


                          
