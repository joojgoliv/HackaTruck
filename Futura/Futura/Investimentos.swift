//
//  Investimentos.swift
//  Futura
//
//  Created by Student16 on 22/08/23.
//

import SwiftUI

struct Investimentos: View {
    @State var acaoSeguir: String = ""
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    HStack{
                        Text("Futur")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
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
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .offset(y:-20)
                        Spacer()
                    }
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .offset(y:-20)
                        .foregroundColor(Color.white)
                    Spacer()
                    VStack{
                        HStack{
                            NavigationLink(destination: Menu()){
                                Text("Go Back")
                                    .foregroundColor(Color.white)
                                Spacer()
                            }
                        }
                        VStack {
                            NavigationLink(destination: Bolsa(ticke: "NVDC34")){
                                ZStack{
                                    Rectangle().frame(width: 250, height: 30).cornerRadius(10)
                                    Text("NVDC34").foregroundColor(.white)
                                }
                            }
                            
                            NavigationLink(destination: Bolsa(ticke: "ITLC34")){
                                ZStack{
                                    Rectangle().frame(width: 250, height: 30).cornerRadius(10)
                                    Text("ITLC34").foregroundColor(.white)
                                }
                            }
                            
                            NavigationLink(destination: Bolsa(ticke: "A1MD34")){
                                ZStack{
                                    Rectangle().frame(width: 250, height: 30).cornerRadius(10)
                                    Text("A1MD34").foregroundColor(.white)
                                }
                            }
                            NavigationLink(destination: Bolsa(ticke: "GOGL34")){
                                ZStack{
                                    Rectangle().frame(width: 250, height: 30).cornerRadius(10)
                                    Text("GOGL34").foregroundColor(.white)
                                }
                            }
                            
                        }
                        Spacer()

                    }
                }
            }
            .padding()
            .background(Color("Gray3"))
        }.navigationBarBackButtonHidden(true)
    }
}

struct Investimentos_Previews: PreviewProvider {
    static var previews: some View {
        Investimentos()
    }
}
