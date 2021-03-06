class PokemonSerializer
  # include FastJsonapi::ObjectSerializer
  # attributes :nickname, :species, :trainer_id
  # # belongs_to :trainer

  def initialize(pokemon_object)
    @pokemon = pokemon_object
  end

  def to_serialized_json
    options = {
      only: [:id, :nickname, :species, :trainer_id]
      # include: [:id, :name]
    }
    @pokemon.to_json(options)
  end
end
