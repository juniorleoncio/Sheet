//
//  ContentView.swift
//  Sheets
//
//  Created by leoncio junior on 08/01/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var showSheet = false
    var body: some View {
        VStack {
            Button("Click Me") {
                showSheet.toggle()
            }
            
            Map()
        }
        .sheet(isPresented: $showSheet, content: {
            Text("Sheet 1")
                .presentationDetents([.height(200), .medium, .large])
                .presentationBackgroundInteraction(.enabled(upThrough: .medium))
        })
        .padding()
    }
}

#Preview {
    ContentView()
}
