//
//  ContentView.swift
//  WeatherNotesApp
//
//  Created by Illya Kovaliuk on 15.11.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
                    listView(viewModel: listViewModel())
                }
    }
}

#Preview {
    ContentView()
}
