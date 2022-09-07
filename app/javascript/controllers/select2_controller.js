import { Controller } from "@hotwired/stimulus"
import $ from "jquery"
import jQuery from "jquery"
import Select2 from "select2"

// Connects to data-controller="controller"
export default class extends Controller {
  static targets = ["list"]
  connect() {
    console.log("ter",this.listTarget)
    $('#list-chargers').select2();
  }
}
