class Category < ApplicationRecord
  has_many :scores
  has_many :quizzes
  

  def self.produce_all_name_as_array

    all_categories = self.all

    categories = self.all.map{|category|
      categories << category.name
    }


    return categories

  end

end
