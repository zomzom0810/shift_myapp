import Rails from "@rails/ujs"
// import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
//= require jquery
//= require rails-ujs
//= require popper
import 'bootstrap'
import '../stylesheets/application';


require("../test")

window.jQuery = window.$ = require('jquery')

Rails.start()
// Turbolinks.start()
ActiveStorage.start()

