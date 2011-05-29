require 'spec_helper'

describe "LayoutLinks" do
  
  it "should have a Home page at '/'" do
    get'/'
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have a Contact page at '/contact'" do
    get'/contact'
    response.should have_selector('title', :content => "Contact")
  end
  
  it "should have a About page at '/about'" do
    get'/about'
    response.should have_selector('title', :content => "About")
  end
  
  it "should have a News page at '/News'" do
    get'/news'
    response.should have_selector('title', :content => "News")
  end
  
  it "should have a News page at '/Help'" do
    get'/help'
    response.should have_selector('title', :content => "Help")
  end
  
   it "should have a Sign Up page at '/signup'"do
  	get'/signup'
  	response.should have_selector('title', :content => "Sign-up")
   end
   
  
   it "should have a Sign In page at '/signin'"do
  	get'/signin'
  	response.should have_selector('title', :content => "Sign In")
   end
   it "should have the right links on the layout" do
   	visit root_path
   	response.should have_selector('title', :content => "Home")
   	click_link "About"
   	response.should have_selector('title', :content => "About")
   	click_link "Contact"
   	response.should have_selector('title', :content => "Contact")
   	click_link "Help"
   	response.should have_selector('title', :content => "Help")
   	response.should have_selector('a[href="/"]>img')
   	
   	end
   	
 end
