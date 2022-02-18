class Api::PokemonController < ApplicationController

    def index 
        @pokemons = Pokemon.all
        # render :json
    end

    def show 

    end

end
