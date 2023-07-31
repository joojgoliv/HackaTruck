//
//  ContentView.swift
//  D2
//
//  Created by Student14 on 27/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("caminhao").resizable().scaledToFit()
            
            ZStack{
                Image("caminhao").resizable().scaledToFit().clipShape(Circle())
                
                Text("HackATruck").font(.title).bold().foregroundColor(.blue).offset(y: -52)
                
            }
            Spacer()
            HStack{
                Text("Maker").font(.title).foregroundColor(.yellow)
                    
                Text("Space").font(.title).foregroundColor(.red)
            }.frame(width: 250, height: 150).background(.foreground).ignoresSafeArea().padding(-20)
                
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
