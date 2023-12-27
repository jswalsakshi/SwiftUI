//
//  CharacterCell.swift
//  MovieAppSwiftUI
//
//  Created by sakshi.j on 23/12/23.
//

import SwiftUI

struct CharacterCell: View {
    
    var charater: Character
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.cyan)
                .opacity(0.9)
                .frame(height: 120)
            
            HStack {
                AsyncImage(url: URL(string: charater.image)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: SCREEN_SIZE.width/3, height: 120)
                        .clipped()
                        .cornerRadius(25)
                } placeholder: {
                    ProgressView()
                        .frame(width: SCREEN_SIZE.width/3, height: 120
                        )
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(charater.name)
                        .font(.system(size: 16, weight: .semibold))
                    HStack(spacing: 8) {
                        Text("Status:")
                        Text(charater.status)
                    }
                    HStack(spacing: 8) {
                        Text("Species:")
                        Text(charater.species)
                    }
                    HStack(spacing: 8) {
                        Text("Gender:")
                        Text(charater.gender)
                    }
                    
                }
                .padding()
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0, 
                    maxHeight: .infinity,
                    alignment: .leading
                )
                Spacer()
            }
            .frame(height: 120)
        }
        .padding(.horizontal)
        //.padding(.vertical, 8)
    }
}

#Preview {
    CharacterCell(charater: Character(id: 1, name: "Rick Sanchez", status: "Alive", species: "Human", gender: "Male", image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg"))
}
