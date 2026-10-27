
// NOTE: Usage Summary starts
//
// -----------------Define the project card-------------
//
// #let example_proj_var = [
//    #let project_name = ""
//    #let url          = link("")[display_text_you_want_to_show]
//    #let content      = [
//      - bullet 1
//      - bullet 2
//      - bullet n
//    ]
//
//    #project_card(project_name, url, content)
// ]
//
// --------------push the card into the list------------
//
// #entries.push(example_proj_var)
//
// NOTE: Usage Summary ends

// #import "./utils.typ": project_card, section_builder

// NOTE: Stack of display entries

// #let entries = ()

// NOTE: Definitions

// #let proj_1 = [
//   #let project_name = "Project 1"
//   #let url = link("https://github.com/JohnDoe/proj_1")[https://github.com/JohnDoe/proj_1]
//
//   #let content = [
//     - #lorem(25)
//     - #lorem(25)
//   ]
//
//   #project_card(project_name, url, content)
// ]
//
// #let proj_2 = [
//   #let project_name = "Project 2"
//   #let url = link("https://github.com/JohnDoe/proj_2")[https://github.com/JohnDoe/proj_2]
//
//   #let content = [
//     - #lorem(25)
//     - #lorem(10)
//   ]
//
//   #project_card(project_name, url, content)
// ]


// NOTE: Use stack to display your content

// #entries.push(proj_1)
// #entries.push(proj_2)

// NOTE: Section Builder
//
#import "./interface.typ": project_entries
#import "./utils.typ": section_builder

#let projects() = {[
  #section_builder("Projects", project_entries)
]}
