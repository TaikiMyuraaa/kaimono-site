class Book < ApplicationRecord
  require './lib/Search.rb'
  has_one :BookType
  
  validates :product_id, presence: true, length: { minimum: 3, message: '入力必須項目です'}
  validates :aouthor_id, presence: true
  validates :publisher_id, presence: true
  validates :title, presence: true
  validates :price, presence: true
  validates :category_id, presence: true
  
  # 検索欄メソッド
  def self.search(key)
    c = Search.new(key)
    if c.keyword.match(/[ |　]/)
      like_str = c.like_str
      str = key.gsub(/[ |　]+/,' ')
      arr = str.split(" ")
      @books = Book.where(like_str,* arr.map{|w| "%#{w}%"})
    else
      @books = Book.where('title LIKE ? ', "%#{key}%")
    end
  end

end