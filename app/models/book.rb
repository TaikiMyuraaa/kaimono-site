class Book < ApplicationRecord
  require './lib/Search.rb'
  has_many :BookType
  
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
      # # p search.method_defined?(:split_key)
      # split_arr = c.like_str
      # # split_arr = split_arr.map{|str| "%#{str}%"}
      # str = split_arr.join(" ")
      # binding.pry
      # sql = Book.ransack(title_matches_any: %Q(str)).result
    else
      @books = Book.ransack(title_matches: ["%#{key}%"]).result
    end
    
  end

end