require "rails_helper"

describe "/venues" do
  it "lists the names of each Venue" do
    
    chicago = City.new
    chicago.name = "Chicago"
    chicago.save

    london = City.new
    london.name = "London"
    london.save
    
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
    new_gate.city_id = london.id
    new_gate.save

    visit "/venues"

    expect(page).to have_text("Sub-T")
    expect(page).to have_text("Cloud 9")
    expect(page).to have_text("New Gate")

  end
end

describe "/venues" do
  it "lists the size for each Venue" do
    
    chicago = City.new
    chicago.name = "Chicago"
    chicago.save

    london = City.new
    london.name = "London"
    london.save
    
    sub_t = Venue.new
    sub_t.name = "Sub-T"
    sub_t.size = 60
    sub_t.city_id = chicago.id
    sub_t.save

    cloud_nine = Venue.new
    cloud_nine.name = "Cloud 9"
    cloud_nine.size = 45
    cloud_nine.city_id = chicago.id
    cloud_nine.save
    
    new_gate = Venue.new
    new_gate.name = "New Gate"
    new_gate.size = 40
    new_gate.city_id = london.id
    new_gate.save

    visit "/venues"

    expect(page).to have_text("60")
    expect(page).to have_text("45")
    expect(page).to have_text("40")

  end
end

describe "/venues" do
  it "lists the name of the City for each Venue" do
    
    chicago = City.new
    chicago.name = "Chicago"
    chicago.save

    london = City.new
    london.name = "London"
    london.save

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
    new_gate.city_id = london.id
    new_gate.save

    visit "/venues"

    expect(page).to have_text("Chicago")
    expect(page).to have_text("London")

  end
end

describe "/venues" do
  it "has a link with the text 'Show details' to the details page of each Venue" do
    
    chicago = City.new
    chicago.name = "Chicago"
    chicago.save

    london = City.new
    london.name = "London"
    london.save
    
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
    new_gate.city_id = london.id
    new_gate.save

    visit "/venues"

    expect(page).to have_tag("a", :with => { :href => "/venues/#{sub_t.id}" }, :text => /Show details/i),
      "Expected page to have the a link with the text 'Show details' and an href of '/venues/#{sub_t.id}'"

    expect(page).to have_tag("a", :with => { :href => "/venues/#{cloud_nine.id}" }, :text => /Show details/i),
      "Expected page to have the a link with the text 'Show details' and an href of '/venues/#{cloud_nine.id}'"
    
    expect(page).to have_tag("a", :with => { :href => "/venues/#{new_gate.id}" }, :text => /Show details/i),
      "Expected page to have the a link with the text 'Show details' and an href of '/venues/#{new_gate.id}'"
  end
end

describe "/venues" do
  it "has a link to the details page of each Venue's City" do
    
    chicago = City.new
    chicago.name = "Chicago"
    chicago.save

    london = City.new
    london.name = "London"
    london.save
    
    sub_t = Venue.new
    sub_t.name = "Sub-T"
    sub_t.size = 60
    sub_t.city_id = chicago.id
    sub_t.save

    cloud_nine = Venue.new
    cloud_nine.name = "Cloud 9"
    cloud_nine.size = 45
    cloud_nine.city_id = chicago.id
    cloud_nine.save
    
    new_gate = Venue.new
    new_gate.name = "New Gate"
    new_gate.size = 40
    new_gate.city_id = london.id
    new_gate.save

    visit "/venues"

    expect(page).to have_tag("a", :with => { :href => "/cities/#{chicago.id}" }, :text => /Chicago/i, :minimum => 2),
      "Expected page to have the a link with the text 'Chicago' and an href of '/cities/#{chicago.id}'"
    
    expect(page).to have_tag("a", :with => { :href => "/cities/#{london.id}" }, :text => /London/i),
      "Expected page to have the a link with the text 'London' and an href of '/cities/#{london.id}'"
  end
end

describe "/venues/[VENUE ID]" do
  it "displays the name of the Venue's City" do
    
    london = City.new
    london.name = "London"
    london.save

    new_gate = Venue.new
    new_gate.name = "New Gate"
    new_gate.size = 40
    new_gate.city_id = london.id
    new_gate.save

    visit "/venues/#{new_gate.id}"

    expect(page).to have_text("London")
    
  end
end

describe "/venues/[VENUE ID]" do
  it "has a link to the details page of the Venue's City" do
    
    chicago = City.new
    chicago.name = "Chicago"
    chicago.save

    london = City.new
    london.name = "London"
    london.save

    sub_t = Venue.new
    sub_t.name = "Sub-T"
    sub_t.size = 60
    sub_t.city_id = chicago.id
    sub_t.save

    new_gate = Venue.new
    new_gate.name = "New Gate"
    new_gate.size = 40
    new_gate.city_id = london.id
    new_gate.save

    visit "/venues/#{new_gate.id}"

    expect(page).to_not have_tag("a", :with => { :href => "/cities/#{chicago.id}" }, :text => /Chicago/i),
      "Expected page to NOT have the a link with the text 'Chicago' and an href of '/cities/#{chicago.id}'"
    
    expect(page).to have_tag("a", :with => { :href => "/cities/#{london.id}" }, :text => /London/i),
      "Expected page to have the a link with the text 'London' and an href of '/cities/#{london.id}'"
  end
end

describe "/venues/[VENUE ID]" do
  it "displays the number of performances there are for the Venue" do
    
    chicago = City.new
    chicago.name = "Chicago"
    chicago.save

    london = City.new
    london.name = "London"
    london.save

    cloud_nine = Venue.new
    cloud_nine.name = "Cloud 9"
    cloud_nine.size = 45
    cloud_nine.city_id = chicago.id
    cloud_nine.save
    
    new_gate = Venue.new
    new_gate.name = "New Gate"
    new_gate.size = 40
    new_gate.city_id = london.id
    new_gate.save

    franny = Artist.new
    franny.name = "Franny"
    franny.bio = "franny's bio"
    franny.save

    fatimah = Artist.new
    fatimah.name = "Fatimah"
    fatimah.bio = "fatimah's bio"
    fatimah.save

    franny_in_cloud_nine = Performance.new
    franny_in_cloud_nine.venue_id = cloud_nine.id
    franny_in_cloud_nine.artist_id = franny.id
    franny_in_cloud_nine.show_type = "Music"
    franny_in_cloud_nine.duration = 30
    franny_in_cloud_nine.date = Date.today
    franny_in_cloud_nine.save

    fatimah_in_cloud_nine = Performance.new
    fatimah_in_cloud_nine.venue_id = cloud_nine.id
    fatimah_in_cloud_nine.artist_id = fatimah.id
    fatimah_in_cloud_nine.show_type = "Music"
    fatimah_in_cloud_nine.duration = 30
    fatimah_in_cloud_nine.date = Date.today
    fatimah_in_cloud_nine.save

    franny_in_new_gate = Performance.new
    franny_in_new_gate.venue_id = new_gate.id
    franny_in_new_gate.artist_id = franny.id
    franny_in_new_gate.show_type = "Music"
    franny_in_new_gate.duration = 30
    franny_in_new_gate.date = Date.today
    franny_in_new_gate.save


    visit "/venues/#{cloud_nine.id}"


    expect(page).to have_text(/number of performances\s*2/i),
      "Expected to find text, 'Number of performances 2', but didn't find it."

  end
end

describe "/venues/[VENUE ID]" do
  it "displays the names of the Artists performed in the Venue" do
    
    chicago = City.new
    chicago.name = "Chicago"
    chicago.save
    
    sub_t = Venue.new
    sub_t.name = "Sub-T"
    sub_t.size = 45
    sub_t.city_id = chicago.id
    sub_t.save

    franny = Artist.new
    franny.name = "Franny"
    franny.bio = "franny's bio"
    franny.save
    
    pooja = Artist.new
    pooja.name = "Pooja"
    pooja.bio = "pooja's bio"
    pooja.save
    
    osi = Artist.new
    osi.name = "Osi"
    osi.bio = "osi's bio"
    osi.save

    franny_in_sub_t = Performance.new
    franny_in_sub_t.venue_id = sub_t.id
    franny_in_sub_t.artist_id = franny.id
    franny_in_sub_t.show_type = "Poetry"
    franny_in_sub_t.duration = 30
    franny_in_sub_t.date = Date.today
    franny_in_sub_t.save

    pooja_in_sub_t = Performance.new
    pooja_in_sub_t.venue_id = sub_t.id
    pooja_in_sub_t.artist_id = pooja.id
    pooja_in_sub_t.show_type = "Music"
    pooja_in_sub_t.duration = 30
    pooja_in_sub_t.date = Date.today
    pooja_in_sub_t.save

    osi_in_sub_t = Performance.new
    osi_in_sub_t.venue_id = sub_t.id
    osi_in_sub_t.artist_id = osi.id
    osi_in_sub_t.show_type = "Music"
    osi_in_sub_t.duration = 30
    osi_in_sub_t.date = Date.today
    osi_in_sub_t.save


    visit "/venues/#{sub_t.id}"


    expect(page).to have_text("Franny")
    expect(page).to have_text("Pooja")
    expect(page).to have_text("Osi")

  end
end

describe "/venues/[VENUE ID]" do
  it "has the names of the performed Artists link the student details page" do
    
    chicago = City.new
    chicago.name = "Chicago"
    chicago.save
    
    sub_t = Venue.new
    sub_t.name = "Sub-T"
    sub_t.size = 45
    sub_t.city_id = chicago.id
    sub_t.save

    franny = Artist.new
    franny.name = "Franny"
    franny.bio = "franny's bio"
    franny.save
    
    pooja = Artist.new
    pooja.name = "Pooja"
    pooja.bio = "pooja's bio"
    pooja.save
    
    osi = Artist.new
    osi.name = "Osi"
    osi.bio = "osi's bio"
    osi.save

    franny_in_sub_t = Performance.new
    franny_in_sub_t.venue_id = sub_t.id
    franny_in_sub_t.artist_id = franny.id
    franny_in_sub_t.show_type = "Poetry"
    franny_in_sub_t.duration = 30
    franny_in_sub_t.date = Date.today
    franny_in_sub_t.save

    pooja_in_sub_t = Performance.new
    pooja_in_sub_t.venue_id = sub_t.id
    pooja_in_sub_t.artist_id = pooja.id
    pooja_in_sub_t.show_type = "Music"
    pooja_in_sub_t.duration = 30
    pooja_in_sub_t.date = Date.today
    pooja_in_sub_t.save

    osi_in_sub_t = Performance.new
    osi_in_sub_t.venue_id = sub_t.id
    osi_in_sub_t.artist_id = osi.id
    osi_in_sub_t.show_type = "Music"
    osi_in_sub_t.duration = 30
    osi_in_sub_t.date = Date.today
    osi_in_sub_t.save

    visit "/venues/#{sub_t.id}"


    expect(page).to have_tag("a", :with => { :href => "/artists/#{franny.id}" }, :text => /Franny/i),
      "Expected page to have the a link with the text 'Franny' and an href of '/artists/#{franny.id}'"
    
    expect(page).to have_tag("a", :with => { :href => "/artists/#{pooja.id}" }, :text => /Pooja/i),
      "Expected page to have the a link with the text 'Pooja' and an href of '/artists/#{pooja.id}'"

    expect(page).to have_tag("a", :with => { :href => "/artists/#{osi.id}" }, :text => /Osi/i),
      "Expected page to have the a link with the text 'Osi' and an href of '/artists/#{osi.id}'"

  end
end
