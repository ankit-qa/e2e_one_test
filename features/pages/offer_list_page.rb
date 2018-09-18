class OfferListPage
  include PageObject

  element(:add_offer_button) {|b| b.button(class:"ak-button")}

  def adding_offer
    add_offer_button.click
  end

end