// NOTE: Usage Summary starts
//
// -----------------Define the dated card-------------
//
// #let example_experience_var = [
//    #let company  = ""
//    #let dates    = ""
//    #let role     = ""
//    #let location = ""
//    #let content  = [
//      - bullet 1
//      - bullet 2
//      - bullet n
//    ]
//
//    #dated_card(company, dates, role, location, content)
// ]
//
// --------------push the card into the list------------
//
// #entries.push(example_experience_var)
//
// NOTE: Usage Summary ends

#import "./utils.typ": section_builder
#import "./interface.typ": experience_entries

// NOTE: Section Builder
#let experience() = {[
  #section_builder("Work Experience", experience_entries)
]}
