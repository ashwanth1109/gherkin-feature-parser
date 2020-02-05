@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29108
@Workflow
Feature: Workflow - Edit

  Background:
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name                | Email                              | Account Type |
      | Ultimate Ticket Resolver | admin@ultimate-ticket-resolver.com | Normal       |
    And The following categories exist in the following display order:
      | Category Name    | Plural Name       | Icon    | Default |
      | Customer Feature | Customer Features | Feature | false   |
    And The following workflows exist:
      | Workflow Name |
      | 5k Rewrite    |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Workflows" link in the "Workflows" section
    And The "Workflows" page is shown
    And The user clicks the "Edit" button for the "5k Rewrite" workflow row in the "Workflows" page

  Scenario: Administrator can edit an existing workflow: "Workflow name"
    Given The "Edit Workflow" page is shown
    When The user enters the workflow details in the "Edit Workflow" page:
      | Workflow Name        |
      | 5k Rewrite - Updated |
    And The user clicks the "OK" button in the "Edit Workflow" page
    Then The user is redirected to the "Workflows" page
    And The following workflows are listed in the "Workflows" page in the following order:
      | Workflow Name        | Projects                  | Can Edit | Can Copy | Can Delete |
      | 5k Rewrite - Updated |                           | true     | true     | true       |
      | Default Workflow     | Inbox, Onboarding Project | true     | true     | false      |
    And The user clicks the "Edit" button for the "5k Rewrite - Updated" workflow row in the "Workflows" page
    And The following workflow rules are listed in the "Edit Workflow" page:
      | Category         | Action                                           | Status                      | Assign To             | Force "Assign To" |
      | Bug              | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Bug              | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Bug              | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Bug              | Resolving a Case                                 | Resolved (Fixed)            | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Not Reproducible) | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Bug              | Resolving a Case                                 | Resolved (Won't Fix)        | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Feature          | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Feature          | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Feature          | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Feature          | Resolving a Case                                 | Resolved (Implemented)      | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Won't Implement)  | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Already Exists)   | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Inquiry          | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Resolving a Case                                 | Resolved (Responded)        | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (Won't Respond)    | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (SPAM)             | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (Waiting For Info) | -- No Change --       | false             |
      | Inquiry          | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Schedule Item    | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Resolving a Case                                 | Resolved (Completed)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Canceled)         | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Customer Feature | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Customer Feature | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Customer Feature | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Customer Feature | Resolving a Case                                 | Resolved (Completed)        | -- Case Opener --     | true              |
      | Customer Feature | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |

  Scenario Outline: Administrator can edit an existing workflow: "Assign To" for a "Creating or Editing the status of an Active Case" status
    Given The "Edit Workflow" page is shown
    When The user enters the workflow rules details in the "Edit Workflow" page:
      | Category         | Action                                           | Status | Assign To   | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active | <Assign To> | false             |
    And The user clicks the "OK" button in the "Edit Workflow" page
    Then The user is redirected to the "Workflows" page
    And The following workflows are listed in the "Workflows" page in the following order:
      | Workflow Name    | Projects                  | Can Edit | Can Copy | Can Delete |
      | 5k Rewrite       |                           | true     | true     | true       |
      | Default Workflow | Inbox, Onboarding Project | true     | true     | false      |
    And The user clicks the "Edit" button for the "5k Rewrite" workflow row in the "Workflows" page
    And The following workflow rules are listed in the "Edit Workflow" page:
      | Category         | Action                                           | Status                      | Assign To             | Force "Assign To" |
      | Bug              | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Bug              | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Bug              | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Bug              | Resolving a Case                                 | Resolved (Fixed)            | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Not Reproducible) | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Bug              | Resolving a Case                                 | Resolved (Won't Fix)        | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Feature          | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Feature          | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Feature          | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Feature          | Resolving a Case                                 | Resolved (Implemented)      | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Won't Implement)  | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Already Exists)   | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Inquiry          | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Resolving a Case                                 | Resolved (Responded)        | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (Won't Respond)    | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (SPAM)             | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (Waiting For Info) | -- No Change --       | false             |
      | Inquiry          | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Schedule Item    | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Resolving a Case                                 | Resolved (Completed)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Canceled)         | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Customer Feature | Creating or Editing the status of an Active Case | Active                      | <Assign To>           | false             |
      | Customer Feature | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Customer Feature | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Customer Feature | Resolving a Case                                 | Resolved (Completed)        | -- Case Opener --     | true              |
      | Customer Feature | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
    Examples:
      | Assign To                |
      | -- Primary Contact --    |
      | -- Case Opener --        |
      | -- No Change --          |
      | Ultimate Ticket Resolver |
      | Unassigned               |

  Scenario Outline: Administrator can edit an existing workflow: "Assign To" for a "Reactivating a Resolved Case" status
    Given The "Edit Workflow" page is shown
    When The user enters the workflow rules details in the "Edit Workflow" page:
      | Category         | Action                       | Status | Assign To   | Force "Assign To" |
      | Customer Feature | Reactivating a Resolved Case | Active | <Assign To> | false             |
    And The user clicks the "OK" button in the "Edit Workflow" page
    Then The user is redirected to the "Workflows" page
    And The following workflows are listed in the "Workflows" page in the following order:
      | Workflow Name    | Projects                  | Can Edit | Can Copy | Can Delete |
      | 5k Rewrite       |                           | true     | true     | true       |
      | Default Workflow | Inbox, Onboarding Project | true     | true     | false      |
    And The user clicks the "Edit" button for the "5k Rewrite" workflow row in the "Workflows" page
    And The following workflow rules are listed in the "Edit Workflow" page:
      | Category         | Action                                           | Status                      | Assign To             | Force "Assign To" |
      | Bug              | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Bug              | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Bug              | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Bug              | Resolving a Case                                 | Resolved (Fixed)            | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Not Reproducible) | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Bug              | Resolving a Case                                 | Resolved (Won't Fix)        | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Feature          | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Feature          | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Feature          | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Feature          | Resolving a Case                                 | Resolved (Implemented)      | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Won't Implement)  | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Already Exists)   | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Inquiry          | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Resolving a Case                                 | Resolved (Responded)        | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (Won't Respond)    | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (SPAM)             | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (Waiting For Info) | -- No Change --       | false             |
      | Inquiry          | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Schedule Item    | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Resolving a Case                                 | Resolved (Completed)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Canceled)         | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Customer Feature | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Customer Feature | Reactivating a Resolved Case                     | Active                      | <Assign To>           | false             |
      | Customer Feature | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Customer Feature | Resolving a Case                                 | Resolved (Completed)        | -- Case Opener --     | true              |
      | Customer Feature | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
    Examples:
      | Assign To                |
      | -- Primary Contact --    |
      | -- Case Opener --        |
      | -- Case Resolver --      |
      | -- No Change --          |
      | Ultimate Ticket Resolver |
      | Unassigned               |

  Scenario Outline: Administrator can edit an existing workflow: "Assign To" for a "Reopening a Closed Case" status
    Given The "Edit Workflow" page is shown
    When The user enters the workflow rules details in the "Edit Workflow" page:
      | Category         | Action                  | Status | Assign To   | Force "Assign To" |
      | Customer Feature | Reopening a Closed Case | Active | <Assign To> | false             |
    And The user clicks the "OK" button in the "Edit Workflow" page
    Then The user is redirected to the "Workflows" page
    And The following workflows are listed in the "Workflows" page in the following order:
      | Workflow Name    | Projects                  | Can Edit | Can Copy | Can Delete |
      | 5k Rewrite       |                           | true     | true     | true       |
      | Default Workflow | Inbox, Onboarding Project | true     | true     | false      |
    And The user clicks the "Edit" button for the "5k Rewrite" workflow row in the "Workflows" page
    And The following workflow rules are listed in the "Edit Workflow" page:
      | Category         | Action                                           | Status                      | Assign To             | Force "Assign To" |
      | Bug              | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Bug              | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Bug              | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Bug              | Resolving a Case                                 | Resolved (Fixed)            | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Not Reproducible) | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Bug              | Resolving a Case                                 | Resolved (Won't Fix)        | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Feature          | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Feature          | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Feature          | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Feature          | Resolving a Case                                 | Resolved (Implemented)      | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Won't Implement)  | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Already Exists)   | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Inquiry          | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Resolving a Case                                 | Resolved (Responded)        | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (Won't Respond)    | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (SPAM)             | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (Waiting For Info) | -- No Change --       | false             |
      | Inquiry          | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Schedule Item    | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Resolving a Case                                 | Resolved (Completed)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Canceled)         | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Customer Feature | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Customer Feature | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Customer Feature | Reopening a Closed Case                          | Active                      | <Assign To>           | false             |
      | Customer Feature | Resolving a Case                                 | Resolved (Completed)        | -- Case Opener --     | true              |
      | Customer Feature | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
    Examples:
      | Assign To                |
      | -- Primary Contact --    |
      | -- Case Opener --        |
      | -- Case Resolver --      |
      | -- Case Closer --        |
      | Ultimate Ticket Resolver |
      | Unassigned               |

  Scenario Outline: Administrator can edit an existing workflow: "Assign To" for a "Resolving a Case" status
    Given The "Edit Workflow" page is shown
    When The user enters the workflow rules details in the "Edit Workflow" page:
      | Category         | Action           | Status               | Assign To   | Force "Assign To" |
      | Customer Feature | Resolving a Case | Resolved (Completed) | <Assign To> | false             |
    And The user clicks the "OK" button in the "Edit Workflow" page
    Then The user is redirected to the "Workflows" page
    And The following workflows are listed in the "Workflows" page in the following order:
      | Workflow Name    | Projects                  | Can Edit | Can Copy | Can Delete |
      | 5k Rewrite       |                           | true     | true     | true       |
      | Default Workflow | Inbox, Onboarding Project | true     | true     | false      |
    And The user clicks the "Edit" button for the "5k Rewrite" workflow row in the "Workflows" page
    And The following workflow rules are listed in the "Edit Workflow" page:
      | Category         | Action                                           | Status                      | Assign To             | Force "Assign To" |
      | Bug              | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Bug              | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Bug              | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Bug              | Resolving a Case                                 | Resolved (Fixed)            | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Not Reproducible) | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Bug              | Resolving a Case                                 | Resolved (Won't Fix)        | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Feature          | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Feature          | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Feature          | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Feature          | Resolving a Case                                 | Resolved (Implemented)      | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Won't Implement)  | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Already Exists)   | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Inquiry          | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Resolving a Case                                 | Resolved (Responded)        | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (Won't Respond)    | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (SPAM)             | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (Waiting For Info) | -- No Change --       | false             |
      | Inquiry          | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Schedule Item    | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Resolving a Case                                 | Resolved (Completed)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Canceled)         | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Customer Feature | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Customer Feature | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Customer Feature | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Customer Feature | Resolving a Case                                 | Resolved (Completed)        | <Assign To>           | true              |
      | Customer Feature | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
    Examples:
      | Assign To                |
      | -- Primary Contact --    |
      | -- Case Opener --        |
      | -- No Change --          |
      | Ultimate Ticket Resolver |
      | Unassigned               |

  Scenario Outline: Administrator can edit an existing workflow: "Force "Assign To"" for statuses
    Given The "Edit Workflow" page is shown
    When The user enters the workflow rules details in the "Edit Workflow" page:
      | Category         | Action                                           | Status               | Assign To             | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active               | -- Primary Contact -- | <Force Assign To> |
      | Customer Feature | Reactivating a Resolved Case                     | Active               | -- Primary Contact -- | <Force Assign To> |
      | Customer Feature | Reopening a Closed Case                          | Active               | -- Primary Contact -- | <Force Assign To> |
      | Customer Feature | Resolving a Case                                 | Resolved (Completed) | -- Case Opener --     | <Force Assign To> |
      | Customer Feature | Resolving a Case                                 | Resolved (Duplicate) | -- Case Opener --     | <Force Assign To> |
    And The user clicks the "OK" button in the "Edit Workflow" page
    Then The user is redirected to the "Workflows" page
    And The following workflows are listed in the "Workflows" page in the following order:
      | Workflow Name    | Projects                  | Can Edit | Can Copy | Can Delete |
      | 5k Rewrite       |                           | true     | true     | true       |
      | Default Workflow | Inbox, Onboarding Project | true     | true     | false      |
    And The user clicks the "Edit" button for the "5k Rewrite" workflow row in the "Workflows" page
    And The following workflow rules are listed in the "Edit Workflow" page:
      | Category         | Action                                           | Status                      | Assign To             | Force "Assign To" |
      | Bug              | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Bug              | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Bug              | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Bug              | Resolving a Case                                 | Resolved (Fixed)            | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Not Reproducible) | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Bug              | Resolving a Case                                 | Resolved (Won't Fix)        | -- Case Opener --     | true              |
      | Bug              | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Feature          | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Feature          | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Feature          | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Feature          | Resolving a Case                                 | Resolved (Implemented)      | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Won't Implement)  | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Already Exists)   | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Feature          | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Inquiry          | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Inquiry          | Resolving a Case                                 | Resolved (Responded)        | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (Won't Respond)    | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (SPAM)             | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (Waiting For Info) | -- No Change --       | false             |
      | Inquiry          | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Inquiry          | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Schedule Item    | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Schedule Item    | Resolving a Case                                 | Resolved (Completed)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Canceled)         | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Schedule Item    | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Customer Feature | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | <Force Assign To> |
      | Customer Feature | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | <Force Assign To> |
      | Customer Feature | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | <Force Assign To> |
      | Customer Feature | Resolving a Case                                 | Resolved (Completed)        | -- Case Opener --     | <Force Assign To> |
      | Customer Feature | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | <Force Assign To> |
    Examples:
      | Force Assign To |
      | false           |
      | true            |
