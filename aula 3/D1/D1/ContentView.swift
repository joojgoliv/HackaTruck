//
//  ContentView.swift
//  D1
//
//  Created by Student14 on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                TabView{
                    TelaLista().tabItem{
                        Label("Listas", systemImage: "tray.and.arrow.down.fill")
                    }
                    
                    TelaHello().tabItem{
                        Label("Hello!", systemImage: "house.fill")
                    }
                    
                    
                    TelaScroll().tabItem{
                        Label("Scroll", systemImage: "folder.fill")
                    }
                    
                    Tela1().tabItem{
                        Label("Extra", systemImage: "fleuron.fill")
                    }
                    
                    Tela2().tabItem{
                        Label("Extra2", systemImage: "arrow.triangle.2.circlepath.camera")
                    }
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
