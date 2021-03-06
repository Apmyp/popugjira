import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "form", "input" ]

  open() {
    this.formTarget.classList.remove('hidden');
  }

  close() {
    this.inputTarget.value = '';
    this.formTarget.classList.add('hidden');
  }
}
