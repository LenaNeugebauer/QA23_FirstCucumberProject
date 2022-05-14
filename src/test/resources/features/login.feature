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
    And Browser closed
    Examples:
      | email            | password   |
      | hann+7@gmail.com | Ka1234567$ |

  @invalidPassword
  Scenario Outline: Login with invalid data
    Given Navigate to Home Page
    When Click on Login tab
    And Enter a valid email and an invalid password
      | email   | password   |
      | <email> | <password> |
    And Click on Login button
    Then Alert appeared
    And Login Failed with code 400 appeared
    And Browser closed
    Examples:
      | email            | password |
      | hann+7@gmail.com | 12345Hp  |

  @invalidEmail
  Scenario Outline: Login with invalid data
    Given Navigate to Home Page
    When Click on Login tab
    And Enter a invalid email and an valid password
      | email   | password   |
      | <email> | <password> |
    And Click on Login button
    Then Alert appeared
    And Login Failed with code 400 appeared
    And Browser closed
    Examples:
      | email           | password   |
      | hannp@gmail.com | Ka1234567$ |