//
//  Terbaru.swift
//  Resto
//
//  Created by Garry on 10/02/22.
//

import SwiftUI

struct Terbaru: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(restos) { resto in
                    RestaurantView(resto: resto)
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct Terbaru_Previews: PreviewProvider {
    static var previews: some View {
        Terbaru()
    }
}
