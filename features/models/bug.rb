module Test
  class Bug
    attr_accessor :id, :description, :status
    
    def initialize bug_hash = {'Description' => '', 'Status' => ''}
      @description = bug_hash['Description']
      @status = bug_hash['Status']
    end
    
    def default
      @description = 'Default Description'
      @status = 'Open'
      self
    end
  end
end