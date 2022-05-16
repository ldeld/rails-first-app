class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]

    if params[:member]
      @members = @members.select { |member| member.starts_with?(params[:member]) }
    end
    #  filter this members based on the user input
    # params
  end
end
