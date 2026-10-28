#import "./interface.typ": data
#import "./utils.typ": section_builder, dated_card

#let entries = ()

#for experience in data.experience {
  let entry = [
    #let company = experience.name
    #let dates = experience.dates
    #let role = experience.role
    #let location = experience.location
    #let content = for comment in experience.comments [- #comment]

    #dated_card(company, dates, role, location, content)
  ]

  entries.push(entry)
}

// NOTE: Section Builder
#let experience() = {[
  #section_builder("Work Experience", entries)
]}
