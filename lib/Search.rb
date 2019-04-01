class Search
  attr_accessor :keyword
  
  def initialize(keyword)
    @keyword = keyword.strip
  end
  
  def keyword
    @keyword
  end
  
  def like_str
    #文字列を半角スペース区切りにする
    key = @keyword
    key.gsub!(/[ |　]+/,' ')
    
    key_arr = key.split(' ')
    # 複数LIKE文作成
    buf = (['title LIKE ?'] * key_arr.size).join(' AND ')
    return buf
    # return buf.chop!
    
  end
  
end