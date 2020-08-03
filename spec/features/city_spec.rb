require "rails_helper"

describe "/cities" do
  it "lists the names of each City record" do
    
    chicago = City.new
    chicago.name = "Chicago"
    chicago.save
    
    new_york = City.new
    new_york.name = "New York"
    new_york.save

    london = City.new
    london.name = "London"
    london.save

    visit "/cities"

    expect(page).to have_text("Chicago")

    expect(page).to have_text("New York")
    
    expect(page).to have_text("London")

  end
end

describe "/cities/[CITY ID]" do
  it "displays the name of the City record" do
    
    chicago = City.new
    chicago.name = "Chicago"
    chicago.save
    
    visit "/cities/#{chicago.id}"

    expect(page).to have_text("Chicago")

  end
end

describe "/cities/[CITY ID]" do
  it "displays the number of Venues in the City" do
    
    chicago = City.new
    chicago.name = "Chicago"
    chicago.save
    sub_t = Venue.new
    sub_t.name = "Sub-T"
    sub_t.size = 45
    sub_t.city_id = chicago.id
    sub_t.save

    cloud_nine = Venue.new
    cloud_nine.name = "Cloud 9"
    cloud_nine.size = 45
    cloud_nine.city_id = chicago.id
    cloud_nine.save
    

    visit "/cities/#{chicago.id}"

    expect(page).to have_text(/number of venues\s*2/i),
      "Expected to find text, 'Number of venues 2', but didn't find it."

  end
end

describe "/cities/[CITY ID]" do
  it "displays the names of the Venues in the City" do
    
    chicago = City.new
    chicago.name = "Chicago"
    chicago.save

    new_york = City.new
    new_york.name = "New York"
    new_york.save
    
    sub_t = Venue.new
    sub_t.name = "Sub-T"
    sub_t.size = 45
    sub_t.city_id = chicago.id
    sub_t.save

    cloud_nine = Venue.new
    cloud_nine.name = "Cloud 9"
    cloud_nine.size = 45
    cloud_nine.city_id = chicago.id
    cloud_nine.save
    
    new_gate = Venue.new
    new_gate.name = "New Gate"
    new_gate.size = 45
    new_gate.city_id = new_york.id
    new_gate.save
    

    visit "/cities/#{chicago.id}"

    expect(page).to have_text("Sub-T")
    expect(page).to have_text("Cloud 9")
    expect(page).to_not have_text("New Gate")

  end
end

describe "/cities/[CITY ID]" do
  it "displays the names of the Venues in the City as links to the Venue page" do
    
    chicago = City.new
    chicago.name = "Chicago"
    chicago.save

    new_york = City.new
    new_york.name = "Chicago"
    new_york.save
    
    sub_t = Venue.new
    sub_t.name = "Sub-T"
    sub_t.size = 45
    sub_t.city_id = chicago.id
    sub_t.save

    cloud_nine = Venue.new
    cloud_nine.name = "Cloud 9"
    cloud_nine.size = 45
    cloud_nine.city_id = chicago.id
    cloud_nine.save
    
    new_gate = Venue.new
    new_gate.name = "New Gate"
    new_gate.size = 45
    new_gate.city_id = new_york.id
    new_gate.save

    visit "/cities/#{chicago.id}"

    expect(page).to have_tag("a", :with => { :href => "/venues/#{sub_t.id}" }, :text => /Sub-T/i),
      "Expected page to have the a link with the text 'Sub-T' and an href of '/venues/#{sub_t.id}'"

    expect(page).to have_tag("a", :with => { :href => "/venues/#{cloud_nine.id}" }, :text => /Cloud 9/i),
      "Expected page to have the a link with the text 'Cloud 9' and an href of '/venues/#{cloud_nine.id}'"
    
    expect(page).to_not have_tag("a", :with => { :href => "/venues/#{new_gate.id}" }, :text => /New Gate/i),
      "Expected page to NOT have the a link with the text 'New Gate' and an href of '/venues/#{new_gate.id}'"

  end
end
