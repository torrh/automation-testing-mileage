Feature: Guardar Fillup

  Scenario: As a valid user I create new vehicle type
    When I press "Vehicles"
    Then I press the menu key
    Then I press "Edit vehicle types"
    Then I wait
    Then I press the menu key
    Then I wait
    Then I press "Add new vehicle type"
    Then I enter "Moto" into input field number 1
    Then I enter "Motocicleta" into input field number 2
    Then I take a screenshot
    Then I press view with id "save_btn"
    Then I should see text containing "Moto"

  Scenario: As a valid user I create new vehicle type
    When I press "Vehicles"
    Then I press the menu key
    Then I press "Edit vehicle types"
    Then I wait
    Then I press the menu key
    Then I wait
    Then I press "Add new vehicle type"
    Then I enter "Bicicleta" into input field number 1
    Then I enter "Bicicleta" into input field number 2
    Then I take a screenshot
    Then I press view with id "save_btn"
    Then I should see text containing "Bicicleta"

  Scenario: As a valid user I can save fillup
    When I press "Fillup"
    Then I enter "5000" into input field number 1
    Then I enter "10" into input field number 2
    Then I enter "12" into input field number 3
    Then I press view with id "date"
    Given I set the date to "12-12-2018" on DatePicker with index 1
    Then I press view with id "button1"
    Then I press view with id "partial"
    Then I take a screenshot
    Then I press view with id "save_btn"
    Then I press "History"
    Then I take a screenshot
    Then I should see text containing "12/12/18"

  Scenario: As a valid user I can edit fillup
    When I press "History"
    Then I press list item number 1
    Then I press view with id "edit"
    Then I clear input field number 2
    Then I enter "50" into input field number 2
    Then I clear input field number 3
    Then I enter "7" into input field number 3
    Then I press view with id "date"
    Given I set the date to "24-12-2018" on DatePicker with index 1
    Then I press view with id "partial"
    Then I take a screenshot
    Then I press view with id "save_btn"
    Then I go back

  Scenario: As a valid user I can create vehicle
    When I press "Vehicles"
    Then I press the menu key
    Then I press "Add new vehicle"
    Then I enter "Gol" into input field number 1
    Then I enter "2018" into input field number 2
    Then I enter "Usa" into input field number 3
    Then I enter "2017" into input field number 4
    Then I enter "Gol azul modelo 2017" into input field number 5
    Then I press view with id "type"
    Then I press list item number 3
    Then I hide the keyboard
    Then I press view with id "distance"
    Then I press "Kilometers"
    Then I press view with id "volume"
    Then I press "Gallons"
    Then I press view with id "economy"
    Then I press "Km / Gallon"
    Then I press view with id "save_btn"
    Then I wait
    Then I take a screenshot
    Then I should see text containing "Gol"

  Scenario: As a valid user I can create Motocicleta
    When I press "Vehicles"
    Then I press the menu key
    Then I press "Add new vehicle"
    Then I enter "KTM" into input field number 1
    Then I enter "2017" into input field number 2
    Then I enter "Taiwan" into input field number 3
    Then I enter "2016" into input field number 4
    Then I enter "Negra 2017" into input field number 5
    Then I press view with id "type"
    Then I press list item number 2
    Then I hide the keyboard
    Then I press view with id "distance"
    Then I press "Miles"
    Then I press view with id "volume"
    Then I press "Litres"
    Then I press view with id "economy"
    Then I press "Miles / Litre"
    Then I take a screenshot
    Then I press view with id "save_btn"
    Then I wait
    Then I should see text containing "KTM"

  Scenario: As a valid user I can create Bicicleta
    When I press "Vehicles"
    Then I press the menu key
    Then I press "Add new vehicle"
    Then I enter "Scott" into input field number 1
    Then I enter "2017" into input field number 2
    Then I enter "USA" into input field number 3
    Then I enter "2017" into input field number 4
    Then I enter "Bicicleta Para Mtb Scott Aspect 960 - Verde" into input field number 5
    Then I press view with id "type"
    Then I press list item number 1
    Then I hide the keyboard
    Then I press view with id "distance"
    Then I press "Kilometers"
    Then I press view with id "volume"
    Then I press "Gallons"
    Then I press view with id "economy"
    Then I press "Km / Litre"
    Then I take a screenshot
    Then I press view with id "save_btn"
    Then I should see text containing "Scott"

  Scenario: As a valid user I can edit vehicle
    When I press "Vehicles"
    Then I take a screenshot
    Then I press list item number 3
    Then I clear input field number 1
    Then I enter "Mazda" into input field number 1
    Then I clear input field number 2
    Then I enter "2018" into input field number 2
    Then I clear input field number 4
    Then I enter "2017" into input field number 4
    Then I press view with id "make_default"
    Then I take a screenshot
    Then I press view with id "save_btn"
    Then I should see text containing "Mazda"

  Scenario: As a valid user I can edit settings
    When I press "Fillup"
    Then I press the menu key
    Then I press "Settings"
    Then I toggle checkbox number 1
    Then I toggle checkbox number 2
    Then I toggle checkbox number 3

  Scenario: As a valid user I edit template service
    When I press "Fillup"
    Then I press the menu key
    Then I press "Service intervals"
    Then I press view with id "empty_edit_templates"
    Then I press list item number 1
    Then I wait
    Then I take a screenshot
    Then I press view with id "save_btn"
    Then I wait
    Then I take a screenshot

  Scenario: As a valid user I can save service
    When I press "Fillup"
    Then I press the menu key
    Then I press "Service intervals"
    Then I press view with id "empty_add_interval"
    Then I press view with id "vehicles"
    Then I press "Mazda"
    Then I wait
    Then I hide the keyboard
    Then I press view with id "units"
    Then I press "Kilometers"
    Then I hide the keyboard
    Then I enter text "20000" into field with id "odometer"
    Then I press view with id "date"
    Given I set the date to "12-12-2018" on DatePicker with index 1
    Then I press view with id "button1"
    Then I wait
    Then I take a screenshot
    Then I press view with id "save_btn"
    Then I wait
    Then I should see text containing "Oil change (standard)"

  Scenario: As a valid user I can edit service
    When I press "Fillup"
    Then I press the menu key
    Then I press "Service intervals"
    Then I press list item number 1
    Then I press view with id "vehicles"
    Then I press "Default vehicle"
    Then I press view with id "types"
    Then I press "Fuel filter"
    Then I hide the keyboard
    Then I press view with id "date"
    Given I set the date to "23-12-2018" on DatePicker with index 1
    Then I press view with id "button1"
    Then I take a screenshot
    Then I press view with id "save_btn"
    Then I should see text containing "Fuel filter"
