class Student
  attr_reader :name, :cookies

  def initialize(name_or_default = nil)
    if name_or_default.is_a?(String)
      @name = name_or_default.downcase.capitalize
    else
      @name = "Default Name"
    end
    @cookies = []
  end

  def add_cookie(cookie)
    @cookies << cookie
  end
end