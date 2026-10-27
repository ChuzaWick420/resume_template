#import "./interface.typ": person_name, contacts

#let header() = {[

  = #person_name <name>

  #for index in range(0, contacts.len()) {[
    #if calc.rem(index, 2) == 0 {
      [#contacts.at(index) <contact>]
    } else {
      [| #contacts.at(index) <contact> \ ]
    }
  ]}

]}
