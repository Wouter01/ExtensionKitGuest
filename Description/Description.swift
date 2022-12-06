//
//  Description.swift
//  Description
//
//  Created by Wouter Hennen on 04/12/2022.
//

import Foundation
import ExtensionFoundation
import CodeEditKit
import SwiftUI

@main
public struct Description: TransformExtension {

    public init() {}

    public func reverse(_ input: String) async throws -> String {
        String(input.reversed())
    }

    public func replace(_ input: String, with: Hello) async throws -> String {
        switch with {
        case .hello:
            return "Hello"
        case .bonjour:
            return "Bonjour"
        case .hallo:
            return "Hallo"
        }
    }

    public func save(_ input: String, to: URL, override: Bool) async throws -> Result<URL, Error> {
        .success(.applicationDirectory)
    }
}
