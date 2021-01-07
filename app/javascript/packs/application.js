import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import jquery from 'jquery';
window.$ = window.jquery = jquery;
//= require popper
import 'bootstrap';
import '../stylesheets/application';
//= require data-confirm-modal


require("../test")



Rails.start()
ActiveStorage.start()

