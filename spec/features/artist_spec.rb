require "rails_helper"

describe "/artists" do
  it "lists the names of each Artist" do
    
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

    visit "/artists"

    expect(page).to have_text("Franny")
    expect(page).to have_text("Pooja")
    expect(page).to have_text("Osi")

  end
end

describe "/artists" do
  it "lists the bios of each Artist" do
    
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

    visit "/artists"

    expect(page).to have_text("franny's bio")
    expect(page).to have_text("pooja's bio")
    expect(page).to have_text("osi's bio")

  end
end


describe "/artists" do
  it "has a link 'Show details' to the details page of each Artist" do
    
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

    visit "/artists"

    expect(page).to have_tag("a", :with => { :href => "/artists/#{franny.id}" }, :text => /Show details/i),
      "Expected page to have the a link with the text 'Show details' and an href of '/artists/#{franny.id}'"
    
    expect(page).to have_tag("a", :with => { :href => "/artists/#{pooja.id}" }, :text => /Show details/i),
      "Expected page to have the a link with the text 'Show details' and an href of '/artists/#{pooja.id}'"

    expect(page).to have_tag("a", :with => { :href => "/artists/#{osi.id}" }, :text => /Show details/i),
      "Expected page to have the a link with the text 'Show details' and an href of '/artists/#{osi.id}'"

  end
end

describe "/artists/[ARTIST ID]" do
  it "displays the number of performances the Artist has done" do
    
    chicago = City.new
    chicago.name = "Chicago"
    chicago.save

    tokyo = City.new
    tokyo.name = "Tokyo"
    tokyo.save

    sub_t = Venue.new
    sub_t.name = "Sub-T"
    sub_t.size = 45
    sub_t.city_id = chicago.id
    sub_t.save
    
    new_gate = Venue.new
    new_gate.name = "New Gate"
    new_gate.size = 45
    new_gate.city_id = tokyo.id
    new_gate.save
    
    schwubas = Venue.new
    schwubas.name = "Schwubas"
    schwubas.size = 45
    schwubas.city_id = chicago.id
    schwubas.save

    franny = Artist.new
    franny.name = "Franny"
    franny.bio = "franny's bio"
    franny.save

    franny_in_sub_t = Performance.new
    franny_in_sub_t.venue_id = sub_t.id
    franny_in_sub_t.artist_id = franny.id
    franny_in_sub_t.show_type = "Music"
    franny_in_sub_t.duration = 30
    franny_in_sub_t.date = Date.today
    franny_in_sub_t.save

    franny_in_new_gate = Performance.new
    franny_in_new_gate.venue_id = new_gate.id
    franny_in_new_gate.artist_id = franny.id
    franny_in_new_gate.show_type = "Music"
    franny_in_new_gate.duration = 30
    franny_in_new_gate.date = Date.today
    franny_in_new_gate.save

    franny_in_schwubas = Performance.new
    franny_in_schwubas.venue_id = schwubas.id
    franny_in_schwubas.artist_id = franny.id
    franny_in_schwubas.show_type = "Music"
    franny_in_schwubas.duration = 30
    franny_in_schwubas.date = Date.today
    franny_in_schwubas.save

    visit "/artists/#{franny.id}"

    expect(page).to have_text(/number of performances\s*3/i),
      "Expected to find text, 'Number of performances 3', but didn't find it."

  end
end

describe "/artists/[ARTIST ID]" do
  it "displays the names of the venues the Artist is enrolled in" do
    
    chicago = City.new
    chicago.name = "Chicago"
    chicago.save

    tokyo = City.new
    tokyo.name = "Tokyo"
    tokyo.save

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
    new_gate.city_id = tokyo.id
    new_gate.save
    
    schwubas = Venue.new
    schwubas.name = "Schwubas"
    schwubas.size = 45
    schwubas.city_id = chicago.id
    schwubas.save

    franny = Artist.new
    franny.name = "Franny"
    franny.bio = "franny's bio"
    franny.save

    fatimah = Artist.new
    fatimah.name = "Fatimah"
    fatimah.bio = "fatimah's bio"
    fatimah.save

    franny_in_sub_t = Performance.new
    franny_in_sub_t.venue_id = sub_t.id
    franny_in_sub_t.artist_id = franny.id
    franny_in_sub_t.show_type = "Music"
    franny_in_sub_t.duration = 30
    franny_in_sub_t.date = Date.today
    franny_in_sub_t.save

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

    franny_in_schwubas = Performance.new
    franny_in_schwubas.venue_id = schwubas.id
    franny_in_schwubas.artist_id = franny.id
    franny_in_schwubas.show_type = "Music"
    franny_in_schwubas.duration = 30
    franny_in_schwubas.date = Date.today
    franny_in_schwubas.save

    visit "/artists/#{franny.id}"

    expect(page).to_not have_text("Essay Writing")
    expect(page).to have_text("Sub-T")
    expect(page).to have_text("New Gate")
    expect(page).to have_text("Schwubas")

  end
end


describe "/artists/[ARTIST ID]" do
  it "the Venue names link to the details page of the Venue" do
    
    chicago = City.new
    chicago.name = "Chicago"
    chicago.save

    tokyo = City.new
    tokyo.name = "Tokyo"
    tokyo.save

    sub_t = Venue.new
    sub_t.name = "Sub-T"
    sub_t.size = 45
    sub_t.city_id = chicago.id
    sub_t.save
    
    new_gate = Venue.new
    new_gate.name = "New Gate"
    new_gate.size = 45
    new_gate.city_id = tokyo.id
    new_gate.save
    
    schwubas = Venue.new
    schwubas.name = "Schwubas"
    schwubas.size = 45
    schwubas.city_id = chicago.id
    schwubas.save

    franny = Artist.new
    franny.name = "Franny"
    franny.bio = "franny's bio"
    franny.save

    franny_in_sub_t = Performance.new
    franny_in_sub_t.venue_id = sub_t.id
    franny_in_sub_t.artist_id = franny.id
    franny_in_sub_t.show_type = "Music"
    franny_in_sub_t.duration = 30
    franny_in_sub_t.date = Date.today
    franny_in_sub_t.save

    franny_in_new_gate = Performance.new
    franny_in_new_gate.venue_id = new_gate.id
    franny_in_new_gate.artist_id = franny.id
    franny_in_new_gate.show_type = "Music"
    franny_in_new_gate.duration = 30
    franny_in_new_gate.date = Date.today
    franny_in_new_gate.save

    franny_in_schwubas = Performance.new
    franny_in_schwubas.venue_id = schwubas.id
    franny_in_schwubas.artist_id = franny.id
    franny_in_schwubas.show_type = "Music"
    franny_in_schwubas.duration = 30
    franny_in_schwubas.date = Date.today
    franny_in_schwubas.save

    visit "/artists/#{franny.id}"

    expect(page).to have_tag("a", :with => { :href => "/venues/#{sub_t.id}" }, :text => /Sub-T/i),
      "Expected page to have the a link with the text 'Sub-T' and an href of '/venues/#{sub_t.id}'"

    expect(page).to have_tag("a", :with => { :href => "/venues/#{new_gate.id}" }, :text => /New Gate/i),
      "Expected page to have the a link with the text 'New Gate' and an href of '/venues/#{new_gate.id}'"
    
    expect(page).to have_tag("a", :with => { :href => "/venues/#{schwubas.id}" }, :text => /Schwubas/i),
      "Expected page to have the a link with the text 'Schwubas' and an href of '/venues/#{schwubas.id}'"


  end
end
