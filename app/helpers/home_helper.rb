module HomeHelper
  def searchPost(str)
    result = []

    @posts.each do |p|
      if p.title.include?(str) or p.tags.include?(str) 
        result.push(p.id)
      end
    end
    puts result
    return result
  end

  def searchUser(str)
    result = []

    User.each do |p|
      if p.email.include?(str)
        result.push(p.email)
      end
    end
    puts result
    return result
  end
end
