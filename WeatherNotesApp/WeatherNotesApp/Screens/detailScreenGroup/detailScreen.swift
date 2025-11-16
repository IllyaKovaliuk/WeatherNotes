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
        if note.weather != nil {
            VStack{
                Text(note.weather!.city)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(40)
                
                Image(systemName: note.weather!.icon)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .padding(100)
                Spacer()
                HStack{
                    Text("\(note.weather!.temperature, specifier: "%.1f")°")
                    Text("|")
                    Text(note.weather!.condition)
                        
                }
                .font(.title)
                .foregroundStyle(.primary)
                Spacer()
                
            }
        }
    }
}

#Preview {
    NavigationView{
        detailNoteScreen(note: testData[0])
    }
}
