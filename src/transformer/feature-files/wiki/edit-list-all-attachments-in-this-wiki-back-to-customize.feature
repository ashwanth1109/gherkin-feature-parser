@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-32396
@Wiki
Feature: Wiki - Edit - List all attachments in this Wiki - Back to customize

  Scenario: Administrator can navigate back from the "Wiki Attachment List" page to the "Edit Wiki" page of the same wiki
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name                    |
      | FogBugz 5k Rewrite Wiki |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite Wiki" wiki row in the "Wikis" table in the "Manage Wikis" page
    And The user is redirected to the "Edit Wiki" page
    And The user clicks the "List all attachments in this Wiki" link in the "Edit Wiki" page
    And The "Wiki Attachment List" page is shown
    When The user clicks the "Back to customize" link in the "Wiki Attachment List" page
    Then The "Edit Wiki" page is shown
