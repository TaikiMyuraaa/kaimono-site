class Search
  attr_accessor :keyword
  
  def initialize(keyword)
    @keyword = keyword
  end
  
  def keyword
    @keyword
  end
  
  def like_str
    #文字列を半角スペース区切りにする
    key = @keyword.gsub(/[ |　]+/,' ')
    key_arr = key.split(' ')
    return key_arr
    
  end
  
end