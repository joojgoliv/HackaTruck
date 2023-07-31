//
//  ContentView.swift
//  D2
//
//  Created by Student14 on 28/07/23.
//

import SwiftUI

struct ContentView: View {
    @State var peso: Float = 0.0
    @State var altura: Float = 0.0
    @State var pesoS: String = ""
    @State var alturaS: String = ""
    @State var media: Float = 0.0
    @State var estado: String = ""
    @State var back = "branco"
    
    var body: some View {
        ZStack{
            Color(back)
            
            
            VStack{
                Text("Calculadora de IMC").font(.title)
                Spacer()
                TextField("Digite seu peso: ", text: $pesoS).multilineTextAlignment(.center).keyboardType(.decimalPad).frame(width: 350,height:40).background(.white).cornerRadius(8)
                
                Spacer()
                TextField("Digite sua altura: ", text: $alturaS).multilineTextAlignment(.center).keyboardType(.decimalPad).frame(width: 350,height:40).background(.white).cornerRadius(8).offset(y:-50)
             
                Button("Calcular") {
                    peso = Float(pesoS) ?? 0.0
                    altura = Float(alturaS) ?? 0.0
                    
                    media = peso/(altura*altura)
                    
                    if (media < 18.5){
                        self.back = "Baixo Peso"
                        self.estado = "BAIXO PESO"
                    } else if (media > 18.5 && media < 24.99){
                        self.back = "Normal"
                        self.estado = "NORMAL"
                    }else if (media > 25 && media < 29.99){
                        self.back = "Sobrepeso"
                        self.estado = "SOBREPESO"
                    }else{
                        self.back = "Obesidade"
                        self.estado = "OBESIDADE"
                    }
                    
                }.foregroundColor(.white).frame(width: 100, height: 40).background(.blue).cornerRadius(8)
                
                Spacer()
                Text("\(estado)")
                    
                Spacer()
                Image("tabela").resizable().scaledToFit()
                
            }
        }
        .ignoresSafeArea()
        //.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
