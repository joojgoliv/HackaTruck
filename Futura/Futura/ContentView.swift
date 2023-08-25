//
//  ContentView.swift
//  Futura
//
//  Created by Student16 on 18/08/23.
//

import SwiftUI

struct ContentView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var isLoggedIn: Bool = false

    var body: some View {
        
        NavigationStack{
            ZStack {
                
                VStack {
                    HStack {
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
                    Spacer()
                    VStack {
                        TextField("email@email.com", text: $email)
                            .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        SecureField("*********", text: $password)
                            .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    Spacer()
                    NavigationLink(destination: Menu()){
                        Text("Login")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }
            .padding()
            .background(Color("Gray3"))

        }.navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

