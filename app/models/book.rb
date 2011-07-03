class Book < ActiveRecord::Base

  def self.per_page
    20
  end

  validates :author, :presence => true
  validates :name, :uniqueness => true, :presence => true

  has_friendly_id :name, :use_slug => true

  scope :by_author, lambda { |author| where(:author => author)}

end
