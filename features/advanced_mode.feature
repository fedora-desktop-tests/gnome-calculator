Feature: Advanced mode

  Background:
    * Make sure that gnome-calculator is running
    * Switch to Advanced mode

  @advanced_calculation
  Scenario Outline: Arithmentics
    * Calculate "<expression>"
    Then result is "<result>"

  Examples:
    | expression            | result     |
    | 123456789 + 987654321 | 1111111110 |
    | 987654321 + 0         | 987654321  |
    | 987654321 - 987654322 | -1         |
    | -98765-0              | -98765     |
    | 3/6                   | 0.5        |
    | -8/2                  | -4         |
    | 10 / 3 * 3            | 10         |
    | 6 / (3 * 2)           | 1          |
