import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar-dropdown"
export default class extends Controller {
  static targets = [ "menu", "x","navIcon","links", "linksDropdown"]
  connect() {
    // console.log("navbar-dropdown controller connected")

    window.addEventListener ("scroll",() => {
    // console.log(window.scrollY);
    const button = this.linksTarget.children[1];
    const button1 = this.linksDropdownTarget.children[2];
    // console.log(this.linksDropdownTarget.children)


})
  }
  toggleDropdown() {
    this.menuTarget.classList.toggle("hidden")
    this.menuTarget.classList.toggle("block")
    this.xTarget.classList.toggle("hidden")
    this.navIconTarget.classList.toggle("hidden")
  }
  changeColorDark(element) {

    if (element.classList.contains("text-neutral-100")) {
      element.classList.remove("text-neutral-100")
      element.classList.add("text-zinc-500")
    }
  }
}
