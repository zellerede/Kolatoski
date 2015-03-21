
class Kolat
    attr_accessor :seq, :idx, :digit, :show
    
    def initialize(n=0)
        @seq   = [1,2,2]
        @show  = []
        @idx   = 2
        @digit = 1
        build(n)
        puts(self)
    end

    def build(more=100)
        n = @show.size + more
        while (@seq.size<n)
            add(@seq[@idx])
            @idx   += 1
            @digit = 3-@digit
        end
        @show = @seq.take(n)
    end

    def add(how_many)
        how_many.times { @seq.push(@digit) }
    end

    def to_s
        @show
    end
end
