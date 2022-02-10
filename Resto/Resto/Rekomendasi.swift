//
//  Rekomendasi.swift
//  Resto
//
//  Created by Garry on 10/02/22.
//

import SwiftUI

struct Rekomendasi: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("ini juga belum di sorting")
                
                ForEach(restos) { resto in
                    RestaurantView(resto: resto)
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct Rekomendasi_Previews: PreviewProvider {
    static var previews: some View {
        Rekomendasi()
    }
}
