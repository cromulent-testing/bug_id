module Test
  class Bug
    attr_accessor :summary, :status
    
    def initialize bug_hash = {'Summary' => '', 'Status' => ''}
      @summary = bug_hash['Summary']
      @status = bug_hash['Status']
    end
    
    def default
      @summary = 'Default Summary'
      @status = 'Open'
      self
    end
  end
end