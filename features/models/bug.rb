module Test
  class Bug
    attr_accessor :summary, :status

    def initialize bug_hash
      @summary = bug_hash['Summary']
      @status = bug_hash['Status']
    end
  end
end