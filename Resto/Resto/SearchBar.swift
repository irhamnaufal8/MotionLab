//
//  SearchBar.swift
//  Resto
//
//  Created by Garry on 02/02/22.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
     
    @State private var isEditing = false
     
        var body: some View {
            HStack {
     
                HStack {
                    Image(systemName: "magnifyingglass")
                        .font(.system(.title2))
                        .foregroundColor(.black)
                        .opacity(0.5)
                        .padding(.horizontal, 1)
                    
                    TextField("Mau makan apa hari ini?", text: $text)
                        .font(.system(size: 14))
                        .padding(.horizontal, 4)
                        .onTapGesture {
                            self.isEditing = true
                    }
                }
                .padding(.horizontal, -10)
                .frame(maxHeight: 45)
                .padding(.horizontal, 25)
                .background(Color("abu1"))
                .cornerRadius(2)
                .padding()
     
                if isEditing {
                    Button(action: {
                        self.isEditing = false
                        self.text = ""
     
                    }) {
                        Text("Cancel")
                            .foregroundColor(Color("ijo"))
                            .padding(.leading, -10)
                    }
                    .padding(.trailing)
                    .transition(.move(edge: .trailing))
                    .animation(.default)
                }
            }
        }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}
