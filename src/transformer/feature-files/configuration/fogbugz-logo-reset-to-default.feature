@NotAutomated
@JIRA-Key-MANUSCRIPT-30047
@Configuration
Feature: Configuration - FogBugz Logo - Reset to default

  Scenario: Administrator can change FogBugz Logo: Reset to default
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The "Site Configuration" page is shown
    And The user clicks the "Advanced" tab in the "Site Configuration" page
    And The "Advanced" tab is shown in the "Site Configuration" page
    And The user enters the following details in the "Advanced" tab in the "Site Configuration" page:
      | New Logo                 |
      | file:///logo-320x240.png |
    And The user clicks the "OK" button in the "Site Configuration" page
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The "Site Configuration" page is shown in the "Site Configuration" page
    And The user clicks the "Advanced" tab in the "Site Configuration" page
    And The "Advanced" tab is shown in the "Site Configuration" page
    When The user clicks the "Reset to use the FogBugz default logo." link in the "Advanced" tab in the "Site Configuration" page
    And The "Site Configuration" page is reloaded
    And The user clicks the "OK" button in the "Site Configuration" page
    # TODO: As per the observation, the user is redirected to either the "Iteration Planner" page or the "Filters" page: one of these pages that was last visited.
    Then The following FogBugz logo is shown in the sidebar:
      | Logo     | Width | Height |
      | Kiwi.svg | 32    | 32     |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The "Site Configuration" page is shown in the "Site Configuration" page
    And The user clicks the "Advanced" tab in the "Site Configuration" page
    And The "Advanced" tab is shown in the "Site Configuration" page
    And The following details are shown in the "Advanced" tab in the "Site Configuration" page:
      | New Logo | Width | Height | Max Width | Max Height | Margin Right |
      | Kiwi.svg | 50    | 50     | 130       | 50         | 25           |
