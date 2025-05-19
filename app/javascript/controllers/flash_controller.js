import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    setTimeout(() => {
      this.element.classList.add("opacity-0", "translate-y-2");
    }, 3000); // 3 วินาที

    setTimeout(() => {
      this.element.remove();
    }, 4000); // ลบ element ทิ้ง (optional)
  }
}
