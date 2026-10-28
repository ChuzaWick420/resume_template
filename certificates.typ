#import "./interface.typ": data
#import "./utils.typ": section_builder, certificate_card

#let entries = ()

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
  
  entries.push(entry)
}

// NOTE: Section Builder

#let certificates() = {[
  #section_builder("Certificates", entries)
]}
