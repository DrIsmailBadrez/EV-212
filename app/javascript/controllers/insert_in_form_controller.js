import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-form"
export default class extends Controller {
  static targets = ["form", "button", "outerform", "count"]

  connect() {
    // console.log(this.element)
    // console.log(this.buttonTarget)
    this.countTarget.defaultValue = "1";
  }

  add(event) {
    event.preventDefault()
    this.outerformTarget.insertAdjacentHTML("beforeend", this.formTarget.outerHTML)
  }
}
