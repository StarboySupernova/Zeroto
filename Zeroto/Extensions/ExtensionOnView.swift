//
//  ExtensionOnView.swift
//  Zeroto
//
//  Created by Simbarashe Dombodzvuku on 2/17/22.
//

import Foundation
import SwiftUI

 extension View {
     func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
             clipShape( RoundedCorner(radius: radius, corners: corners) )
     }
     
     func glow(color: Color = .red, radius: CGFloat = 20) -> some View {
         self
             .overlay(self.blur(radius: radius / 6))
             .shadow(color: color, radius: radius / 3)
             .shadow(color: color, radius: radius / 3)
             .shadow(color: color, radius: radius / 3)
     }
 }

 struct RoundedCorner: Shape {

     var radius: CGFloat = .infinity
     var corners: UIRectCorner = .allCorners

     func path(in rect: CGRect) -> Path {
         let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
         return Path(path.cgPath)
     }
 }

