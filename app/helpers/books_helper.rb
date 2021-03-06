module BooksHelper
	
	def select_author
    <<-HTML
    <select id="author" name="author" >
      #{ load_authors }
     </select>
    HTML
  end

  def load_authors
  	options = []
    options << content_tag(:option, "Author", :rel => collection_path)
    Book.all.map(&:author).uniq.each do |a|
    	options << content_tag(:option, a, :rel => collection_path(:author => a))
    end
    options
  end

end
