class IdeasController < InheritedResources::Base

  def show
     @idea = Idea.find(params[:id])
     @comments = @idea.comments.all
     @comment = @idea.comments.build
  end

  private

    def idea_params
      params.require(:idea).permit(:name, :description, :picture)
    end
end
