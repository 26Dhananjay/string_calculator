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

		context "When the provided input is 2 numbers seprated by comma" do
			it "Will returns sum of the numbers" do 
				expect(StringCalculation.add("2,3")).to eq(5)
			end
		end

		context "When the provided input is multiple numbers seprated by comma" do
			it "Will returns sum of all the numbers" do 
				expect(StringCalculation.add("2,3,4,5")).to eq(14)
			end
		end

		context "When the provided input has numbers separated by new lines" do
			it "returns the sum of all numbers" do
				expect(StringCalculation.add("1\n2,3")).to eq(6)
			end
		end

	end
end
