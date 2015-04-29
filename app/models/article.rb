class Article
  include MarkMapper::Document

  many :comments

  key :title, String
  key :text, String
  timestamps!

  validates :title, presence: true, length: { minimum: 5 }

end
