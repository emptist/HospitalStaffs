//
//  ContentView.swift
//  Shared
//
//  Created by jk on 2021/2/12.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        VStack {
            Text("hello world")
            DefaultContent()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
