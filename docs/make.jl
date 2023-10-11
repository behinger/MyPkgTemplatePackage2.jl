using MyPkgTemplatePackage2
using Documenter

DocMeta.setdocmeta!(MyPkgTemplatePackage2, :DocTestSetup, :(using MyPkgTemplatePackage2); recursive=true)

makedocs(;
    modules=[MyPkgTemplatePackage2],
    authors="Benedikt Ehinger <behinger@uos.de> and contributors",
    repo="https://github.com/behinger/MyPkgTemplatePackage2.jl/blob/{commit}{path}#{line}",
    sitename="MyPkgTemplatePackage2.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://behinger.github.io/MyPkgTemplatePackage2.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/behinger/MyPkgTemplatePackage2.jl",
    devbranch="main",
)
