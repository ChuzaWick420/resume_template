#import "./interface.typ": data, email, phone

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

#let header() = {[

  = #data.name <name>

  #for index in range(0, contacts.len()) {[
    #if calc.rem(index, 2) == 0 {
      [#contacts.at(index) <contact>]
    } else {
      [| #contacts.at(index) <contact> \ ]
    }
  ]}

]}
