//
//  Populer.swift
//  Resto
//
//  Created by Garry on 10/02/22.
//

import SwiftUI

struct Populer: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Belum di sorting")
                
                ForEach(restos) { resto in
                    RestaurantView(resto: resto)
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct Populer_Previews: PreviewProvider {
    static var previews: some View {
        Populer()
    }
}
