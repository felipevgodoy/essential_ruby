# ===========
# CHALLENGE 1
# ===========

# Suppose we are building a loan payment calculator.

# Define a method called "pmt" which will accept three arguments:
#  - interest rate
#  - number of payments
#  - principal value of loan
# The method should return the size of each payment given these three things.
# Before we can teach the computer how to automate a task,
#   we usually have to do some research on how the task is done:
#   http://en.wikipedia.org/wiki/Mortgage_calculator

# ==========================================

def pmt(rate,n,amount)

	top = 0.0
	top = rate*(1+rate)**n
	bot = 0.0
	bot = (1+rate)**n-1
	result = 0.0
	result =amount*top/bot
	return result 

end

# ==========================================

puts "Your monthly payment will be #{pmt(0.01, 60, 30000)}."

