struct Part
    base::Vector{Point}
    color::Color
    entrances::Vector{Point}
    exits::Vector{Point}
    junctions::Vector{Point}
    shape::Int
end

part(color::Color, shape::Int) = part(color, Val(shape))

base(p) = p.base
color(p) = p.color
entrances(p) = p.entrances
exits(p) = p.exits
junctions(p) = p.junctions
shape(p) = p.shape

is_base(p) = !isempty(base(p))
is_junction(p) = !isempty(junctions(p))
is_root(p) = isempty(entrances(p)) && !isempty(exits(p))
is_leaf(p) = !isempty(entrances(p)) && isempty(exits(p))

# Part 1
function part(color, ::Val{1})
    entrances = [Point(0, 0, 1)]
    exits = [Point(0, 0, 0)]
    return Part(empty_points, color, entrances, exits, empty_points, 1)
end

# Part 2
function part(color, ::Val{2})
    base = [Point(0, 0, 0)]
    junctions = [Point(0, 0, 1)]
    return Part(base, color, empty_points, empty_points, junctions, 2)
end
