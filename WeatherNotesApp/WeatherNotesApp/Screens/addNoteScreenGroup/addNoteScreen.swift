//
//  addNoteScreen.swift
//  WeatherNotesApp
//
//  Created by Illya Kovaliuk on 15.11.2025.
//

import Foundation
import SwiftUI

struct AddNoteScreen: View {
    @ObservedObject var viewModel: AddNoteViewModel

    var body: some View {
        VStack {
            TextField("Title", text: $viewModel.title)
                .textFieldStyle(.roundedBorder)

            TextField("City", text: $viewModel.city)
                .textFieldStyle(.roundedBorder)

            TextField("Date", text: $viewModel.date)
                .textFieldStyle(.roundedBorder)

            Button("Save") {
                viewModel.addNote()
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
        .padding()
    }
}

#Preview {
    AddNoteScreen(viewModel: AddNoteViewModel())
}
