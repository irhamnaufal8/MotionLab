//
//  RestaurantView.swift
//  Resto
//
//  Created by Garry on 03/02/22.
//

import SwiftUI

struct RestaurantView: View {
    var resto: Resto = restos[0]
    
    var body: some View {
        HStack {
            Image(resto.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
            
            VStack {
                HStack {
                    Text(resto.name)
                        .font(.system(size: 16))
                        .fontWeight(.semibold)
                    
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.vertical, 2)
                
                HStack {
                    HStack(spacing: 0) {
                        ForEach(1...resto.onStar, id: \.self) {_ in
                            Image(systemName: "star.fill")
                                .foregroundColor(Color("kuning"))
                                .font(.system(size: 12.36))
                        }
                        
                        ForEach(1...resto.offStar, id: \.self) {_ in
                            Image(systemName: "star.fill")
                                .foregroundColor(Color("abu1"))
                                .font(.system(size: 12.36))
                        }
                    }

                    Text(resto.rateLabel)
                        .foregroundColor(Color("abu2"))
                        .font(.system(size: 12))
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                HStack {
                    Text(resto.distance)
                        .font(.system(size: 14))
                        .fontWeight(.semibold)
                    
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.vertical, 2)
            }
        }
    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView()
    }
}
