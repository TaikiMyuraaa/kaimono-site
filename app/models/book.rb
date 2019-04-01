class Book < ApplicationRecord
  require './lib/Search.rb'
  has_one :BookType
  
  validates :product_id, presence: true, length: { minimum: 3, message: '入力必須項目です'}
  validates :aouthor_id, presence: true
  validates :publisher_id, presence: true
  validates :title, presence: true
  validates :price, presence: true
  validates :category_id, presence: true
  
  def self.search(key)
    c = Search.new(key)
    if c.keyword.match(/[ |　]/)
      str = c.like_str
      @books = Book.where(str)
    else
      @books = Book.where('title LIKE ? ', "%#{key}%")
    end
  end

end
  

  # # Like条件生成
  # def extract_str(arr)
  #   buf = 'title LIKE ? ,'
  #   arr.each do |str|
  #     buf + '%' + str + '%,'    
  #   end
  #   # 最後の区切り文字削除
  #   buf.chop
  # end
