//
//  Menu.swift
//  Futura
//
//  Created by Student16 on 21/08/23.
//

import SwiftUI

struct Menu: View {
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
                    Spacer()
                    VStack{
                        HStack{
                            NavigationLink(destination: ContentView()){
                                Text("Log out")
                                    .foregroundColor(Color.white)
                            }
                            Spacer()
                        }
                        NavigationLink(destination: Explorar()){
                            ZStack{
                                Rectangle()
                                .frame(width: 300, height: 60)
                                .foregroundColor(.blue).cornerRadius(15)
                                Text("Explorar Bolsa")
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                            }
                        }
                                        
                        NavigationLink(destination: ExplorarAc()){
                              ZStack{
                                  Rectangle()
                                  .frame(width: 300, height: 60)
                                  .foregroundColor(.blue).cornerRadius(15)
                                  Text("Explorar Acoes ")
                                      .font(.largeTitle)
                                      .foregroundColor(.white)
                              }
                          }
                        NavigationLink(destination: Investimentos()){
                              ZStack{
                                  Rectangle()
                                  .frame(width: 300, height: 60)
                                  .foregroundColor(.blue).cornerRadius(15)
                                  Text("Meus Investimentos")
                                      .font(.largeTitle)
                                      .foregroundColor(.white)
                              }
                          }
                                        Spacer()
                                    }
                                    
                                }
                    }.padding()
                .background(Color("Gray3"))
            
        }.navigationBarBackButtonHidden(true)
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
