def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

=begin
Wtihout running the code, I think the reason that the output is the same every
time the method is invoked is: sunshine is assigned a string ('true' or
'false') instead of a boolean value. And because a string always evaluates to
true, the if clause on line 5 will always be executed instead of line 7 no
matter what.
=end
