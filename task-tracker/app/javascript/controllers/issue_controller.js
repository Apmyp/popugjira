import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["checkbox"]
  static values = { id: Number }

  toggle() {
    console.log("Issue", this.idValue, this.checkboxTarget.checked ? "checked" : "not checked")
  }
}
