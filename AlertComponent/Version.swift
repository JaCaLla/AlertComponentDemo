//
//  Version.swift
//  AlertComponent
//
//  Created by JAVIER CALATRAVA LLAVERIA on 11/7/25.
//
import Foundation

import Foundation

public enum AlertComponentVersion {
    public static var current: String {
        let bundle: Bundle

        #if SWIFT_PACKAGE
        bundle = Bundle.module
        #else
        bundle = Bundle(for: Dummy.self)
        #endif

        return bundle.infoDictionary?["CFBundleShortVersionString"] as? String ?? "Unknown"
    }

    private class Dummy {}
}
