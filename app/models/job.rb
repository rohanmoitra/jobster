class Job < ActiveRecord::Base
  validates :title, :description, :presence => true

def self.search(search)
    if search
      where('title LIKE ? OR description LIKE ? OR location LIKE ?', "%#{search}%","%#{search}%","%#{search}%") if search.present?
    else
      all
    end
  end
end
