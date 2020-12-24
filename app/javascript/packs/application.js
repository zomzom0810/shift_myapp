
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bootstrap';
import '../stylesheets/application';
require("jquery") 
require("bootstrap")
require("./test.js")

Rails.start()
Turbolinks.start()
ActiveStorage.start()
