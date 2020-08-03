task({ :sample_data => :environment}) do

  artists = [
    {id: 1, name: "Yadda Yadda", bio: "By night, Yadda Yadda is a groove hunter who chameleons from electropop to jazz to neo-soul. By day, she’s a Chicago native singer/composer/bassist, Ayanna Woods. Woods’ work as a composer and producer has popped up all over the city — in short films, in arrangements for the Chicago Children’s Choir, at Ganz Hall and Pritzker Pavillion and in your friend’s living room. She recently released her first self-produced rap mixtape U Thought under the name The Hi Hatter. Look out for Yadda Yadda’s upcoming EP with NYC-based producer Myles Avery (Overcoats).", created_at: Date.today, updated_at: Date.today},
    {id: 2, name: "Yves Tumor", bio: "Few projects at the forefront of contemporary art truly push visceral sonic boundaries in the way that Yves Tumor does. With an arc that impartially sits between psych-rock and modern pop, comparisons only serve as limitations intended to define that which cannot be. Yves Tumor melds restraint and chaos; diluting reality by giving meaning to the abstract and allowing for dissonance to be seen and heard as harmony. The next chapter begins with the release of the new single \"Gospel For A New Century\" on Feb 18 2020, and the new album, Heaven To A Tortured Mind, set for release April 3rd. Heaven To A Tortured Mind -written and composed by Yves Tumor and produced by Yves Tumor and Justin Raisen (Sky Ferreira, Ariel Pink, Charli XCX)- marks the fourth official full-length release from Yves Tumor and the follow-up to 2018's critically acclaimed and era-defining WARP release, Safe In The Hands Of Love. Breakout singles \"Noid\", \"Licking An Orchid\" and \"Lifetime\" shifted critical perception into media such as the New York Times, Rolling Stone, Pitchfork, the FADER, NPR and more awarding the album as one of the best releases of the year. Yves Tumor captivated audiences around the world with an incendiary live show that landed slots at premiere US festivals, most notably Coachella, Primavera and Pitchfork Midwinter Festival in 2019. Starting March 0f 2020, Yves Tumor and Its Band returns to the stage for a worldwide headline tour.", created_at: Date.today, updated_at: Date.today},
    {id: 3, name: "Hiatus Kaiyote", bio: "Self-termed future soul band Hiatus Kaiyote -- akin to a progressive neo-soul group with a little left-of-center hip-hop production -- formed in Melbourne, Australia in 2011. Fronted by singer, songwriter, and guitarist , the band also features bassist Paul Bender, drummer Perrin Moss, and keyboardist Simon Mavin (also of ).", created_at: Date.today, updated_at: Date.today},
    {id: 4, name: "Shigeto", bio: "Electronic music producer and drummer Zachary Shigeto Saginaw, aka Shigento, grew up in Ann Arbor, Michigan, where he picked up the drums & under the tutelage of his mentor Vincent York, began playing jazz (with lifelong collaborators Charles Tree & Josef Deas).", created_at: Date.today, updated_at: Date.today},
    {id: 5, name: "Comic Sans", bio: "All jokes and laughs.", created_at: Date.today, updated_at: Date.today},
    {id: 6, name: "Anamanaguchi", bio: "Anamanaguchi is a four-piece band from New York and L.A. that programs and performs intensely emotional digital music, and also once sent a slice of pizza into space.", created_at: Date.today, updated_at: Date.today},
    {id: 7, name: "Jabbawockeez", bio: "They are an American hip-hop dance crew, best known for being the winners of the first season of America's Best Dance Crew in 2008.[1] Established in 2003 in San Diego, California when dancers Kevin “KB” Brewer and Joe Larot put together an innovative dance crew to participate in dance competitions with the idea of disrupting the existing dance scene.", created_at: Date.today, updated_at: Date.today},
    {id: 8, name: "100 gecs", bio: "100 gecs is a duo between Laura Les and Dylan Brady. Scavenging scraps of musical influences and welding them into dangerous machines, they destroy the competition with their army of lethal bangers. Critically heralded as “very good” and “music,” their ambition knows no bounds.", created_at: Date.today, updated_at: Date.today},
    {id: 9, name: "Burns Twins", bio: "Burns Twins, Eddie and I.Z., grew up in Chicago, immersed in music and exposed to innovative and accomplished performers from around the world.", created_at: Date.today, updated_at: Date.today},
    {id: 10, name: "Sen Morimoto", bio: "I’ve been making music since tiny baby. I was born in Kyoto and immediately delivered to a Volkswagen bus where I lived with my family til we landed in Western Massachusetts. There I learned saxophone from the legend Charles Neville. Then I taught myself all the other instruments. Afterwards I moved to Chicago where I met all the lovely people and made the recordings. Now I co-own Sooper Records and do my thing. Thank you <3", created_at: Date.today, updated_at: Date.today},
    {id: 11, name: "Tasha", bio: "", created_at: Date.today, updated_at: Date.today},
    {id: 12, name: "E’mon Lauren", bio: "E’mon Lauren’s poems take artifacts, language, and ephemera from life on Chicago’s Southside and Westside to create a manifesto of survival and growth. These poems from Chicago’s first Youth Poet Laureate grapple with sexism, racism, love, and class with a style that announces Lauren as a poet to watch.", created_at: Date.today, updated_at: Date.today}
  ]
  Artist.delete_all
  Artist.insert_all!(artists)
  
  cities = [
    {id: 13, name: "Chicago", created_at: Date.yesterday, updated_at: Date.today },
    {id: 14, name: "New York", created_at: Date.yesterday, updated_at: Date.today },
    {id: 15, name: "Boston", created_at: Date.yesterday, updated_at: Date.today },
    {id: 16, name: "London", created_at: Date.yesterday, updated_at: Date.today },
    {id: 17, name: "Los Angelos", created_at: Date.yesterday, updated_at: Date.today }
  ]
  City.delete_all
  City.insert_all!(cities)

  venues = [
    {id: 10, name: "Young Chicago Authors", size: 50, description: "", city_id: 13, created_at: Date.today, updated_at: Date.today},
    {id: 11, name: "The Tilted Crisps", size: 50, description: "", city_id: 16, created_at: Date.today, updated_at: Date.today},
    {id: 12, name: "Schubas", size: 50, description: "", city_id: 13, created_at: Date.today, updated_at: Date.today},
    {id: 13, name: "Smalls & Mezzrow", size: 50, description: "", city_id: 17, created_at: Date.today, updated_at: Date.today},
    {id: 14, name: "Tip's Room", size: 50, description: "", city_id: 14, created_at: Date.today, updated_at: Date.today},
    {id: 15, name: "Subterranean", size: 50, description: "", city_id: 13, created_at: Date.today, updated_at: Date.today},
    {id: 16, name: "Elsewhere", size: 25, description: "", city_id: 14, created_at: Date.today, updated_at: Date.today},
    {id: 17, name: "BRIC", size: 25, description: "", city_id: 17, created_at: Date.today, updated_at: Date.today},
    {id: 18, name: "Blue Note", size: 25, description: "", city_id: 15, created_at: Date.today, updated_at: Date.today},
    {id: 19, name: "The Forest", size: 50, description: "", city_id: 14, created_at: Date.today, updated_at: Date.today},
    {id: 20, name: "Tea's Party", size: 100, description: "", city_id: 15, created_at: Date.today, updated_at: Date.today},
    {id: 21, name: "Zero Gravity", size: 100, description: "", city_id: 13, created_at: Date.today, updated_at: Date.today},
    {id: 22, name: "Bert & Ernie's", size: 120, description: "", city_id: 15, created_at: Date.today, updated_at: Date.today},
    {id: 23, name: "Rock Cafe", size: 100, description: "", city_id: 16, created_at: Date.today, updated_at: Date.today},
    {id: 24, name: "Glassdoor", size: 100, description: "", city_id: 15, created_at: Date.today, updated_at: Date.today},
    {id: 25, name: "The Muse", size: 100, description: "", city_id: 14, created_at: Date.today, updated_at: Date.today}
  ]
  Venue.delete_all
  Venue.insert_all!(venues)
  
  performances = [
    {id: 100, artist_id: 12, venue_id: 14, show_type: "Poetry", date: 3.months.ago, duration: 15, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 101, artist_id: 11, venue_id: 14, show_type: "Poetry", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 102, artist_id: 1, venue_id: 14, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 103, artist_id: 1, venue_id: 12, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 104, artist_id: 12, venue_id: 12, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 105, artist_id: 11, venue_id: 25, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 106, artist_id: 11, venue_id: 24, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 107, artist_id: 10, venue_id: 25, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 108, artist_id: 9, venue_id: 25, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 109, artist_id: 8, venue_id: 24, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 110, artist_id: 2, venue_id: 12, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 111, artist_id: 7, venue_id: 23, show_type: "Dancing", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 112, artist_id: 6, venue_id: 23, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 113, artist_id: 4, venue_id: 23, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 114, artist_id: 3, venue_id: 22, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 115, artist_id: 1, venue_id: 22, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 116, artist_id: 8, venue_id: 22, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 117, artist_id: 10, venue_id: 21, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 118, artist_id: 1, venue_id: 21, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 119, artist_id: 7, venue_id: 20, show_type: "Dancing", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 120, artist_id: 5, venue_id: 20, show_type: "Comedy", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 121, artist_id: 3, venue_id: 20, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 122, artist_id: 4, venue_id: 19, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 123, artist_id: 6, venue_id: 19, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 124, artist_id: 8, venue_id: 18, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 125, artist_id: 1, venue_id: 18, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 126, artist_id: 2, venue_id: 17, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 127, artist_id: 6, venue_id: 17, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 128, artist_id: 10, venue_id: 16, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 129, artist_id: 3, venue_id: 16, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 130, artist_id: 9, venue_id: 15, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 131, artist_id: 2, venue_id: 15, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 132, artist_id: 11, venue_id: 10, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 133, artist_id: 1, venue_id: 10, show_type: "Music", date: 3.months.ago, duration: 30, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 134, artist_id: 9, venue_id: 13, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago},
    {id: 135, artist_id: 2, venue_id: 13, show_type: "Music", date: 3.months.ago, duration: 20, created_at: 10.days.ago, updated_at: 9.days.ago}
  ]
  
    Performance.delete_all
    Performance.insert_all!(performances)
end
