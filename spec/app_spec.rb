require_relative 'spec_helper'
require '/Users/theweepingwill/repos/palindrome_app/app.rb'
require 'rack/test'

set :environment, :test

def app 
	Sinatra::Application
end

RSpec.describe 'PalindromeApp' do 

	include Rack::Test::Methods

	it "Index Test!" do 
		get '/'
		expect(last_response.ok?).to eq(true)
		expect(!!doc(last_response).at_css('h1')).to eq(true)
	end


	it "About Test!" do 
		get '/about'
		expect(last_response.ok?).to eq(true)
		expect(!!doc(last_response).at_css('h1')).to eq(true)
	end

	it "Palindrome Test!" do 
		get '/palindrome'
		expect(last_response.ok?).to eq(true)
		expect(!!doc(last_response).at_css('h1')).to eq(true)
	end



end

