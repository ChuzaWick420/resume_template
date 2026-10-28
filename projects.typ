#import "./interface.typ": data
#import "./utils.typ": section_builder, project_card

#let entries = ()

#for project in data.projects {
  let entry = [
    #let project_name = project.name
    #let url = link(project.url)[#project.url]
    #let content = for comment in project.comments [- #comment]

    #project_card(project_name, url, content)
  ]

  entries.push(entry)
}

#let projects() = {[
  #section_builder("Projects", entries)
]}
