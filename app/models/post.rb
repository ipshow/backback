class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :title, type: String
  field :content, type: String
  slug :title

  belongs_to :user
  has_many :comments
  validates_length_of :content, minimum: 6, maximum: 10000
  validates :user_id, presence: true
  validates :title, presence: true

end
