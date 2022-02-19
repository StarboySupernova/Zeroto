//
//  ExtensionOnLinearGradient.swift
//  Zeroto
//
//  Created by Simbarashe Dombodzvuku on 2/17/22.
//

import Foundation
import SwiftUI

extension LinearGradient {
    init(_ colors: Color...){
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

