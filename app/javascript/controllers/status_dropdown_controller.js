import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
        let form = this.element;

        document.getElementById("project_status").onchange = function () {
            form.submit();
        };
    }
}
