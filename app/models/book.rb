class Book < ApplicationRecord
  def self.search(key)
    @books = Book.where(['title LIKE ?', "%#{key}%"])
  end

end
