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
    # key.gsub!(/\s+/," ")
    key.gsub!(/[ |　]+/," ")
    
    key_arr = key.split(" ")
    buf = (["title LIKE ?"] * key_arr.size).join(" AND ")
    buf = buf + ","
    key_arr.each do |k|
      buf = buf + "%#{k}%,"
    end
    return buf.chop!
    
  end
  
end