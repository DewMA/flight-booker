import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  process(){
    this.element.requestSubmit()
  }

  connect() {
  }
}
