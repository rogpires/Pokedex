//
//  StatsViewGroup.swift
//  Pokedex
//
//  Created by Rogerio Pires on 28/05/22.
//

import SwiftUI
import Kingfisher

struct StatsViewGroup: View {
    var pokemon: Pokemon
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 300, height: 250)
                .foregroundColor(.white)
                .opacity(0.6)
               // .contrast(40)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 30) {
                StatView(pokemon: pokemon, statName: "atk", statColor: .blue, statValue: pokemon.attack)
                StatView(pokemon: pokemon, statName: "Def", statColor: .red, statValue: pokemon.defense)
                StatView(pokemon: pokemon, statName: "Hgt", statColor: .teal, statValue: pokemon.height)
                StatView(pokemon: pokemon, statName: "wgt", statColor: .cyan, statValue: pokemon.weight)
            }
        }
    }
}

struct StatsViewGroup_Previews: PreviewProvider {
    static var previews: some View {
        StatsViewGroup(pokemon: PokemonViewModel().MOCK_POKEMON )
    }
}
