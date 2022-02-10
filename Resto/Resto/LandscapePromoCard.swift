//
//  LandscapePromoCard.swift
//  Resto
//
//  Created by Garry on 03/02/22.
//

import SwiftUI

struct LandscapePromoCard: View {
    var landscape: Item = landscapePromo[0]
    
    var body: some View {
        Image(landscape.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct LandscapePromoCard_Previews: PreviewProvider {
    static var previews: some View {
        LandscapePromoCard()
    }
}
