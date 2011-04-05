class BooksController < InheritedResources::Base
	before_filter :authenticate_user!

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
 
end
