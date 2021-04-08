@testset "Part: 1" begin
    r = part(red, 1)
    g = part(green, 1)
    y = part(yellow, 1)
    b = part(blue, 1)

    @test color(r) == red
    @test color(g) == green
    @test color(y) == yellow
    @test color(b) == blue

    for p in [r, g, y, b]
        @test base(p) == empty_points
        @test Point(0, 0, 1) ∈ entrances(p)
        @test Point(0, 0, 0) ∈ exits(p)
        @test junctions(p) == empty_points
        @test shape(p) == 1
        @test !is_base(p)
        @test !is_junction(p)
        @test !is_leaf(p)
        @test !is_root(p)
    end
end

@testset "Part: 2" begin
    y = part(yellow, 2)
    b = part(blue, 2)

    @test color(y) == yellow
    @test color(b) == blue

    for p in [y, b]
        @test Point(0, 0, 0) ∈ base(p)
        @test entrances(p) == empty_points
        @test exits(p) == empty_points
        @test Point(0, 0, 1) ∈ junctions(p)
        @test shape(p) == 2
        @test is_base(p)
        @test is_junction(p)
        @test !is_leaf(p)
        @test !is_root(p)
    end
end
