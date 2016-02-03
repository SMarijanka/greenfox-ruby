require 'database'

module Controllers
  class ListFavorites
    def self.call(env)
      $DB[:items].insert(name: 'abc', price: rand * 100)
      [200, { 'Content-Type' => 'text/plain' }, ['list favorites']]
    end
  end
end
