//
//  noteModel.swift
//  WeatherNotesApp
//
//  Created by Illya Kovaliuk on 15.11.2025.
//

import Foundation

struct NoteModel: Identifiable {
    var id = UUID()
    var title: String
    var createTime: String
    var weatherTemp: Double
    var weatherIcon: String
}

var testData = [
    NoteModel(title: "Go for a walk", createTime: "15.11.25", weatherTemp: 20.0, weatherIcon: "circle.fill"),
    NoteModel(title: "Cycling", createTime: "16.11.25", weatherTemp: 18.0, weatherIcon: "sun.min.fill"),
    NoteModel(title: "Runing club", createTime: "17.11.25", weatherTemp: 10.0, weatherIcon: "sun.haze"),
    NoteModel(title: "Phone to mother from work", createTime: "15.11.25", weatherTemp: 24.0, weatherIcon: "moon.fill")
]
