module PostsHelper
  def searchPost(string)
    result = []

    Post.each do |p|
      if p.title.include?(string) or p.tags.include?(string) 
        result.push(p.id)
      end
    end
    puts result
    return result
  end

  def searchUser(string)
    result = []

    User.each do |p|
      if p.email.include?(string)
        result.push(p.email)
      end
    end
    puts result
    return result
  end
  
end