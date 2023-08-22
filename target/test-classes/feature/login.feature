Feature: login Functionality
  seeing registered or authorized user conditions

  Scenario Outline: Login with valid credentials
    When User enter valid <username> in username textbox
     """
     a valid username will not show any error massage
     but if username is invalid there will be an error massage
     """
    And User enter valid <password> in password texbox
    And User clicks on login button
    Then Username should navigate to dashboard page

    Examples:
      | username        | password |
      | test@gmail.com  | 123312   |
      | test2@gmail.com | 21323123 |

  Scenario: datatable eg
  Given the following user exist
    | Name  | Email           | Facebook |
    | Bob   | Bob@gmail.com   | @bob     |
    | Jo    | Jo@gmail.com    | @jo      |
    | Benny | Benny@gmail.com | @benny   |

   #//Background:
   #// Given User is on login page
  # // And User is able to see username and password textboxes

 # //  Scenario: Login with valid credentials
  #//   When User enter valid username in username textbox
 # //  And User enter valid password in password texbox
 # //  And User clicks on login button
 # //  Then Username should navigate to dashboard page
  #//  But User should not be in login page

 # //  Example: login with invalid credentials
 # //   When User enter invalid username in username  textbox
  #//   When User enter invalid password in password texbox
 # //  When User clicks on login button
 # //   Then User should get an error message
 # //   But User should not navigate to dashboard page