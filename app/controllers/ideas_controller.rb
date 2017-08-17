class IdeasController < InheritedResources::Base

  private

    def show
    	 @idea = Idea.find(params[:id])
       @comments = @idea.comments.all
       @comment = @idea.comments.build
    end

    def idea_params
      params.require(:idea).permit(:name, :description, :picture)
    end
end
