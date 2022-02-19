//
//  ContentView.swift
//  Zeroto
//
//  Created by Simbarashe Dombodzvuku on 2/16/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                LinearGradient(Color("darkEnd"), Color("darkStart"))
                    .ignoresSafeArea()
                
                LinearGradient(Color("darkStart"), Color("darkEnd"))
                    .cornerRadius(geometry.size.width * 0.1, corners: [.topLeft, .bottomRight, .bottomLeft])
                
                Button(action: {
                    print("Show Settings")
                }, label: {
                    Image(systemName: "gearshape.fill")
                        .resizedToFill(width: geometry.size.width * 0.1,
                                       height: geometry.size.width * 0.1)
                        .foregroundColor(.white)
                })
                    .buttonStyle(DarkButtonStyle())
                    .offset(x: geometry.size.width * 0.35, y: -geometry.size.height * 0.4)
                
                VStack {
                    ContainerView(content: {
                        Image("zerotologo")
                            .resizedToFill(width: 50, height: 50)
                            .foregroundColor(.white)
                            .padding(10)
                    }, outlineShape: RoundedRectangle(cornerRadius: 10))
                        .offset(x: -geometry.size.width * 0.35, y: -geometry.size.height * 0.2)
                    //will need to implement functionality that reads environment values to ensure this view appears in the same position across multiple devices, namely the iPod touch
                    
                    Text("Zero To Infinity")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .kerning(2)
                        .foregroundColor(.white)
                        .offset(x: 0, y: -geometry.size.height * 0.08)
                    
                    Text("Diagnostic Coaching")
                        .font(.headline)
                        .fontWeight(.medium)
                        .kerning(2)
                        .foregroundColor(.white)
                        .offset(x: 0, y: -geometry.size.height * 0.08)
                    
                    Image("zerotocars")
                        .resizedToFill(width: geometry.size.width, height: 50)
                        .offset(x: 0, y: geometry.size.height * 0)
                    
                    Text("Continuous improvement online training solutions")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .kerning(2)
                        .foregroundColor(.white)
                        .offset(x: 0, y: geometry.size.height * 0.05)
                    
                    Button(action: {
                        print("Navigation Link")
                    }, label: {
                        Image(systemName: "arrow.forward.square")
                            .resizedToFill(width: 50, height: 50)
                            .foregroundColor(.white)
                    })
                        .buttonStyle(DarkButtonStyle())
                        .offset(x: 0, y: geometry.size.height * 0.1)
                    
                    Text("Tap to Start")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .kerning(2)
                        .foregroundColor(.white)
                        .offset(x: 0, y: geometry.size.height * 0.1)
                        .glow(color: .blue, radius: 36)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
