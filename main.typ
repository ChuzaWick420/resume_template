#import "style.typ": theme
#show: wholedoc => theme(wholedoc)

#import "./header.typ": header
#import "./summary.typ": summary
#import "./skills.typ": skills
#import "./projects.typ": projects
#import "./experience.typ": experience
#import "./education.typ": education
#import "./certificates.typ": certificates
#import "./volunteering.typ": volunteering

// NOTE: You can re-order or remove sections here.

#header()
#summary()
#skills()
#experience()
#projects()
#education()
#certificates()
#volunteering()
