class PostPolicy
  attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end

  def edit?
    true
    # user.admin? #|| !post.published?
  end

  def update?
    edit?
  end

  def destroy?
    update?
  end
end