//
//  ContentView.swift
//  AlertComponentDemo
//
//  Created by JAVIER CALATRAVA LLAVERIA on 11/7/25.
//

import SwiftUI
import AlertComponent

struct ContentView: View {
    @State private var showAlert = false

    var body: some View {
        ZStack {
            Button("Mostrar Alerta") {
                showAlert = true
            }

            if showAlert {
                AlertView(
                    title: "Advertencia",
                    message: "Esta es una alerta personalizada.",
                    onDismiss: {
                        showAlert = false
                    }
                )
                .background(Color.black.opacity(0.4).ignoresSafeArea())
            }
        }
    }
}

#Preview {
    ContentView()
}
