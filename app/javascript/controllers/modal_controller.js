import { Controller } from "@hotwired/stimulus"

// Conecta-se ao data-controller="modal"
export default class extends Controller {
  static targets = ["dialog"]

  open() {
    this.dialogTarget.showModal()
  }

  close() {
    this.dialogTarget.close()
  }
}

