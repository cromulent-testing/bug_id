module Test
  class Bug
    attr_accessor :summary

    def default
      @summary = 'this is a summary'
    end

    def to_s
      "summary: #{summary}"
    end
  end
end