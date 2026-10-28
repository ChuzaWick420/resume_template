#import "./interface.typ": data
#import "./utils.typ": section_builder, skill_entry

#let entries = ()

#for section in data.skills {

  let entry = [

    #let skill_heading = section.section_name
    #let num_of_skills = section.skills_list.len()

    #let content = for index in range(0, num_of_skills){
      if (index != num_of_skills - 1) [
        #section.skills_list.at(index), 
      ] else [
        #section.skills_list.at(index)
      ]
    }

    #skill_entry(skill_heading, content)
  ]

  entries.push(entry)
}

#let skills() = {[
  #section_builder("Skills", entries)
]}
