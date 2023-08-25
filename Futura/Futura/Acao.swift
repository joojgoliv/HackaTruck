//
//  Acao.swift
//  Futura
//
//  Created by Student16 on 22/08/23.
//

import SwiftUI

struct Acao: View {
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    HStack{
                        Text("Futur")
                            .font(.largeTitle)
                            .foregroundColor(.white)
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
                            .foregroundColor(.white)
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
                            Spacer()
                        }
                        ScrollView{
                            Text("Petr4 Exemplo")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .bold()
                            ZStack{
                                Rectangle()
                                    .frame(width: 300, height: 200)
                                    .foregroundColor(Color.white)
                                Text("Grafico da Acao")
                                    .font(.largeTitle)
                                    .bold()
                            }
                            Text("Porque Investir")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .bold()
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non efficitur neque, sit amet scelerisque odio. Praesent egestas metus posuere augue dictum, fermentum tristique orci ultricies. Phasellus tempus ligula in urna interdum sollicitudin quis ut libero. Donec ornare est ultrices rhoncus mollis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dolor eros, efficitur eu risus eget, molestie egestas sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi purus lectus, porttitor vel sagittis dignissim, laoreet id ipsum. ")
                                .foregroundColor(.white)
                        }
                        }
                }
            }
                .padding()
                .background(Color("Gray3"))
        }.navigationBarBackButtonHidden(true)
    }
}

struct Acao_Previews: PreviewProvider {
    static var previews: some View {
        Acao()
    }
}
