//
//  addNoteViewModel.swift
//  WeatherNotesApp
//
//  Created by Illya Kovaliuk on 15.11.2025.
//

import Foundation

class AddNoteViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var city: String = ""
    @Published var date: String = ""
    @Published var notes: [NoteModel] = []

    let weatherService = WeatherService()

    init() {
        loadNotes()
    }

    func addNote() {
        weatherService.fetchWeather(for: city) { weather in
            guard let weather = weather else { return }

            let newNote = NoteModel(
                title: self.title,
                createTime: self.date,
                weather: weather
            )

            self.notes.append(newNote)
            self.saveNotes()
        }
    }

    func saveNotes() {
        if let encoded = try? JSONEncoder().encode(notes) {
            UserDefaults.standard.set(encoded, forKey: "savedNotes")
        }
    }

    func loadNotes() {
        if let data = UserDefaults.standard.data(forKey: "savedNotes"),
           let decoded = try? JSONDecoder().decode([NoteModel].self, from: data) {
            self.notes = decoded
        }
    }
}
