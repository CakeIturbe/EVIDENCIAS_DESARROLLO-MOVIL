//
//  File.swift
//  Pokedex
//
//  Created by Diego Iturbe on 13/09/23.
//

import Foundation

struct Pokedex: Codable {
    var count: Int
    var results: [Pokemon]
}

struct Pokemon: Codable {
    var name: String
    var url: String
}

struct Perfil: Codable {
    var sprites: Sprite
}

struct Sprite: Codable{
    var front_default: String
    var back_default: String
}

struct PokemonBase: Identifiable {
    var id: Int
    var pokemon: Pokemon
    var perfil: Perfil?
}


protocol NetworkAPIProtocol {
    // https://pokeapi.co/api/v2/pokemon/limit=1279
    func getPokemonList(limit: Int) async -> Pokedex?
    // https://pokeapi.co/api/v2/pokemon/{number_pokemon}/
    func getPokemonInfo(numberPokemon:Int) async -> Perfil?
}



