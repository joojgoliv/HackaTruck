//
//  TelaHello.swift
//  D1
//
//  Created by Student14 on 31/07/23.
//

import SwiftUI

struct TelaHello: View {
    var body: some View {
        VStack{
            Text("Hello, HackaTruck").frame(width: 300, height: 300).background(.blue)
        }
    }
}

struct TelaHello_Previews: PreviewProvider {
    static var previews: some View {
        TelaHello()
    }
}
