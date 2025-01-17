require './lib/museum'
require './lib/patron'
require './lib/exhibit'

RSpec.describe Museum do
    it 'exists' do
        dmns = Museum.new("Denver Museum of Nature and Science")
        expect(dmns).to be_instance_of(Museum)
    end

    it 'has a name' do
        dmns = Museum.new("Denver Museum of Nature and Science")
        expect(dmns.name).to eq("Denver Museum of Nature and Science")
    end

    it 'has exhibits' do
        dmns = Museum.new("Denver Museum of Nature and Science")
        expect(dmns.exhibits).to eq([])
    end

    it 'can add exhibits' do
        dmns = Museum.new("Denver Museum of Nature and Science")
        gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
        dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
        imax = Exhibit.new({name: "IMAX",cost: 15})

        dmns.add_exhibit(gems_and_minerals)
        dmns.add_exhibit(dead_sea_scrolls)
        dmns.add_exhibit(imax)
        expect(dmns.exhibits).to eq(Exhibits)
    end

    it 'has patrons' do
        dmns = Museum.new("Denver Museum of Nature and Science")
        patron_1 = Patron.new("Bob", 20)
        patron_2 = Patron.new("Sally", 20)
        expect(dmns.patrons).to eq([])
    end

    it 'has added interests' do
        dmns = Museum.new("Denver Museum of Nature and Science")
        gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
        dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
        imax = Exhibit.new({name: "IMAX",cost: 15})
        patron_1 = Patron.new("Bob", 20)

        patron_1.add_interest("Dead Sea Scrolls") 
        patron_1.add_interest("Gems and Minerals")
        expect(dmns.recommend_exhibits(patron_1)).to eq(patron_1.interests)
    end

    it 'can add patrons' do
        dmns = Museum.new("Denver Museum of Nature and Science")
        gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
        dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
        imax = Exhibit.new({name: "IMAX",cost: 15})
        patron_1 = Patron.new("Bob", 20)
        patron_2 = Patron.new("Sally", 20)

        patron_2.add_interest("IMAX")
    end
end

    "This is where Iteration 3 would go if I could just pace myself and stop making stupid mistakes (or, more generally, get my head out of my ass)."