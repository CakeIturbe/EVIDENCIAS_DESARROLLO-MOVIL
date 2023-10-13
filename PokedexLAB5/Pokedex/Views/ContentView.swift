//
//  ContentView.swift
//  Pokedex
//
//  Created by Diego Iturbe on 12/09/23.
//

import SwiftUI
import SDWebImageSwiftUI


struct ContentView: View {
    @StateObject var contentViewModel = ContentViewModel()
    var body: some View {
        List(contentViewModel.pokemonList) { pokemonBase in
            HStack {
                WebImage(url: URL(string: pokemonBase.perfil?.sprites.front_default ?? ""))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                Text(pokemonBase.pokemon.name)
            }
            
            }
        .onAppear {
            Task {
                print ("esperando")
                await contentViewModel.getPokemonList()
            }
            
        }
        
    }

}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
