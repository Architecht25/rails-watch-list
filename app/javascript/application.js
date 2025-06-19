// application.js

import * as Rails from "@rails/ujs"
Rails.start()

import "@hotwired/turbo-rails"
import "controllers"

console.log("📦 application.js chargé !")

// ⚠️ Assure-toi que bootstrap est bien piné dans config/importmap.rb si tu l’utilises via importmap :
import "bootstrap"
import "@popperjs/core"
