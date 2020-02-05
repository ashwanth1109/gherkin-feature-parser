@NotAutomated
@JIRA-Key-MANUSCRIPT-31703
@Gui
Feature: GUI - User Menu

  Scenario: Normal User can see items the sidebar menu
    Given The user is logged in as Normal User
    When The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    Then The following menu items are shown in the "YOU" section in the sidebar menu:
      | Activity     |
      | Snippets     |
      | Subscribe    |
      | User Options |
    And The following menu items are shown in the "FOGBUGZ" section in the sidebar menu:
      | Documentation |
    And The following menu items are shown in the sidebar menu:
      | Log Out |

  Scenario: Administrator can see items the sidebar menu
    Given The user is logged in as Administrator
    When The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    Then The following menu items are shown in the "YOU" section in the sidebar menu:
      | Activity     |
      | Snippets     |
      | Subscribe    |
      | User Options |
    And The following menu items are shown in the "FOGBUGZ" section in the sidebar menu:
      | Custom Fields        |
      | Documentation        |
      | Email All Users      |
      | Extra Features       |
      | Integrations         |
      | Mailboxes            |
      | Priority             |
      | Projects             |
      | Session Management   |
      | Site Configuration   |
      | Source Control       |
      | User Groups          |
      | Users                |
      | Webhooks             |
      | Workflow             |
      | Your FogBugz Account |
    And The following menu items are shown in the sidebar menu:
      | Log Out |
