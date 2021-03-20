import { Controller } from "stimulus"
import Rails from "@rails/ujs"

export default class extends Controller {
  static targets = ["checkbox", "wrapper"]
  static values = { url: String }

  toggle() {
    console.log("Issue", this.urlValue, this.checkboxTarget.checked ? "checked" : "not checked")

    if(this.checkboxTarget.checked) {
      this.wrapperTarget.classList.add("line-through", "opacity-50")
      this.checkboxTarget.setAttribute('disabled', true)

      Rails.ajax({
        type: "POST",
        url: this.urlValue,
        success: () => console.log('Issue is closed'),
        error: () => console.error('Something went wrong')
      })
    }
  }
}
