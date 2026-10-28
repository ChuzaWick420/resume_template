// NOTE: font
#let font = "Arial"
#let normal_text_size = 12pt
#let section_text_size = 14pt
#let name_size = 22pt

// NOTE: colors
#let section_clr = rgb("#21486a")
#let subsections_clr = rgb("#21486a")
#let links_clr = rgb("#2563EB")

// --------------------------------------------------------------

#let theme(doc) = {

// NOTE: page layout
set page(margin: 0.5in)
set par(
    leading: 0.4em,
    spacing: 0.5em
  )

// NOTE: Text formatting
set text(font: font, size: normal_text_size)

show <name>: set text(
        size: name_size,
        fill: section_clr
    )
show <section>: set text(
        size: section_text_size,
        fill: section_clr
    )
show <subsection>: set text(
        fill: subsections_clr
    )

show link: set text(fill: links_clr)

// NOTE: Display the contents after setting the rules.
doc

}
