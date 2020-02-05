@NotAutomated
@JIRA-Key-MANUSCRIPT-31674
@Email
Feature: Email - Send - Rich Text Mode - Snippets

  Background:
    Given The user is logged in as Administrator
    And The following snippets exist:
      | Type                   | Can Edit | Can Delete | Snippet | Replaced          | Notes |
      | Personal               | true     | true       | ppwd    | personal password |       |
      | Personal               | true     | true       | pls     | personal lets see |       |
      | Personal               | true     | true       | pdr     | personal doctor   |       |
      | Snippets For Everybody | true     | true       | pwd     | password          |       |
      | Snippets For Everybody | true     | true       | ls      | lets see          |       |
      | Snippets For Everybody | true     | true       | dr      | doctor            |       |

  Scenario: User can browse snippets in rich text mode when sending emails
    When The user clicks the "New Email" button in the sidebar
    And The user clicks the "Snippets" button in the "New Email" page
    Then The "Snippets" dialog is shown
    And The following snippets are shown in the "Snippets" dialog in the following order:
      | dr   |
      | ls   |
      | pdr  |
      | pls  |
      | ppwd |
      | pwd  |

  Scenario: User can see personal snippets descriptions in rich text mode when sending emails
    When The user clicks the "New Email" button in the sidebar
    And The user clicks the "Snippets" button in the "New Email" page
    And The "Snippets" dialog is shown
    And The user selects the "pdr" snippet in the "Snippets" dialog
    Then The following details are shown in the "Snippets" dialog:
      | Title | Description     |
      | pdr   | personal doctor |

  Scenario: User can see public snippets descriptions in rich text mode when sending emails
    When The user clicks the "New Email" button in the sidebar
    And The user clicks the "Snippets" button in the "New Email" page
    And The "Snippets" dialog is shown
    And The user selects the "dr" snippet in the "Snippets" dialog
    Then The following details are shown in the "Snippets" dialog:
      | Title       | Description |
      | doctor note | doctor      |
    And The "global" label is shown in the "Snippets" dialog

  Scenario: User can filter list of snippets in rich text mode when sending emails
    When The user clicks the "New Email" button in the sidebar
    And The user clicks the "Snippets" button in the "New Email" page
    And The "Snippets" dialog is shown
    And The user enters the following details in the "Snippets" dialog:
      | Filter |
      | p      |
    Then The following snippets are shown in the "Snippets" dialog in the following order:
      | pdr  |
      | pls  |
      | ppwd |
      | pwd  |

  Scenario Outline: User can use snippets from snippets list in rich text mode when sending emails
    When The user clicks the "New Email" button in the sidebar
    And The user clicks the "Snippets" button in the "New Email" page
    And The "Snippets" dialog is shown
    And The user selects the "<Snippet>" snippet in the "Snippets" dialog
    And The user clicks the "OK" button in the "Snippets" dialog
    Then The following details are shown in the "New Email" page:
      | Description   |
      | <Replacement> |
    Examples:
      | Snippet | Replacement       |
      | ppwd    | personal password |
      | pls     | personal lets see |
      | pdr     | personal doctor   |
      | pwd     | password          |
      | ls      | lets see          |
      | dr      | doctor            |
