class Article < ActiveRecord::Base
  validates :title, presence: true
  validates_length_of :title, maximum: 140
  validates_length_of :text, maximum: 4000
  validates :text, presence: true
  has_many :comments

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
