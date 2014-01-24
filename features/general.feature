Feature: General actions

  @start_via_command
  Scenario: Start via command
    * Start gnome-calculator via command
    Then gnome-calculator should start

  @start_via_menu
  Scenario: Start via menu
    * Start gnome-calculator via menu
    Then gnome-calculator should start

  @quit_via_shortcut
  Scenario: Alt-F4 to quit application
    * Start gnome-calculator via command
    * Press "<Alt><F4>"
    Then gnome-calculator shouldn't be running anymore

  @help_via_shortcut
  Scenario: Open Help via F1
    * Start gnome-calculator via command
    * Press "<F1>"
    Then Help section "Calculator Help" is displayed
