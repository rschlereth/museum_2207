class Museum
    attr_reader :name, :exhibits, :patrons

    def initialize(name)
        @name = name
        @exhibits = []
    end

    def add_exhibit(exhibit)
        @exhibits << exhibit
    end

    def add_patron
        @patron << patron
    end

    def add_interest
        @patron.add_interest
    end

    def recommend_exhibits(exhibit)
        if patron_1.interests == dmns.exhibits
            return exhibits
        end
        if patron_2.interests == dmns.exhibits
            return exhibits
        end

    end
end
