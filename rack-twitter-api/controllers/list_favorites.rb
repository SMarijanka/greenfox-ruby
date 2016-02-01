module Controllers
  class ListFavorites
    def self.call(env)
      [200, { 'Content-Type' => 'text/plain' }, ['list favorites']]
    end
  end
end
