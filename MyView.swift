//
//  MyView.swift
//  SwiftUI-Learning
//
//  Created by José Javier Cueto Mejía on 09/02/22.
//

import SwiftUI

struct MyView: View {
    var isYellow = true
    var body: some View {
        VStack(spacing: 20) {
            Text("Layout Behavior").font(.largeTitle)
            Text("Views that Pull In").foregroundColor(.gray)
            Text("Some views minimize their frame size so it is only as big as the content within it.")                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(Color.white)
            
            Color.purple
                .overlay(
                    Image(systemName: "arrow.up.left")
                        .padding()                  , alignment: .topLeading)
                .overlay(                    Image(systemName: "arrow.up.right")                        .padding(), alignment: .topTrailing)
                .overlay(                    Image(systemName: "arrow.down.left")                        .padding(), alignment: .bottomLeading)
                .overlay(                    Image(systemName: "arrow.down.right")                        .padding(), alignment: .bottomTrailing)
                .overlay(Text("Colors are Push-Out views"))
            
            
            
        }
        .font(.title)
        .ignoresSafeArea( edges: .bottom)
        
        
        
    }
}


struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            MyView()
                .previewDevice("iPad Pro (11-inch) (3rd generation)")
            MyView()
                .previewInterfaceOrientation(.landscapeRight)
            MyView()
                .preferredColorScheme(.dark)
            MyView()
                .previewDevice(PreviewDevice(rawValue: "iPad Pro (9.7-inch)"))
                .preferredColorScheme(.dark)
        }
     
    }
}
