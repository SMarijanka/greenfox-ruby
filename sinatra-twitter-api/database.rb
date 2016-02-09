require 'sequel'

$DB = Sequel.connect 'sqlite://twitter.db'
