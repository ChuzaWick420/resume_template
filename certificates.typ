#import "./utils.typ": section_builder
#import "./interface.typ": cert_entries

// NOTE: Section Builder

#let certificates() = {[
  #section_builder("Certificates", cert_entries)
]}
