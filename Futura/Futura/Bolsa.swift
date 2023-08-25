//
//  Bolsa.swift
//  Futura
//
//  Created by Student16 on 22/08/23.
//

import SwiftUI

struct Bolsa: View {
    var ticke : String
    @ObservedObject var tickApiCall = tickerAPI()
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
                            NavigationLink(destination: Investimentos()){
                                ZStack{
                                    Rectangle().frame(width: 100, height: 30).foregroundColor(.blue).cornerRadius(10)
                                    Text("Seguir").foregroundColor(.white)
                                }
                            }
                        }
                        //A Bovespa Exemplo sai para mostrar o nome da bolsa
                        
                        ScrollView{
                                VStack{
                                    ForEach(tickApiCall.recebidos, id:\.self){ index in
                                        VStack{
                                            Text("Nome: \(index.longName!)")
                                                
                                            
                                            //grafico
                                            
                                            //fim grafico
                                            Text("Variaçao diaria: \(index.regularMarketDayRange!)")
                                            
                                            Text("Duas semanas: \(index.fiftyTwoWeekRange!)")
                                            let sub = index.fiftyTwoWeekHigh! - index.fiftyTwoWeekLow!
                                            
                                            AsyncImage(url: URL(string: "https://poderdoinvestimento.com/wp-content/uploads/2020/09/MUDAN%C3%87AS-TENDENCIA-MEDIAS.png")).scaleEffect(0.5)
                                            
                                            if(index.fiftyTwoWeekLow! > index.fiftyTwoWeekHigh!){
                                                Text("Reducao de: \(sub)%")
                                            }else{
                                                Text("Subiu : \(index.fiftyTwoWeekHigh! - index.fiftyTwoWeekLow!)%")
                                            }
                                        }.foregroundColor(.white)
                                    }
                                }
                        }
                    }
                }
            }
            .padding()
            .background(Color("Gray3"))
        }.onAppear{
            tickApiCall.fetch(tick: ticke)}
    }
}

struct Bolsa_Previews: PreviewProvider {
    static var previews: some View {
        Bolsa(ticke: "^BVSP")
    }
}
