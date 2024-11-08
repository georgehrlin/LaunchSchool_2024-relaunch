# Write a program that uses a hash to store a list of movie titles with the
# year they came out. Then use the puts command to make your program print out
# the year of each movie to the screen.
movies = { :the_lion_king => 1994,
          :interstellar => 2014,
          :the_dark_knight => 2008 }

def extract_year(list, title)
  puts list[title]
end

extract_year(movies, :the_lion_king)
extract_year(movies, :interstellar)
extract_year(movies, :the_dark_knight)
