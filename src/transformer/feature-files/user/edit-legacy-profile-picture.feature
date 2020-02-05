@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29831
@User
Feature: User - Edit - Legacy - Profile Picture

  Scenario: User can use a default profile picture
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    When The user clicks the "Use Default" link for the "Profile Picture" section in the "User Options" page
    Then The user profile picture is the "Default Profile Picture" image

  Scenario: User can use Gravatar
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    When The user clicks the "Use Gravatar" link for the "Profile Picture" section in the "User Options" page
    Then The user profile picture is the "Gravatar" image

  Scenario Outline: User can upload a profile picture with <Image Type> image
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    When The user clicks the "Upload" link for the "Profile Picture" section in the "User Options" page
    And The user selects the "<Image Type>" image file in the file browser in the "User Options" page
    Then The user profile picture is the "<Image Type>" image
    Examples:
      | Image Type |
      | jpg        |
      | jpeg       |
      | bmp        |
      | gif        |
      | png        |

  Scenario: User cannot upload a profile picture larger than 50 MB
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    When The user clicks the "Upload" link for the "Profile Picture" section in the "User Options" page
    And The user selects an image larger than 50 MB in the file browser in the "User Options" page
    Then The user profile picture is not the image file larger than 50 MB
