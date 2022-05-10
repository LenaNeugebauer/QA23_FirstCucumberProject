Feature: Login

  @validData
  Scenario Outline: Login with valid data
    Given Navigate to Home Page
    When Click on Login tab
    And Enter valid data
      | email   | password   |
      | <email> | <password> |
    And Click on Login button
    Then SignOut button displayed
    Examples:
      | email          | password |
      | hann@gmail.com | 12345Hp$ |

  @invalidPassword
  Scenario Outline: Login with invalid data
    Given Navigate to Home Page
    When Click on Login tab
    And Enter a valid email and an invalid password
      | email   | password   |
      | <email> | <password> |
    And Click on Login button
    Then Alert appeared
    Then Login Failed with code 400
    Examples:
      | email          | password |
      | hann@gmail.com | 12345Hp  |