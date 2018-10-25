class AddTrainerIdToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_reference :pokemons, :trainer_id
  end
end
