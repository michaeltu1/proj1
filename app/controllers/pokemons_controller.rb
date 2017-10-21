class PokemonsController < ActionController::Base

	def capture
		poke = Pokemon.find(params[:id])
		poke.trainer_id = current_trainer.id
		poke.save

		redirect_to root_path
	end

end
