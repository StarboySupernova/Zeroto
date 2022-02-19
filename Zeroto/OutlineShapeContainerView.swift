//
//  ViewStyleModifier.swift
//  Zeroto
//
//  Created by Simbarashe Dombodzvuku on 2/18/22.
//

import Foundation
import SwiftUI

struct ContainerView<Content:View, Outline:Shape>:View {
    
    var content:Content
    var outline: Outline
    
    init (@ViewBuilder content: () -> Content, outlineShape: Outline) {
        self.content = content()
        self.outline = outlineShape
    }
    
    var body: some View {
        ZStack {
            content
                .background(
                    ColorfulBackground(isHighlighted: false, shape: outline)
                )
            
        }
    }
}
