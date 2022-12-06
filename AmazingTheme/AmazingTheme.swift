//
//  AmazingTheme.swift
//  AmazingTheme
//
//  Created by Wouter Hennen on 04/12/2022.
//

import Foundation
import ExtensionFoundation
import ExtensionKit
import SwiftUI
import CodeEditKit


@main
struct AmazingTheme: SettingsExtension {

    init() {}

    var description: String = "This is a description of the extension"
    var entitlements: [Entitlement] = [.workspace]

    var body: some SettingsScene {
        GeneralSettingsScene {
            SettingsView()
        }
    }
}

struct SettingsView: View {
    @State var test = false
    
    var body: some View {
        Toggle("Test toggle", isOn: $test)
    }
}
