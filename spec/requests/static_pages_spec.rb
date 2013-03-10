require 'spec_helper'

# describe "StaticPages" do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
#  end
# end


describe "Static pages" do 

	# removed in 5.3
	# let(:base_title) { "Ruby on Rails Tutorial Sample App" }

	subject { page }

	shared_examples_for "all static pages" do 
		it { should have_selector 'h1', text: heading }
		it { should have_selector 'title', text: full_title(page_title) }
	end

	describe "Home page" do
		before { visit root_path }
		let(:heading)			{ 'Sample App' }
		let(:page_title) 	{ '' }

		it_should_behave_like "all static pages"
		it { should_not have_selector 'title', text: '| Home' }
	end

	describe "Help page" do
		before { visit help_path }
		let(:heading)			{ 'Help' }
		let(:page_title)	{ 'Help' }

		it_should_behave_like "all static pages"
	end

	describe "About page" do
		before { visit about_path }
		let(:heading)			{ 'About Us' }
		let(:page_title)	{ 'About Us' }

		it_should_behave_like "all static pages"
	end

	describe "Contact page" do
		before { visit contact_path }
		let(:heading) 		{ 'Contact' }
		let(:page_title)	{ 'Contact' }

		it_should_behave_like "all static pages"
	end
end