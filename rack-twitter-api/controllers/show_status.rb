require 'database'

module Controllers
  class ShowStatus
    def self.call(env)
      [200, { 'Content-Type' => 'text/plain' }, ["#{env['QUERY_STRING']} | #{$DB[:items].count}"]]
    end
  end
end
