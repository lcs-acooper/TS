//
//  SettingsPage.swift
//  T&S
//
//  Created by  Adam-James  Cooper on 2024-06-07.
//

import SwiftUI

struct SettingsPage: View {
    @State private var notificationsEnabled = true
    @State var isDarkMode = false
    @State private var username = ""

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $notificationsEnabled) {
                        Text("Enable Notifications")
                    }
                
                    Toggle(isOn: $isDarkMode) {
                        Text("Dark Mode")
                    }
                }
                
                Section(header: Text("Account")) {
                    TextField("Username", text: $username)
                }
            }
            .navigationTitle("Settings")
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}

#Preview {
    SettingsPage()
}

