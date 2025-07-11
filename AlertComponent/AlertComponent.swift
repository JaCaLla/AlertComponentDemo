//
//  AlertComponent.swift
//  AlertComponent
//
//  Created by JAVIER CALATRAVA LLAVERIA on 11/7/25.
//

import SwiftUI

public struct AlertView: View {
    let title: String
    let message: String
    let dismissText: String
    let onDismiss: () -> Void

    public init(title: String, message: String, dismissText: String = "OK", onDismiss: @escaping () -> Void) {
        self.title = title
        self.message = message
        self.dismissText = dismissText
        self.onDismiss = onDismiss
    }

    public var body: some View {
        VStack(spacing: 20) {
            Text(title)
                .font(.headline)
                .padding(.top)

            Text(message)
                .font(.body)

            Text("v\(AlertComponentVersion.current)")
                .font(.caption)
                .foregroundColor(.gray)

            Button(action: onDismiss) {
                Text(dismissText)
                    .bold()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(radius: 10)
        .padding()
    }
}


