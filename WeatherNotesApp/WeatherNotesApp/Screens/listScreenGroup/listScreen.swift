//
//  listScreen.swift
//  WeatherNotesApp
//
//  Created by Illya Kovaliuk on 15.11.2025.
//

import Foundation
import SwiftUI

struct listView: View {
    @ObservedObject var viewModel: listViewModel
    var body: some View{
        NavigationView{
            List{
                ForEach(viewModel.list){ note in
                    noteUnit(note: note)
                    
                }
            }
            .navigationTitle("Notes list")
        }
        
    }
}

#Preview {
    listView(viewModel: testlist)
}


struct noteUnit: View {
    var note: NoteModel
    var body: some View {
        NavigationLink(destination: detailNoteScreen(note: note)){
            HStack{
                Image(note.weatherIcon)
                VStack{
                    Text(note.title)
                    Text(note.createTime)
                }
                Spacer()
                
                Text(String(note.weatherTemp))
            }
        }
    }
}
