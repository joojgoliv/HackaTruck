//
//  destaques.swift
//  Futura
//
//  Created by Student16 on 22/08/23.
//

import SwiftUI

struct destaques: View {
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    HStack{
                        Text("Futur")
                            .foregroundColor(Color.white)
                            .font(.largeTitle)
                            .bold() +
                        Text("a")
                            .bold()
                            .font(.largeTitle)
                            .foregroundColor(Color.blue)
                        Spacer()
                        Rectangle()
                            .frame(width: 120, height: 30)
                            .foregroundColor(Color.blue)
                            .cornerRadius(10)
                    }
                    HStack {
                        Text("Investimentos")
                            .foregroundColor(Color.white)
                            .font(.largeTitle)
                            .offset(y:-20)
                        Spacer()
                    }
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .offset(y:-20)
                        .foregroundColor(Color.white)
                    VStack{
                        HStack{
                            NavigationLink(destination: Menu()){
                                Text("Go Back")
                                    .foregroundColor(Color.white)
                            }
                            Spacer()
                        }
                        ScrollView{
                            VStack{
                                Text("Nvidia Exemplo")
                                    .font(.largeTitle)
                                    .bold()
                                    .foregroundColor(Color.white)
                                ZStack{
                                    Rectangle()
                                        .frame(width: 300, height: 200)
                                        .foregroundColor(Color.white)
                                    Text("Grafico da Bolsa")
                                        .font(.largeTitle)
                                        .bold()
                                        .foregroundColor(Color.black)
                                }
                            }
                            VStack{
                                Text("Petr4 Exemplo")
                                    .font(.largeTitle)
                                    .bold()
                                    .foregroundColor(Color.white)
                                ZStack{
                                    Rectangle()
                                        .frame(width: 300, height: 200)
                                        .foregroundColor(Color.white)
                                    Text("Grafico da Bolsa")
                                        .font(.largeTitle)
                                        .bold()
                                        .foregroundColor(Color.black)
                                }
                            }
                        }
                    }
                }
            }
                .padding()
                .background(Color("Gray3"))
        }.navigationBarBackButtonHidden(true)
    }
}

struct destaques_Previews: PreviewProvider {
    static var previews: some View {
        destaques()
    }
}
