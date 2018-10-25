class PokemonsController < ApplicationController
    def capture
        pokemon_id = params[:id]
        p = Pokemon.find_by(id: pokemon_id)
        p.trainer_id = current_trainer.id
        p.save
        redirect_to root_url
    end

    def damage
        pokemon_id = params[:id]
        p = Pokemon.find_by(id: pokemon_id)
        p.hp -= 10
        if p.hp <= 0
          p.destroy
        else
          p.save
        end
        redirect_to trainer_path(id: p.trainer_id)
    end

    def new
    end

    def create
        parameters = params[:pokemon].permit(:name, :ndex)
        parameters.merge!({hp: 100, level: rand(1..20)})
        new_name = params[:pokemon][:name]
        if new_name != nil && Pokemon.find_by(name: new_name) == nil
          new_pokemon = Pokemon.new(parameters)
          new_pokemon.trainer_id = current_trainer.id
          new_pokemon.save
          redirect_to trainer_path(id: new_pokemon.trainer_id)
        else
          flash[:error] = 'Invalid Name'
        end
    end
end
