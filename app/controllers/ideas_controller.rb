class IdeasController < InheritedResources::Base

  private

    def idea_params
      params.require(:idea).permit(:name, :description, :picture)
    end
end

