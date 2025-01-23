import { Controller } from "@hotwired/stimulus";

export default class HelloContoller extends Controller<HTMLFormElement> {
  connect() {
    this.element.textContent = "Hello World!";
  }
}
