//
//  PokemonAPIProtocol.swift
//  Pokedex
//
//  Created by Diego Iturbe on 13/09/23.
//

import Foundation

//https://pokeapi.co/api/v2/pokemon/limit=1279
protocol PokemonAPIProtocol {
    func getPokemonList(limit: Int) async -> Pokedex?
}
