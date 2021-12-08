class Post < ApplicationRecord
    validates :postauthor, :presence => true
    validates :content, :presence => true,
                                        :length => { :minimum => 5 }

    has_many :commentts, :dependent => :destroy
    has_many :tags
    has_many :likes, dependent: :destroy
    belongs_to :user
    belongs_to :category
end