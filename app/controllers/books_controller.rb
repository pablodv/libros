class BooksController < InheritedResources::Base
  before_filter :authenticate_user!
  before_filter :build_search

  def create
    create! do |success, failure|
      success.html { redirect_to collection_path }
    end
  end

  def update
    update! do |success, failure|
      success.html { redirect_to collection_path }
    end
  end

  protected

  def collection
    build_search
  end

  def build_search
    @search = Book.search(params[:search])
    @books = @search.all.paginate(:page => params[:page]) if params[:search]
    if params[:author]
      @books ||= end_of_association_chain.by_author(params[:author]).paginate(:page => params[:page])
    else
      @books ||= end_of_association_chain.paginate(:page => params[:page])
    end
  end
end
