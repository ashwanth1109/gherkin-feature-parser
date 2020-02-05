@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29466
@Workflow
Feature: Workflow - Create, Edit, Copy - Display categories

  Background:
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name                | Email                              | Account Type |
      | Ultimate Ticket Resolver | admin@ultimate-ticket-resolver.com | Normal       |
    And The following categories exist in the following display order:
      | Category Name    | Plural Name       | Icon    | Default |
      | Customer Feature | Customer Features | Feature | true    |
    And The following categories have the following display order:
      | Category         |
      | Customer Feature |
      | Bug              |
      | Feature          |
      | Inquiry          |
      | Schedule Item    |

  Scenario: Administrator can create a new workflow: Display categories
    Given The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Workflows" link in the "Workflows" section
    And The "Workflows" page is shown
    When The user clicks the "Create Workflow" link in the "Workflows" page
    Then The "Create Workflow" page is shown
    And The following category accordion items are shown in the category accordion in the "Create Workflow" page in the following order:
      | Category         | Icon          | Expanded |
      | Customer Feature | Feature       | true     |
      | Bug              | Bug           | false    |
      | Feature          | Feature       | false    |
      | Inquiry          | Inquiry       | false    |
      | Schedule Item    | Schedule Item | false    |

  Scenario: Administrator can edit an existing workflow: Display categories
    Given The following workflows exist:
      | Workflow Name |
      | 5k Rewrite    |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Workflows" link in the "Workflows" section
    And The "Workflows" page is shown
    When The user clicks the "Edit" button for the "5k Rewrite" workflow row in the "Workflows" page
    Then The "Edit Workflow" page is shown
    And The following category accordion items are shown in the category accordion in the "Edit Workflow" page in the following order:
      | Category         | Icon          | Expanded |
      | Customer Feature | Feature       | true     |
      | Bug              | Bug           | false    |
      | Feature          | Feature       | false    |
      | Inquiry          | Inquiry       | false    |
      | Schedule Item    | Schedule Item | false    |

  Scenario: Administrator can copy an existing workflow: Display categories
    Given The following workflows exist:
      | Workflow Name |
      | 5k Rewrite    |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Workflows" link in the "Workflows" section
    And The "Workflows" page is shown
    When The user clicks the "Copy" button for the "5k Rewrite" workflow row in the "Workflows" page
    Then The "Copy Workflow" page is shown
    And The following category accordion items are shown in the category accordion in the "Copy Workflow" page in the following order:
      | Category         | Icon          | Expanded |
      | Customer Feature | Feature       | true     |
      | Bug              | Bug           | false    |
      | Feature          | Feature       | false    |
      | Inquiry          | Inquiry       | false    |
      | Schedule Item    | Schedule Item | false    |
