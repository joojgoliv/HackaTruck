//
//  TelaLista.swift
//  D1
//
//  Created by Student14 on 31/07/23.
//

import SwiftUI

struct TelaLista: View {
    var cont: Int = 1
    
    var body: some View {
        VStack{
            List{
                ForEach(1..<20){ index in
                    Text("Item \(index)")
                }
            }
        }
    }
}

struct TelaLista_Previews: PreviewProvider {
    static var previews: some View {
        TelaLista()
    }
}
