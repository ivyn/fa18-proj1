class AddHpToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :hp, :int
  end
end
