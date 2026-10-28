#import "./interface.typ": data
#import "./utils.typ": section_builder, dated_card

#let entries = ()

#for volunteering in data.volunteering {
  let entry = [
    #let event = volunteering.title
    #let activity = volunteering.description
    #let location = volunteering.location
    #let date = volunteering.dates
    #let content = for comment in volunteering.comments [- #comment]

    #dated_card(event, date, activity, location, content)
  ]

  entries.push(entry)
}
// NOTE: Section Builder

#let volunteering() = {[
  #section_builder("Volunteer Experience", entries)
]}
