# frozen_string_literal: true

def id_best_users(*args)
  best = args.reduce(:&)
  year = args.reduce(:+)
  best.group_by { |user| year.count(user) }
      .map { |count, users| [count, users.sort] }
      .sort.reverse
end
