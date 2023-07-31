//
//  ContentView.swift
//  D1
//
//  Created by Student14 on 27/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("caminhao")
                .resizable().scaledToFit()
            
            Text("HackATruck").font(.title).foregroundColor(.blue).bold()
            HStack{
                Text("Maker").font(.title2).foregroundColor(.yellow)
                
                Text("Space").font(.title2).foregroundColor(.red)
                
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
