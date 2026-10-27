#import "./utils.typ": dated_card, project_card, certificate_card, skill_entry

#let data = json("./data.json")

// NOTE: Variables

// NOTE: Header
#let person_name = data.name
#let email = "mailto:" + data.email
#let phone = "tel:" + data.phone

#let contacts = ()
#contacts.push(
  link(phone)[#data.phone]
)

#contacts.push(
  link(email)[#data.email]
)

#for contact in data.socials {
  contacts.push(
  link(contact.url)[#contact.display]
  )
}

#contacts.push(data.location)

// NOTE: Professional Summary
#let prof_summary = data.summary

// NOTE: Experience

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

#let experience_entries = ()

#for experience in data.experience {
  let entry = [

    #let company = experience.name
    #let dates = experience.dates
    #let role = experience.role
    #let location = experience.location
    #let content = for comment in experience.comments [- #comment]

    #dated_card(company, dates, role, location, content)
  ]

  experience_entries.push(entry)
}

// NOTE: Projects

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

#let project_entries = ()

#for project in data.projects {
  let entry = [
    #let project_name = project.name
    #let url = link(project.url)[#project.url]

    #let content = for comment in project.comments [- #comment]
    #project_card(project_name, url, content)
  ]

  project_entries.push(entry)
}

// NOTE: Education

// -----------------Define the dated card-------------
//
// #let example_edu_var = [
//    #let institute = ""
//    #let dates     = ""
//    #let degree    = ""
//    #let location  = ""
//    #let content   = [
//      - bullet 1
//      - bullet 2
//      - bullet n
//    ]
//
//    #dated_card(institute, dates, degree, location, content)
// ]

#let edu_entries = ()

#for education in data.education {
  let entry = [
  
    #let institute = education.institute
    #let dates = education.dates
    #let degree = education.title
    #let location = education.location
    #let content = for comment in education.comments [- #comment]
  
    #dated_card(institute, dates, degree, location, content)
  ]

  edu_entries.push(entry)
}

// NOTE: Certificates

// -----------------Define the certificate card-------------
//
// #let example_cert_var = [
//    #let name = ""
//    #let org  = ""
//    #let ID   = link("")[display_text_you_want_to_show]
//    #let date = ""
//
//    #certificate_card(
//      name,
//      org,
//      date, 
//      id: [(#ID)]
//    )
// ]

#let cert_entries = ()

#for certificate in data.certificates {
  let entry = [
    #let name = certificate.title
    #let org = certificate.issuer
    #let ID = link(certificate.url)[#certificate.url_display]
    #let date = certificate.date
  
    #certificate_card(
      name,
      org,
      date, 
      id: [(#ID)]
    )
  ]
  
  cert_entries.push(entry)
}

// NOTE: Volunteering

// -----------------Define the dated card-------------
//
// #let example_activity_var = [
//   #let event = ""
//   #let activity = ""
//   #let location = ""
//   #let date = ""
//   #let content = [
//     - bullet 1
//     - bullet 2
//     - bullet N
//   ]
//
//   #dated_card(event, date, activity, location, content)
//
// ] 

#let vol_entries = ()

#for volunteering in data.volunteering {
  let entry = [
    #let event = volunteering.title
    #let activity = volunteering.description
    #let location = volunteering.location
    #let date = volunteering.dates
    #let content = for comment in volunteering.comments [- #comment]

    #dated_card(event, date, activity, location, content)
  ]

  vol_entries.push(entry)
}

// NOTE: Skills

// -----------------Define the skill card-------------
//
// #let example_skill_var = [
//    #let skill_heading = ""
//    #let content       = ""
//
//    #skill_entry(skill_heading, content)
// ]

#let skills_entries = ()

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

  skills_entries.push(entry)
}
