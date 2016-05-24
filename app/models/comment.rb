class Comment < ActiveRecord::Base
  validates_length_of :body, maximum: 4000, minimum:3
  belongs_to :article
end
