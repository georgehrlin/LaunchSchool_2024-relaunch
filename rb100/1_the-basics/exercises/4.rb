# Use the dates from the previous example and store them in an array. Then make
# your program output the same thing as exercise 3.
movies = { the_lion_king: 1994,
          interstellar: 2014,
          the_dark_knight: 2008 }

release_years = movies.values

p release_years

release_years.each { |year| puts year }
