class Post < ApplicationRecord

  validates_presence_of :title, :content, :image_url

  before_save do |post|
    post.content = post.content.gsub(/spoiler/i, '')
  end

end
