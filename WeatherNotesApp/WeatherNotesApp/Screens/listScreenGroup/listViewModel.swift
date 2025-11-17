//
//  listViewModel.swift
//  WeatherNotesApp
//
//  Created by Illya Kovaliuk on 15.11.2025.
//
import Foundation

class listViewModel: ObservableObject {
    @Published var notes: [NoteModel] = []

    init() {
        loadNotes()
    }

    func loadNotes() {
        if let data = UserDefaults.standard.data(forKey: "savedNotes"),
           let decoded = try? JSONDecoder().decode([NoteModel].self, from: data) {
            self.notes = decoded
        }
    }
}
