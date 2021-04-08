

function set_100()
    set = Dict{Part, Int}()

    # Parts 1
    for c in [red, green, yellow, blue]
        push!(set, part(c, 1) => 10)
    end

    # Parts 2
    for c in [blue, yellow]
        push!(set, part(c, 2) => 1)
    end

    return set
end
