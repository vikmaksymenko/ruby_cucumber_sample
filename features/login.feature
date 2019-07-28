Feature: Login

  Scenario: Do correct login
    Given User is on login page
    When User types "tomsmith" and "SuperSecretPassword!" and pushes Login
    Then User should see message about successful login
    And User should be in Secure Area

  Scenario Outline: Do incorrect login
    Given User is on login page
    When User types "<username>" and "<password>" and pushes Login
    Then User should see error message "<message>"
    Examples:
      | username  | password              | message                     |
      | foo       | SuperSecretPassword!  | Your username is invalid!   |
      | tomsmith  | wrong_password        | Your password is invalid!   | 


  