//
//  ContentView.swift
//  Academy
//
//  Created by Mukhtaram Sulaimonov on 08/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var message: String = "Hello, Academy!"
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                Image(systemName:"rainbow")
                    .resizable()
                    .scaledToFit()
                    .symbolRenderingMode(.multicolor)
                    .symbolEffect(.variableColor.reversing)
                    .padding(50)
                Text(message)
                    .foregroundStyle(.white)
                    .font(.title)
                    .bold()
                Button("✨Abracadabra✨") {
                    message = "Apple Developers Academy"
                }
                .padding()
                .background(.purple)
                .foregroundStyle(.white)
                .clipShape(Capsule())
            }
        }
    }
}

#Preview {
    ContentView()
}
