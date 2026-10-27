#import "style.typ": theme
#show: wholedoc => theme(wholedoc)

#import "./header.typ": header
#import "./summary.typ": summary
#import "./projects.typ": projects
#import "./education.typ": education
#import "./certificates.typ": certificates
#import "./experience.typ": experience
#import "./volunteering.typ": volunteering
#import "./skills.typ": skills

// NOTE: You can re-order or remove sections here.

#header()
#summary()
#skills()
#experience()
#projects()
#education()
#certificates()
#volunteering()
