//
//  SettingsPage.swift
//  T&S
//
//  Created by  Adam-James  Cooper on 2024-06-07.
//

import SwiftUI

struct SettingsPage: View {
    @State private var notificationsEnabled = true
    @State private var selectedTheme = "Light"
    @State private var username = ""

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $notificationsEnabled) {
                        Text("Enable Notifications")
                    }
                    Picker("Theme", selection: $selectedTheme) {
                        Text("Light").tag("Light")
                        Text("Dark").tag("Dark")
                    }
                }
                
                Section(header: Text("Account")) {
                    TextField("Username", text: $username)
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsPage()
}
