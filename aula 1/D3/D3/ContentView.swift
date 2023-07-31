//
//  ContentView.swift
//  D3
//
//  Created by Student14 on 27/07/23.
//

import SwiftUI

struct ContentView: View {
    @State var nome: String = ""
    @State var bol: Bool = false
    
    
    
    var body: some View {
        ZStack{
            Image("caminhao").resizable().scaleEffect(x:2, y: 1.3 ).opacity(0.12)
        
            VStack{
                Text("Bem Vindo, \(nome)").font(.title)
                TextField("Escreva seu nome", text: $nome)
                    .multilineTextAlignment(.center)
                
               // Text("\(nome)").offset(y: 40)
                
                Image("logo").resizable().scaleEffect(x:0.6, y:0.4).offset(y:80).shadow(radius: 10)
                
                Image("truck").resizable().scaleEffect(x: 0.7, y:0.4).offset(y:-80)
                
                Button("Entrar") {
                    bol = true
                }.alert(isPresented: $bol) {
                    Alert(title: Text("ALERTA"), message: Text("Isso eh um alerta e bla bla bla"), dismissButton: .default(Text("OK")))
                }
                
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
