//
//  PromoCardView.swift
//  Resto
//
//  Created by Garry on 03/02/22.
//

import SwiftUI

struct PromoCardView: View {
    var square: Item = squarePromo[0]
    var body: some View {
        Image(square.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: 160)
    }
}

struct PromoCardView_Previews: PreviewProvider {
    static var previews: some View {
        PromoCardView()
    }
}
