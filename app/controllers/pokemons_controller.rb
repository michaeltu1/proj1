class PokemonsController < ActionController::Base

	def capture
		poke = Pokemon.find(params[:id])
		poke.trainer_id = current_trainer.id
		poke.save

		redirect_to root_path
	end

	def damage
		poke = Pokemon.find(params[:id])

		if poke.health <= 10
			Pokemon.destroy(params[:id])
		else
			poke.health -= 10
		end

		poke.save

		redirect_to trainer_path(current_trainer.id)
	end

	def new

	end

	def create
		poke = Pokemon.new
		poke.name = params[:pokemon][:name]
		poke.trainer_id = current_trainer.id
		poke.health = 100
		poke.level = 1
		bool = poke.save

		if bool then
			redirect_to trainer_path(current_trainer.id)
		else
			flash[:notice] = "Pokemon name cannot be empty and must be unique!"
			redirect_to new_pokemon_path
		end
	end
end
