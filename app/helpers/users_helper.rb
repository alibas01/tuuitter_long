module UsersHelper

  def get_post_count(userid)
    return Post.where(user_id: userid).count
  end

  def get_avg_char(userid)
    subposts = Post.where(user_id: userid)
    total = 0
    subposts.each do |p|
      total += p.post.length
    end
    count = get_post_count(userid)
    puts total
    puts count
    if count == 0
      avg = 0
    else
      avg = total / count
    end
    puts avg
    return avg
  end

  def get_new_id()
    return User.maximum('id')
  end
end