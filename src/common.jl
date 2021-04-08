struct Point
    x::Int
    y::Int
    z::Int
end

const empty_points = Vector{Point}()

@enum Color begin
    red
    green
    yellow
    blue
    orange
    phosphorescent_green
    phosphorescent_yellow
    white
    clear_green
    colorless
end
