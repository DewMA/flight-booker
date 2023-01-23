import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  static targets = ["submitBtn"]

  next(){
    this.submitBtnTarget.style.visibility = "visible"
  }

  connect() {
  }
}
