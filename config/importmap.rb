# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "app/javascript/nav_bar.js", to: "nav_bar.js"
pin "@hotwired/turbo-rails", to: "turbo.min.js"