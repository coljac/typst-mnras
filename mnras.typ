/* 
    MNRAS template v0.1
    By Colin Jacobs, colinjacobs@swin.edu.au
    (Not affiliated with MNRAS!)
*/

#let affiliations(s) = {
 let affils = ()
 let auth_to_affils = (:)
 let affil_to_num = (:)
 let affils_postal  = (:)
 let names = ()
 for author in s {
    names.push(author.name.at(0) + ". "  + author.name.split( ).at(1))
    auth_to_affils.insert(names.at(-1), ())
    for val in author.affiliations {
      if val.name not in affils {
        affils.push(val.name)
        affils_postal.insert(val.name, ", " + val.postal)
        affil_to_num.insert(val.name, affils.len())
       }
       auth_to_affils.at(names.at(-1)).push(str(affil_to_num.at(val.name)))
    }
  }
 // names.at(0) = names.at(0) + footnote(numbering: "*", "email@email.edu")
 let emails = s.map(n => {
      footnote(numbering: "*", n.email)
 })
 let names = names.map(n => {
    let a = auth_to_affils.at(n)

    n + super(a.join(","))
    if n == names.at(0) {
      emails.at(0)
    }
    
  })
  

 block(text(weight: 500, 1.3em, names.join(", ")))
 par(justify: false, leading: 0.2em)[
  #text(size: 10pt, 
  for af in affils {
      let affilnum = affil_to_num.at(af)
      [#super[#affilnum]#af#affils_postal.at(af)\
    ]
    })
  ]
}

//#set math.equation(numbering: "(1)")
#let project(
  title: "",
  shorttitle: "",
  abstract: [],
  authors: (),
  keywords: "",
  date: none,
  body,
) = {
  // Set the document's basic properties.
  set document(author: authors.map(a => a.name), title: title)
  set page("a4",
    margin: (left: 25mm, right: 25mm, top: 30mm, bottom: 30mm),
    numbering: "1",
    number-align: start,
    header: locate(loc => {
      if calc.even(loc.page()) {
        [#loc.page() ~~~ #authors.at(0).name.at(0). #authors.at(0).name.split(" ").at(-1) et al]
        //align(center, header)
      } else {
        if loc.page() == 1 {
          grid( columns: (1fr, 1fr, 1fr), rows: 1, gutter: 3pt,
          [MNRAS 000, 1–2 (#date.split(" ").at(-1))], 
          align(center)[Preprint #date],
          align(right)[_Compiled with Typst_])
        } else {
          align(right)[#shorttitle ~~ #loc.page()]
        }
      }
  }),
  footer: locate(loc => {
      if calc.even(loc.page()) {
        [MNRAS 000, 1–2 (#date.split(" ").at(-1))]
      } else {
        if loc.page() == 1 {
          [$copyright$ #date.split(" ").at(-1) The Authors]
        } else {
        align(right)[MNRAS 000, 1–2 (#date.split(" ").at(-1))]
      }
      }})
  )
  
  set text(font: "New Computer Modern", lang: "en")
  show math.equation: set text(weight: 400)
  set heading(numbering: "1.1")

  show heading: it => pad(bottom: 0.4em)[#text(size: 0.7em, weight: 800)[*#it*]]
  show heading.where(level: 1): it => pad(bottom: 0.4em)[#text(size: 1.0em, weight: 800)[*#upper(it)*]]

  set math.equation(numbering: "(1)")

  v(2em, weak: false)
  // Title row.
  align(left)[
    #block(text(weight: "black", 1.75em, title))
    #v(1em, weak: true)
    //#date
  ]
//  pad(top: 1em)[#authornames(authors)]
  affiliations(authors)

pad(top: 2em, text(size: 0.85em)[Accepted XXX. Received YYY; in original form ZZZ])
  // Abstract.
  pad(
    x: 0em,
    top: 1.5em,
    bottom: 2.1em,
    align(left)[
      #heading(
        outlined: false,
        numbering: none,
        text(0.85em, [ABSTRACT]),
      )
      #par(justify: true)[#abstract
      
      *Key words*: #keywords.split(",").join(" --- ") 
    ]
    ],
  )
  
  // Main body.
  set par(justify: true)
  show: columns.with(2, gutter: 1.3em)
  
  body
}


