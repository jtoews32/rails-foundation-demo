class Challenge < ActiveRecord::Base
  # attr_accessible :title, :body
end

class Item < ActiveRecord::Base
    belongs_to :challenge
end

