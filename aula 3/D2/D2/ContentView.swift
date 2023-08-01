//
//  ContentView.swift
//  D2
//
//  Created by Student14 on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var nome: String = "Joao"
    
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(destination: tela1()){
                    Text("Primeira tela")
                }
                
                NavigationLink(destination: tela2()){
                    Text("Segunda tela")
                }
                
                NavigationLink(destination: tela3()){
                    Text("Terceira tela")
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
