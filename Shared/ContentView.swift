//
//  ContentView.swift
//  Shared
//
//  Created by jk on 2021/9/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Sidebar()
            Text("content")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Sidebar: View {
    var body: some View {
        Text("Side Bar")
    }
}
