@NotAutomated
@JIRA-Key-MANUSCRIPT-29839
@User
Feature: User - Edit - Legacy - Homepage

  Scenario: User - Edit - Legacy - Homepage
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    And The user enters the user options details in the "User Options" page:
      | Homepage              |
      | http://www.google.com |
    And The user clicks the "OK" button in the "User Options" page
    And The following user groups exist:
      | Title |
      | Fakes |
    And The following discussion groups exist:
      | Title      |
      | Flat earth |
    And The following discussion topics exist:
      | Discussion Group | Title   |
      | Flat earth       | Turtles |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Groups" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Fakes" user group in the "User Groups" page
    And The user clicks the "discussion groups" link in the "Edit User Group" page
    And The user clicks the "Flat earth" link for the "Flat earth" discussion group in the "Discussion Groups" page
    And The user clicks the "Turtles" link in the "Discussion Group" page
    When The user clicks the "Administrator" link in the "Discussion Sign" section in the "Discussion Topic" page
    Then The user is redirected to the "http://www.google.com" site
