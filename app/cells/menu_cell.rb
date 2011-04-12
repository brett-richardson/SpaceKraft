class MenuCell < Cell::Rails

	helper UrlHelper


	def primary
		render
	end


	def secondary
		@user = parent_controller.current_user
		render
	end


	def module
		@sk_modules = SkModule.all
		@request    = parent_controller.request

		render
	end

end
