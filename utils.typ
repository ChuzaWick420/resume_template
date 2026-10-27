#let dated_card(org, dates, role_or_program, location, content) = {[
  #grid(
    columns: (1fr, auto),
    [*#org* <subsection>], [#dates],
  )
  #grid(
    columns: (1fr, auto),
    [_ #role_or_program _], [_ #location _]
  )
  #content
]}

#let project_card(proj, url, content) = {[
  #grid(
    columns: (1fr, auto),
    align: left,
    [*#proj* <subsection>],
    [#url <link>]
  )
  #content
]}

#let skill_entry(skill_heading, content) = {[
  #let size_left = 1fr
  #let size_right = 6fr

  - #grid(
    columns: (size_left, size_right),
    [*#skill_heading:* <subsection>],
    content
  )
]}

#let section_builder(title, entries) = {[
  == #title <section>
 
  #line(length: 100%)

  #for entry in entries [
    #entry
  ]
]}

#let certificate_card(name, org, date, id: "") = {[
  #grid(
    columns: (1fr, auto),
    [- #name#id, #org],
    [#date]
  )
]}
