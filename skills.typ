#import "./interface.typ": skills_entries
#import "./utils.typ": section_builder

#let skills() = {[
  #section_builder("Skills", skills_entries)
]}
