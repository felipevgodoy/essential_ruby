def pmt(rate,n,amount)

	top = 0.0
	top = rate*(1+rate)**n
	bot = 0.0
	bot = (1+rate)**n-1
	result = 0.0
	result =amount*top/bot
	return result 

end

# ===========
# CHALLENGE 2
# ===========

# Below is an array of hashes. Each hash in the array represents one rate quote from a bank.

loan_quotes = [
  { "bank" => "Elm Street Bank", "rate" => 0.013},
  { "bank" => "Oak Street Bank", "rate" => 0.009},
  { "bank" => "Ash Street Bank", "rate" => 0.011},
]

# Let's ask our user for the parameters of the loan:

puts "Enter the number of payments:"
nper = gets.chomp.to_i

puts "Enter the loan amount:"
pv = gets.chomp.to_f

# Now, loop through the array of loan quotes using .each:
#   For each option, tell the user how much the monthly payment will be to that bank.
#   Re-use the pmt method that you defined in Challenge 1.

# ===================
loan_quotes.each do |b|


puts "Your monthly payment at #{b["bank"]} will be #{pmt(b["rate"], nper, pv)}."

end
# ===================
