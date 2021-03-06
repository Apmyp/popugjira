// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
const importAll = (r) => r.keys().forEach(r);
importAll(require.context('../', true, /\.png$/));

Rails.start()

import "controllers"
import "stylesheets/application.scss"