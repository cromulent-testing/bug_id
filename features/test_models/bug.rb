module Test
  class Bug
    attr_accessor :summary, :title

    def to_s
      "title: #{title}, summary: #{summary}"
    end
  end
end