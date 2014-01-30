json.array!(@monks) do |monk|
  json.extract! monk, :id, :cert_no, :firstname, :surname, :monkname, :birthdate, :height, :skin, :ordained_time, :ordainer, :pair_monk_1, :pair_monk_2, :approval_name, :approval_position
  json.url monk_url(monk, format: :json)
end
