def get_name(person)
  return person[:name]
end

def getting_favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  return person[:favourites][:snacks].include?(food)
end

def add_friend(person, friend)
  person[:friends] << friend
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
  return person[:friends]
end

def total_value_people_money(people)
  total_value = 0
  for person in people
    total_value += person[:monies]
  end

  return total_value
end

def loan_money(lender, lendee, money)
  if lender[:monies] >= money
    lender[:monies] -= money
    lendee[:monies] += money
  else
    return nil
  end
end


def favourite_foods(people)
  peoples_foods = []
  for person in people
    peoples_foods.push(person[:name] + person[:favourites][:snacks])
  end
end
