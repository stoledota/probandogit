def cuanto_falta?( time= Time.new(Time.now.year, Time.now.month, Time.now.day)  + (60 * 60 * 24) )
  (time - Time.now).to_i / 60
end
