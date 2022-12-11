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

    @CEEnvironment(\.testkey) var testkey
    @CEEnvironment(\.testkey2) var testkey2
    @CEEnvironment(\.complexValue) var complexValue

    var body: some View {
        ForEach(complexValue, id: \.self) {
            Text($0)
        }
        .foregroundColor(.accentColor)

        Toggle("Test toggle", isOn: $test)

        Toggle("Testkey", isOn: .constant(testkey))
        Toggle("Testkey2", isOn: .constant(testkey2))

    }
}
