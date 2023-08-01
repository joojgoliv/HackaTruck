//
//  TelaScroll.swift
//  D1
//
//  Created by Student14 on 31/07/23.
//

import SwiftUI

struct TelaScroll: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: -100) {
                ForEach(0..<10) { index in
                    Image(systemName: "star").resizable().scaledToFit().scaleEffect(0.6)
                    Image(systemName: "moon.stars").resizable().scaledToFit().scaleEffect(0.6)
                    Image(systemName: "figure.yoga").resizable().scaledToFit().scaleEffect(0.6)
                    Image(systemName: "tropicalstorm.circle.fill").resizable().scaledToFit().scaleEffect(0.6)
                }
            }
        }
    }
}

struct TelaScroll_Previews: PreviewProvider {
    static var previews: some View {
        TelaScroll()
    }
}
