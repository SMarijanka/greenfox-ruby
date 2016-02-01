module Controllers
  class ShowStatus
    def self.call(env)
      [200, { 'Content-Type' => 'text/plain' }, ['show status']]
    end
  end
end
