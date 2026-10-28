#import "./interface.typ": data
#import "./utils.typ": section_builder, dated_card

#let entries = ()

#for education in data.education {
  let entry = [
    #let institute = education.institute
    #let dates = education.dates
    #let degree = education.title
    #let location = education.location
    #let content = for comment in education.comments [- #comment]
  
    #dated_card(institute, dates, degree, location, content)
  ]

  entries.push(entry)
}

// NOTE: Section Builder

#let education() = {[
  #section_builder("Education", entries)
]}
