states = {
  "ALABAMA" => "AL",
  "ALASKA" => "AK",
  "AMERICAN SAMOA" => "AS",
  "ARIZONA" => "AZ",
  "ARKANSAS" => "AR",
  "CALIFORNIA" => "CA",
  "COLORADO" => "CO",
  "CONNECTICUT" => "CT",
  "DELAWARE" => "DE",
  "DISTRICT OF COLUMBIA" => "DC",
  "FEDERATED STATES OF MICRONESIA" => "FM",
  "FLORIDA" => "FL",
  "GEORGIA" => "GA",
  "GUAM" => "GU",
  "HAWAII" => "HI",
  "IDAHO" => "ID",
  "ILLINOIS" => "IL",
  "INDIANA" => "IN",
  "IOWA" => "IA",
  "KANSAS" => "KS",
  "KENTUCKY" => "KY",
  "LOUISIANA" => "LA",
  "MAINE" => "ME",
  "MARSHALL ISLANDS" => "MH",
  "MARYLAND" => "MD",
  "MASSACHUSETTS" => "MA",
  "MICHIGAN" => "MI",
  "MINNESOTA" => "MN",
  "MISSISSIPPI" => "MS",
  "MISSOURI" => "MO",
  "MONTANA" => "MT",
  "NEBRASKA" => "NE",
  "NEVADA" => "NV",
  "NEW HAMPSHIRE" => "NH",
  "NEW JERSEY" => "NJ",
  "NEW MEXICO" => "NM",
  "NEW YORK" => "NY",
  "NORTH CAROLINA" => "NC",
  "NORTH DAKOTA" => "ND",
  "NORTHERN MARIANA ISLANDS" => "MP",
  "OHIO" => "OH",
  "OKLAHOMA" => "OK",
  "OREGON" => "OR",
  "PALAU" => "PW",
  "PENNSYLVANIA" => "PA",
  "PUERTO RICO" => "PR",
  "RHODE ISLAND" => "RI",
  "SOUTH CAROLINA" => "SC",
  "SOUTH DAKOTA" => "SD",
  "TENNESSEE" => "TN",
  "TEXAS" => "TX",
  "UTAH" => "UT",
  "VERMONT" => "VT",
  "VIRGIN ISLANDS" => "VI",
  "VIRGINIA" => "VA",
  "WASHINGTON" => "WA",
  "WEST VIRGINIA" => "WV",
  "WISCONSIN" => "WI",
  "WYOMING" => "WY",
}
=begin
puts states.count
longest = states.first[0].length
longest_key = states.first[0]

#states.each do | state, abbrev |
#  if state[0] == "W"
#    puts "#{state}, #{abbrev}"
#  end
#end

states.each do | state, abbrev |
  if state.length > longest
    longest = state.length
    longest_key = state
  end
end

puts longest
puts longest_key
puts states[longest_key]
=end

#  <select name='state'>
#   <option name='AL'>Alabama</option>
#   <option name='AZ'>Arizona</option>
#   <option name='AK'>Alaska</option>
#  </select>

=begin

puts "<select name='state'>"
states.each do | state, abbrev |
  puts "\t<option name='#{abbrev}'>#{state}</option>"
end
puts "</select>"

=end
=begin

puts "<select name='state'>"
states.each do | state, abbrev |
  puts "\t<a href='#{abbrev}'>#{state}</a></br>"
end
puts "</select>"

=end

#  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z

letter = 'A'
while letter != 'Z'.succ
  puts "<a href='#'>#{letter}</a>"
  letter = letter.succ
end

#puts "<a>#{letter.succ}</a>"
#puts "<a>C</a>"
#puts "<a>D</a>"