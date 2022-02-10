//
//  LastSeenView.swift
//  LabMotion
//
//  Created by Garry on 10/02/22.
//

import SwiftUI

struct LastSeenView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [
            NSSortDescriptor(keyPath: \UniversityModel.name, ascending: true)
        ], animation: .default
    )
    private var items: FetchedResults<UniversityModel>
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items) { item in
                    Text(item.name ?? "")
                }.onDelete(perform: deletItems)
            }
            .navigationTitle("Last Seen")
        }
    }
    
    private func deletItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0]
                
            }.forEach(viewContext.delete)
            
            do {
                try viewContext.save()
            } catch {
                let nsError = error as NSError
                debugPrint(nsError)
            }
        }
    }
}

struct LastSeenView_Previews: PreviewProvider {
    static var previews: some View {
        LastSeenView()
    }
}
