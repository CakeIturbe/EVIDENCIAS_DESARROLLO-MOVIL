//
//  ContentViewModel.swift
//  Pokedex
//
//  Created by Diego Iturbe on 17/09/23.
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var pokemonList = [PokemonBase]()
    
    @MainActor
    func getPokemonList() async {
        let pokemonRepository = PokemonRepository()
        let result = await pokemonRepository.getPokemonList(limit: 15)!.results
        for pokemon in result {
            let numberPokemon = Int(pokemon.url.split(separator: "/")[5])!
            
            let infoPokemon = await pokemonRepository.getPokemonInfo(numberPokemon: numberPokemon)
            pokemonList.append(PokemonBase(id: numberPokemon, pokemon: pokemon, perfil: infoPokemon))
        }
    }
}
