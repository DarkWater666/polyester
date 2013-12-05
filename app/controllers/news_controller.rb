class NewsController < InheritedResources::Base
  def index
    @news=New.all
  end

  def show
    @news = New.find(params[:id])
  end

end
