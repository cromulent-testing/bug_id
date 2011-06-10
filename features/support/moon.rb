module Moon

  def initialize
    puts "singing to the moon"

  end

  def user
    User.new self
  end

end