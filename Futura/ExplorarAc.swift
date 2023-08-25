//
//  Explorar.swift
//  Futura
//
//  Created by Student16 on 21/08/23.
//

import SwiftUI

struct ExplorarAc: View {
    @ObservedObject var funcApiCall = funcAPI()
//    @ObservedObject var tickApiCall = tickerAPI()
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
                        NavigationLink(destination: Menu()){
                            Text("Go back")
                                .foregroundColor(Color.white)
                            Spacer()
                        }
                        Spacer()
                        
                        ScrollView{
                            VStack{
                                ForEach(funcApiCall.test2, id:\.self){ st in
                                    NavigationLink(destination: Bolsa(ticke: st.stock!)){
                                        ZStack{
                                            Rectangle().frame(width: 250, height: 30).cornerRadius(10)
                                            Text(st.name!).foregroundColor(.white)
                                            
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .padding()
            .background(Color("Gray3"))
        }.onAppear{
            funcApiCall.fetch()
        }
    }
}

struct ExplorarAc_Previews: PreviewProvider {
    static var previews: some View {
        ExplorarAc()
    }
}
