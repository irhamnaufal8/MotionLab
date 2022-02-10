//
//  IconView.swift
//  Resto
//
//  Created by Garry on 03/02/22.
//

import SwiftUI

struct IconView: View {
    var icon: Icon = icons[2]
    
    var body: some View {
        VStack {
            Image(icon.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.top,8)
            Text(icon.name)
                .font(.system(size: 10))
                .padding(.bottom, 7)
        }
        .frame(maxWidth: .infinity, maxHeight: 70)
        .overlay(RoundedRectangle(cornerRadius: 4)
                    .stroke(Color("abu1"), lineWidth: 1))
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView()
    }
}
