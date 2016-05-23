class Article < ActiveRecord::Base
  validates :title, presence: true
  validates_length_of :title, maximum: 140
  validates :text, presence: true
  has_many :comments

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
