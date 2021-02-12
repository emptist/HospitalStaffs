//
//  HospitalStaffsApp.swift
//  Shared
//
//  Created by jk on 2021/2/12.
//

import SwiftUI

@main
struct HospitalStaffsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
