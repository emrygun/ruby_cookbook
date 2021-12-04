#Known way
survey_results = [1, 2, 7, 1, 1, 5, 2, 5, 1]
p distinct_answers = survey_results.uniq

require 'set'
p distinct_answers = survey_results.to_set


games = [ ["Alice", "Bob"],
          ["Carol", "Ted"],
          ["Alice", "Mallory"],
          ["Ted", "Bob"] ]

players = games.inject(Set.new) { |set, game| game.each {|p| set << p}; set }
p players
