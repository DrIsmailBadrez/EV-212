import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-form"
export default class extends Controller {
  static targets = ["form", "button", "outerform"]

  connect() {
    // console.log(this.element)
    // console.log(this.buttonTarget)
    console.log(this.formTarget)
  }

  add(event) {
    event.preventDefault()
    this.outerformTarget.insertAdjacentHTML("beforeend", this.formTarget.outerHTML)
  }
}
