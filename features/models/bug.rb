module Test
  class Bug
    attr_accessor :id, :description, :status

    def initialize bug_hash = {'Id' => 0, 'Description' => '', 'Status' => ''}
      @id = bug_hash['Id']
      @description = bug_hash['Description']
      @status = bug_hash['Status']
    end

    def default bug_hash = {'Id' => 0, 'Description' => '', 'Status' => ''}
      @id = bug_hash['Id'] || 0
      @description = bug_hash['Description'] || 'Default Description'
      @status = bug_hash['Status'] || 'Open Description'
    end

  end
end