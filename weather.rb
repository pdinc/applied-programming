require "forecast_io"

# configure the Dark Sky API with your API key
ForecastIO.api_key = "02dbcee29621252b05da7abab52d2a8e"

# do the heavy lifting, use Global Hub lat/long
# forecast = ForecastIO.forecast(42.0574063,-87.6722787).to_hash

# Screw the Hub, Wieboldt for life!
forecast = ForecastIO.forecast(41.895975,-87.618772).to_hash

# pp forecast
# pp = pretty print
# use instead of `puts` to make reading a hash a lot easier
# e.g. `pp forecast`

# Example output:
#
# In Chicago, it is currently 33.89 degress and Clear
# Extended forecast:
# A high temperature of 36.47 and Possible flurries in the afternoon.
# A high temperature of 33.98 and Mostly cloudy throughout the day.
# A high temperature of 33.94 and Possible light snow until evening.
# A high temperature of 32.73 and Mostly cloudy throughout the day.
# A high temperature of 32.51 and Partly cloudy throughout the day.
# A high temperature of 40.42 and Clear throughout the day.
# A high temperature of 23.21 and Overcast throughout the day.
# A high temperature of 29.12 and Clear throughout the day.

puts "In #{forecast["timezone"].split('/')[1]} (specifically, at Wieboldt), it is #{forecast["currently"]["temperature"]} degrees and #{forecast["currently"]["summary"]}."
puts "Extended Forecast:"

for i in 0..7
    puts "A high temperature of #{forecast["daily"]["data"][i]["temperatureHigh"]} and #{forecast["daily"]["data"][i]["summary"]}"
end

#Alternative way to loop
#for day in forecast["daily"]["data"]
#    puts "A high temperature of #{day["temperatureHigh"]} and #{day["summary"]}"
#end