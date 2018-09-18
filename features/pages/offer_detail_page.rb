class OfferDetailPage

  include PageObject
  element(:region_button) {|b| b.div(text:"Berlin")}
  element(:save_button) {|b| b.span(text:"save")}
  element(:save_and_edit_button) {|b| b.span(text:"save and edit")}
  element(:portfolio_name) {|b|b.text_field(id:"offer-name")}

end


