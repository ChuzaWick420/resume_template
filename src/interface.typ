#import "./utils.typ": dated_card, project_card, certificate_card, skill_entry

#let data = json("../data.json")

// NOTE: Variables
#let email = "mailto:" + data.email
#let phone = "tel:" + data.phone
