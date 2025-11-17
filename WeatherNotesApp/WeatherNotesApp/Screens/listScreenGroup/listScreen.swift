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
        ZStack{
            NavigationView{
                List{
                    ForEach(viewModel.list){ note in
                        noteUnit(note: note)
                    }
                }
                .navigationTitle("Notes list")
            }
        }
//        .background{
//            Color.teal.opacity(0.3)
//                .ignoresSafeArea()
//        }
//        .foregroundColor()
            
            CrudButton()
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
                if let weather = note.weather{
                    Image(systemName: weather.icon)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 30)
                }
                VStack(alignment: .leading){
                    Text(note.title)
                        .font(.headline)
                        .foregroundStyle(.primary)
                    Text(note.createTime)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                Spacer()
                if let weather = note.weather{
                    Text("\(weather.temperature, specifier: "%.1f")°")
                }
            }
        }
    }
}


struct CrudButton: View {
    var body: some View{
        Text("Button")
    }
}

struct BackgroudView: View {
    @Binding var isNight: Bool
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : .white]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}




