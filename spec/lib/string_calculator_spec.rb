require 'rails_helper'

RSpec.describe StringCalculation do
	describe "Definition add" do
		context "when the input provided is an empty string" do
			it "will returns 0" do
				expect(StringCalculation.add("")).to eq(0)
			end
		end

		context "When the provided input is single digit" do
			it "will returns the same number" do 
				expect(StringCalculation.add("3")).to eq(3)
			end
		end

	end
end
