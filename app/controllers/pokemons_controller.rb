class PokemonsController < ActionController::Base

	def capture
		poke = Pokemon.find(params[:id])
		poke.trainer_id = current_trainer.id
		poke.save

		redirect_to root_path
	end

	def damage
		puts params
		puts params[:id]
		poke = Pokemon.find(params[:id])

		if poke.health <= 10
			Pokemon.destroy(params[:id])
		else
			poke.health -= 10
		end

		poke.save

		redirect_to trainer_path(params[:trainer_id])
	end

	def new
		poke = Pokemon.new
		poke.trainer_id = current_trainer.id
		poke.health = 100
		poke.level = 1
		poke.save
		@poke = poke
	end

	def update

		redirect_to trainer_path(params[:trainer_id])
	end
end
