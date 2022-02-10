//
//  Eksplor.swift
//  Resto
//
//  Created by Garry on 03/02/22.
//

import SwiftUI

struct Eksplor: View {
    
    @State var currentIndex: Int = 0
    @State var item: [Item] = []
    @State private var searchText = ""
    @State var currentTab: Int = 0
    
    var body: some View {
        
        
        VStack {
            VStack {
                VStack {
                    HStack {
                        Image(systemName: "arrow.left")
                            .font(.system(.title2))
                            .padding()
                        
                        VStack {
                            HStack {
                                Text("Alamatmu")
                                    .font(.system(size: 14))
                                
                                Spacer()
                            }
                            
                            HStack {
                                Text("Jl. Soekarno Hatta No. 4, Madiun")
                                    .font(.system(size: 14))
                                .fontWeight(.semibold)
                                
                                Spacer()
                            }
                        }
                        
                        Image(systemName: "clock.arrow.circlepath")
                            .font(.system(.title2))
                            .padding()
                        
                        Spacer()
                    }
                    SearchBar(text: $searchText)
                        .padding(.vertical, -20)
                    
                    Spacer()
                }
                .frame(maxHeight: 155)
                .background(.white)
                .padding(.bottom, -30)
            }
            
            ScrollView(showsIndicators: false) {
                VStack {
                    VStack {
                        
                        
                        SnapCarousel(spacing: 16, index: $currentIndex, items: item) { promo in
                            GeometryReader { proxy in
                                Image(promo.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                        }
                        .padding(.top)
                        .padding(.bottom, 10)
                        
                        // Indicator
                        HStack(spacing: 4) {
                            ForEach(item.indices, id: \.self) { index in
                                Circle()
                                    .fill(Color(currentIndex == index ? "ijo" : "abu1"))
                                    .frame(width: 8, height: 8)
                                    .animation(.spring(), value: currentIndex == index)
                            }
                        }
                    }
                    
                    VStack {
                        HStack {
                            Text("Pilih kategori")
                                .font(.system(size: 16))
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            Text("Lihat semua")
                                .font(.system(size: 14))
                                .foregroundColor(Color("ijo"))
                        }
                        .padding()
                        
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 70), spacing: 16)]) {
                            ForEach(icons) { icon in
                                    IconView(icon: icon)
                                    
                                }
                        }
                        .padding(.horizontal)
                    }
                    
                    VStack {
                        HStack {
                            Text("Voila Promo!")
                                .font(.system(size: 16))
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            Text("Lihat semua")
                                .font(.system(size: 14))
                                .foregroundColor(Color("ijo"))
                        }
                        .padding(.top)
                        .padding(.bottom, 4)
                        .padding(.horizontal)
                        
                        HStack {
                            Text("Ada promo apa ya di sini?")
                                .font(.system(size: 14))
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 0) {
                                ForEach(squarePromo) { square in
                                    PromoCardView(square: square)
                                }
                            }
                            .frame(height: 170)
                            .padding(.horizontal, 7)
                        }
                    }
                    
                    MakananEnak()

                }
                .onAppear {
                    if item.isEmpty {
                        for index in 1...landscapePromo.count {
                            item.append(Item(image: "card promo \(index)"))
                        }
                    }
                }
            }
        }
    }
}

struct Eksplor_Previews: PreviewProvider {
    static var previews: some View {
        Eksplor()
    }
}
