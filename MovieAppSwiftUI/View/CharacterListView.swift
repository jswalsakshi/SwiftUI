//
//  CharacterListView.swift
//  MovieAppSwiftUI
//
//  Created by sakshi.j on 27/12/23.
//

import SwiftUI

struct CharacterListView: View {
    
    @StateObject var viewModel = MovieViewModel()
    
    var body: some View {
        
        NavigationView {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(viewModel.characters, id: \.id) { character in
                        CharacterCell(charater: character)
                    }
                }
                .padding()
                .task {
                    await viewModel.fetchCharacters()
                }
                .alert("", isPresented: $viewModel.hasError) {}
            message: {
                Text(viewModel.errorMessage)
            }
            }
            .navigationTitle("Ricky And Morty")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    CharacterListView()
}
