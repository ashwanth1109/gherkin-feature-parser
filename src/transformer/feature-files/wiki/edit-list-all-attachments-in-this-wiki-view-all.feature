@NotAutomated
@JIRA-Key-MANUSCRIPT-31236
@Wiki
Feature: Wiki - Edit - List all attachments in this Wiki - View all

  Scenario: Administrator can navigate from the "Wiki Attachment List" page to the "Edit Wiki" page
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name                          |
      | FogBugz 5k Rewrite Wiki       |
      | FogBugz 5k Rewrite Wiki - Old |
    And The following wiki articles exist:
      | Wiki                          | Page Title     |
      | FogBugz 5k Rewrite Wiki       | Article 1      |
      | FogBugz 5k Rewrite Wiki       | Article 2      |
      | FogBugz 5k Rewrite Wiki       | Article 3      |
      | FogBugz 5k Rewrite Wiki - Old | Article  - Old |
    And The following wiki attachments exist:
      | Wiki                          | Wiki Article   | File Name | File Size |
      | FogBugz 5k Rewrite Wiki       | Article 1      | c.png     | 33000     |
      | FogBugz 5k Rewrite Wiki       | Article 2      | b.png     | 22000     |
      | FogBugz 5k Rewrite Wiki       | Article 2      | a.png     | 11000     |
      | FogBugz 5k Rewrite Wiki - Old | Article  - Old | x.png     | 33000     |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite Wiki" wiki row in the "Wikis" table in the "Manage Wikis" page
    And The user is redirected to the "Edit Wiki" page
    When The user clicks the "List all attachments in this Wiki" link in the "Edit Wiki" page
    Then The "Wiki Attachment List" page is shown
    And The following wiki attachments are listed in the "Wiki Attachment" table in the "Wiki Attachment List" page in the following order:
      | Attachment    | Can Delete |
      | a.png (11 KB) | true       |
      | b.png (22 KB) | true       |
      | c.png (33 KB) | true       |
