@NotAutomated
@JIRA-Key-MANUSCRIPT-31279
@WikiArticle
Feature: Wiki article - Edit - Draft Save

  Background:
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Wiki   |
      | Wiki-A |
    And The following wiki articles exist:
      | Page Title | Description                                         | Wiki   |
      | Article-1  | This is the original version of the Wiki Article-1. | Wiki-A |
      | Article-2  | This is the original version of the Wiki Article-2. | Wiki-A |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-1" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    When The user clicks the "Edit" button in the "View Wiki Article" page
    And The user is redirected to the "Edit Wiki Article" page
    And The user enters the wiki article details in the "Edit Wiki Article" page:
      | Description              |
      | This is a draft version. |

  Scenario: Wiki article draft version is auto saved when user is idle after making changes using "Edit" button
    When 1.5 minutes have passed
    Then The "Draft Saved" draft note is shown in the "Edit Wiki Article" page
    And The following details are shown in the "Draft Saved" draft note in the "Edit Wiki Article" page:
    # Message should include the timestamp. For example: Draft saved at 2:45 PM
      | Message     |
      | Draft saved |
    And The user clicks the "Save" button in the "Edit Wiki Article" page
    And The "Save Wiki Article" dialog is opened
    And The user clicks the "Save and View" button in the "Save Wiki Article" dialog
    And The "Save Wiki Article" dialog is closed
    And The user is redirected to the "View Wiki Article" page
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title | Description              | Wiki   |
      | Article-1  | This is a draft version. | Wiki-A |

  Scenario: Draft Saved notification disappears, after clicking Save button
    When 1.5 minutes have passed
    And The "Draft Saved" draft note is shown in the "Edit Wiki Article" page
    And The following details are shown in the "Draft Saved" draft note in the "Edit Wiki Article" page:
    # Message should include the timestamp. For example: Draft saved at 2:45 PM
      | Message     |
      | Draft saved |
    And The user clicks the "Save" button in the "Edit Wiki Article" page
    And The "Save Wiki Article" dialog is opened
    And The user clicks the "Save" button in the "Save Wiki Article" dialog
    And The "Save Wiki Article" dialog is closed
    Then The "Draft Saved" draft note disappears in the "Edit Wiki Article" page
    And The user is redirected to the "Edit Wiki Article" page
    And The following wiki article details are shown in the "Edit Wiki Article" page:
      | Page Title | Description              | Wiki   |
      | Article-1  | This is a draft version. | Wiki-A |

  Scenario: Administrator user gets an warning when user tries to navigate to another wiki article without saving the current draft
    When 1.5 minutes have passed
    And The "Draft Saved" draft note is shown in the "Edit Wiki Article" page
    And The following details are shown in the "Draft Saved" draft note in the "Edit Wiki Article" page:
    # Message should include the timestamp. For example: Draft saved at 2:45 PM
      | Message     |
      | Draft saved |
    And The user clicks the "View Article-2" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    Then The "Leave With Unsaved Wiki Changes" browser confirmation dialog is opened
    And The following dialog details are shown in the "Leave With Unsaved Wiki Changes" browser confirmation dialog:
      | Message                                                 |
      | You have unsaved wiki changes, are you sure you want to leave?  |
    And The user clicks the "OK" button in the "Leave With Unsaved Wiki Changes" browser confirmation dialog
    And The "Leave With Unsaved Wiki Changes" browser confirmation dialog is closed
    And The user is redirected to the "View Wiki Article" page
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title | Description                                         | Wiki   |
      | Article-2  | This is the original version of the Wiki Article-2. | Wiki-A |

  Scenario: The draft version of a wiki article is preserved when user navigates to another wiki article without saving the current draft
    Given 1.5 minutes have passed
    And The "Draft Saved" draft note is shown in the "Edit Wiki Article" page
    And The following details are shown in the "Draft Saved" draft note in the "Edit Wiki Article" page:
    # Message should include the timestamp. For example: Draft saved at 2:45 PM
      | Message     |
      | Draft saved |
    And The user clicks the "View Article-2" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "Leave With Unsaved Wiki Changes" browser confirmation dialog is opened
    And The following dialog details are shown in the "Leave With Unsaved Wiki Changes" browser confirmation dialog:
      | Message                                                    |
      | You have unsaved wiki changes, are you sure you want to leave?  |
    And The user clicks the "OK" button in the "Leave With Unsaved Wiki Changes" browser confirmation dialog
    And The "Leave With Unsaved Wiki Changes" browser confirmation dialog is closed
    And The user is redirected to the "View Wiki Article" page
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title | Description                                         | Wiki   |
      | Article-2  | This is the original version of the Wiki Article-2. | Wiki-A |
    When The user clicks the "View Article-1" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    And The user clicks the "Edit" button in the "View Wiki Article" page
    And The user is redirected to the "Edit Wiki Article" page
    Then The following details are shown in the "Draft Restored" draft note in the "Edit Wiki Article" page:
      | Message        | Link Text |
      | Draft restored | discard   |
    And The following wiki article details are shown in the "Edit Wiki Article" page:
      | Page Title | Description              | Wiki   |
      | Article-1  | This is a draft version. | Wiki-A |
    And The user clicks the "Save" button in the "Edit Wiki Article" page
    And The "Save Wiki Article" dialog is opened
    And The user clicks the "Save" button in the "Save Wiki Article" dialog
    And The "Save Wiki Article" dialog is closed
    And The "Draft Restored" draft note disappears in the "Edit Wiki Article" page
    And The user is redirected to the "Edit Wiki Article" page
    And The following wiki article details are shown in the "Edit Wiki Article" page:
      | Page Title | Description              | Wiki   |
      | Article-1  | This is a draft version. | Wiki-A |

  Scenario: Administrator user can discard the changes done in draft version of the wiki article
    Given 1.5 minutes have passed
    And The "Draft Saved" draft note is shown in the "Edit Wiki Article" page
    And The following details are shown in the "Draft Saved" draft note in the "Edit Wiki Article" page:
    # Message should include the timestamp. For example: Draft saved at 2:45 PM
      | Message     |
      | Draft saved |
    And The user clicks the "View Article-2" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "Leave With Unsaved Wiki Changes" browser confirmation dialog is opened
    And The following dialog details are shown in the "Leave With Unsaved Wiki Changes" browser confirmation dialog:
      | Message                                                 |
      | You have unsaved wiki changes, are you sure you want to leave?  |
    And The user clicks the "OK" button in the "Leave With Unsaved Wiki Changes" browser confirmation dialog
    And The "Leave With Unsaved Wiki Changes" browser confirmation dialog is closed
    And The user is redirected to the "View Wiki Article" page
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title | Description                                         | Wiki   |
      | Article-2  | This is the original version of the Wiki Article-2. | Wiki-A |
    And The user clicks the "View Article-1" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    And The user clicks the "Edit" button in the "View Wiki Article" page
    And The user is redirected to the "Edit Wiki Article" page
    And The following wiki article details are shown in the "Edit Wiki Article" page:
      | Page Title | Description              | Wiki   |
      | Article-1  | This is a draft version. | Wiki-A |
    And The following details are shown in the "Draft Restored" draft note in the "Edit Wiki Article" page:
      | Message        | Link Text |
      | Draft restored | discard   |
    When The user clicks the "discard" link in the "Edit Wiki Article" page
    Then The user is redirected to the "Edit Wiki Article" page
    And The "Draft Restored" draft note disappears in the "Edit Wiki Article" page
    And The following wiki article details are shown in the "Edit Wiki Article" page:
      | Page Title | Description                                         | Wiki   |
      | Article-1  | This is the original version of the Wiki Article-1. | Wiki-A |
    And The user clicks the "Save" button in the "Edit Wiki Article" page
    And The "Save Wiki Article" dialog is opened
    And The user clicks the "Save" button in the "Save Wiki Article" dialog
    And The "Save Wiki Article" dialog is closed
    And The user is redirected to the "Edit Wiki Article" page
    And The following wiki article details are shown in the "Edit Wiki Article" page:
      | Page Title | Description                                         | Wiki   |
      | Article-1  | This is the original version of the Wiki Article-1. | Wiki-A |
