class Api::PokemonController < ApplicationController

    def index 
        @pokemons = Pokemon.all
        render :index 
    end

    def show 
        @pokemon = Pokemon.find(params[:id])
        if @pokemon
            render :show
        end
    end

end
