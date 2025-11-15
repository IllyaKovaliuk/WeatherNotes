//
//  detailScreen.swift
//  WeatherNotesApp
//
//  Created by Illya Kovaliuk on 15.11.2025.
//

import Foundation
import SwiftUI

struct detailNoteScreen: View {
    var note: NoteModel
    var body: some View{
        Text(note.title)
    }
}

#Preview {
    NavigationView{
        detailNoteScreen(note: testData[0])
    }
}
