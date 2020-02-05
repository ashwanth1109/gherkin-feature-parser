@NotAutomated
@JIRA-Key-MANUSCRIPT-29639
@User
Feature: User - Copy - View Details

  Scenario: Administrator can view user options of a user being copied
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Email         | Password | Account Type | Active On Kiln | Active on FogBugz |
      | Lion King | lk@jungle.com | lking    | Normal       | true           | true              |
    And The following user options exist:
      | Email         | Profile Picture | Language           | Date, Time, and Number Format | Time Zone   | Snippet Activation Key | Email Notification | Case Sort               | Close Case Action                        | Escalation Report  |
      | lk@jungle.com | Default         | Use Browser Format | Use Browser Format            | Use Default | `                      | On                 | Show newest edits first | Redirect to current filter after closing | Do not send report |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The user clicks the "Copy" link for the "Lion King" user row in the "Normal Users" table in the "Manage Users" page
    When The user is redirected to the "Copy User" page
    Then The following user options are listed in the "User Options" section in the "More Information" section in the "Copy User" page:
      | Language           | Date, Time, and Number Format | Time Zone   | Snippet Activation Key | Email Notification | Case Sort               | Close Case Action                        | Escalation Report  |
      | Use Browser Format | Use Browser Format            | Use Default | `                      | On                 | Show newest edits first | Redirect to current filter after closing | Do not send report |
    And The following user details are listed in the "Copy User" page:
      | Type   | Active on        | Status |
      | Normal | FogBugz and Kiln | Active |
