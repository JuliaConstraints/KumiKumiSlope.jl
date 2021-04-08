using KumiKumiSlope
using Documenter

DocMeta.setdocmeta!(KumiKumiSlope, :DocTestSetup, :(using KumiKumiSlope); recursive=true)

makedocs(;
    modules=[KumiKumiSlope],
    authors="Jean-Francois Baffier",
    repo="https://github.com/JuliaConstraints/KumiKumiSlope.jl/blob/{commit}{path}#{line}",
    sitename="KumiKumiSlope.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://JuliaConstraints.github.io/KumiKumiSlope.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaConstraints/KumiKumiSlope.jl",
    devbranch="main",
)
