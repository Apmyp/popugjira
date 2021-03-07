import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["checkbox", "wrapper"]
  static values = { id: Number }

  toggle() {
    console.log("Issue", this.idValue, this.checkboxTarget.checked ? "checked" : "not checked")

    if(this.checkboxTarget.checked) {
      this.wrapperTarget.classList.add("line-through", "opacity-50");
      this.checkboxTarget.setAttribute('disabled', true)
    }
  }
}
