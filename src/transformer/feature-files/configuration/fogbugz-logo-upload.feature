@NotAutomated
@JIRA-Key-MANUSCRIPT-30046
@Configuration
Feature: Configuration - FogBugz Logo - Upload

  Scenario Outline: Administrator can change FogBugz Logo: Upload image
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The "Site Configuration" page is shown
    And The user clicks the "Advanced" tab in the "Site Configuration" page
    And The "Advanced" tab is shown in the "Site Configuration" page
    When The user enters the following details in the "Advanced" tab in the "Site Configuration" page:
      | New Logo   |
      | <New Logo> |
    And The user clicks the "OK" button in the "Site Configuration" page
    # TODO: As per the observation, the user is redirected to either the "Iteration Planner" page or the "Filters" page: one of these pages that was last visited.
    Then The following FogBugz logo is shown in the sidebar:
      | Logo       | Width | Height |
      | <New Logo> | 32    | 32     |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The "Site Configuration" page is shown in the "Site Configuration" page
    And The user clicks the "Advanced" tab in the "Site Configuration" page
    And The "Advanced" tab is shown in the "Site Configuration" page
    And The following details are shown in the "Advanced" tab in the "Site Configuration" page:
      | New Logo   | Width | Height | Max Width | Max Height | Margin Right |
      | <New Logo> | 66.66 | 50     | 130       | 50         | 25           |
    Examples:
      | New Logo                  |
      | file:///logo-320x240.jpg  |
      | file:///logo-320x240.jpeg |
      | file:///logo-320x240.bmp  |
      | file:///logo-320x240.gif  |
      | file:///logo-320x240.png  |
