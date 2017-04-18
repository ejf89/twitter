require_relative '../config/environment'

test = TwitterAdapter.new
test.call_twitter
test.add_answer_to_table
