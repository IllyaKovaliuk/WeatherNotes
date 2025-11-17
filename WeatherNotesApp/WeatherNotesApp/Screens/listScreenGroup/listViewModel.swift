//
//  listViewModel.swift
//  WeatherNotesApp
//
//  Created by Illya Kovaliuk on 15.11.2025.
//

import Foundation

class listViewModel: ObservableObject {
    @Published var list: [NoteModel]
    
    init(list: [NoteModel]) {
        self.list = list
    }
}
let testlist = listViewModel(list: testData)
