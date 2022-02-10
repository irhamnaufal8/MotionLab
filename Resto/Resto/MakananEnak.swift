//
//  MakananEnak.swift
//  Resto
//
//  Created by Garry on 10/02/22.
//

import SwiftUI

struct MakananEnak: View {
    @State var currentTab: Int = 0
    
    var body: some View {
        VStack {
            HStack {
                Text("Wah ada resto enak, loh!")
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.top)
            .padding(.bottom, 4)
            .padding(.horizontal)
            
            HStack {
                Text("Yuk cobain!")
                    .font(.system(size: 14))
                
                Spacer()
            }
            .padding(.horizontal)
            
            ZStack {
                Rectangle()
                    .frame(maxHeight: 1)
                    .padding(.horizontal)
                    .padding(.top, 30)
                    .foregroundColor(Color("abu1"))
                
                TabBarView(currentTab: self.$currentTab)
            }
            .padding(.top)
            
            TabView(selection: self.$currentTab) {
                Terbaru().tag(0)
                    .padding(.top, 17)
                Populer().tag(1)
                Rekomendasi().tag(2)
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .never))
        }
    }
}

struct MakananEnak_Previews: PreviewProvider {
    static var previews: some View {
        MakananEnak()
    }
}

struct TabBarView: View {
    @Binding var currentTab: Int
    @Namespace var namespace
    
    var tabBarOption: [String] = ["Terbaru", "Populer", "Rekomendasi"]
    var body: some View {
        VStack {
            HStack {
                ForEach(Array(zip(self.tabBarOption.indices, self.tabBarOption)),
                
                        id: \.0,
                        content: {
                    index, name in
                    TabBarItem(currentTab: self.$currentTab,
                               namespace: namespace.self,
                               tabBarItemName: name,
                               tab: index)
                })
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: 20, alignment: .leading)
        .padding(.horizontal)
    }
}

struct TabBarItem: View {
    @Binding var currentTab: Int
    let namespace: Namespace.ID
    
    var tabBarItemName: String
    var tab: Int
    
    var body: some View {
        Button {
            self.currentTab = tab
        } label: {
            VStack {
                Spacer()
                Text(tabBarItemName)
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                    .foregroundColor(Color((currentTab != tab) ? "abu2" : "ijo"))
                    .frame(alignment: .leading)
                
                if currentTab == tab {
                    Color("ijo")
                        .frame(height: 3)
                        .matchedGeometryEffect(id: "underline",
                                               in: namespace,
                                               properties: .frame)
                } else {
                    Color.clear.frame(height: 3)
                }
            }
            .animation(.spring(), value: self.currentTab)
        }
    }
}
