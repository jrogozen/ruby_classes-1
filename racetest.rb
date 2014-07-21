require_relative 'race'

blue_car = RaceCar.new("Blue Car")
red_car = RaceCar.new("Red Car")

fast_track = RaceTrack.new("Fast Race Track")

fast_track.add_car(blue_car)
fast_track.add_car(red_car)

#should fail
fast_track.race(10)
fast_track.race(1)
fast_track.add_hour(10)

fast_track.race(5)
fast_track.determine_winner

fast_track.race
fast_track.add_hour(1)
fast_track.add_hour(1)
fast_track.add_hour(1)
fast_track.add_hour(1)
fast_track.add_hour(1) #fail
fast_track.determine_winner
