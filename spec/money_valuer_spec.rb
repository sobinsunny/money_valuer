require 'spec_helper'

describe MoneyValuer do 

	it "Should  be an decimal Number" do
		 output  = MoneyValuer.check_rate(1,'USD','INR')
		 expect(output).not_to be_zero
	end

	it "Should  be an decimal Number" do
	 	output  = MoneyValuer.check_rate(1,'USD','INR')
	 	expect(output).to be_an(Float)
	end

	it 'has a version number' do
    	expect(MoneyValuer::VERSION).not_to be nil
	end
end
