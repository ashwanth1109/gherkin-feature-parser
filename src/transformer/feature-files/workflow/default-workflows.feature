@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29367
@Workflow
Feature: Workflow - Default workflows

  Scenario: System provides the default workflows
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    When The user clicks the "Customize Workflows" link in the "Workflows" section
    Then The "Workflows" page is shown
    And The following workflows are listed in the "Workflows" page in the following order:
      | Workflow Name    | Projects                  | Can Edit | Can Copy | Can Delete |
      | Default Workflow | Inbox, Onboarding Project | true     | true     | false      |
    And The user clicks the "Edit" button for the "Default Workflow" workflow row in the "Workflows" page
    And The following workflow rules are listed in the "Edit Workflow" page:
      | Category      | Action                                           | Status                      | Assign To             | Force "Assign To" |
      | Bug           | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Bug           | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Bug           | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Bug           | Resolving a Case                                 | Resolved (Fixed)            | -- Case Opener --     | true              |
      | Bug           | Resolving a Case                                 | Resolved (Not Reproducible) | -- Case Opener --     | true              |
      | Bug           | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Bug           | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Bug           | Resolving a Case                                 | Resolved (Won't Fix)        | -- Case Opener --     | true              |
      | Bug           | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Feature       | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Feature       | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Feature       | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Feature       | Resolving a Case                                 | Resolved (Implemented)      | -- Case Opener --     | true              |
      | Feature       | Resolving a Case                                 | Resolved (Won't Implement)  | -- Case Opener --     | true              |
      | Feature       | Resolving a Case                                 | Resolved (Already Exists)   | -- Case Opener --     | true              |
      | Feature       | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Feature       | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Feature       | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
      | Inquiry       | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Inquiry       | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Inquiry       | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Inquiry       | Resolving a Case                                 | Resolved (Responded)        | -- Case Opener --     | true              |
      | Inquiry       | Resolving a Case                                 | Resolved (Won't Respond)    | -- Case Opener --     | true              |
      | Inquiry       | Resolving a Case                                 | Resolved (SPAM)             | -- Case Opener --     | true              |
      | Inquiry       | Resolving a Case                                 | Resolved (Waiting For Info) | -- No Change --       | false             |
      | Inquiry       | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Inquiry       | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Schedule Item | Creating or Editing the status of an Active Case | Active                      | -- Primary Contact -- | false             |
      | Schedule Item | Reactivating a Resolved Case                     | Active                      | -- Primary Contact -- | false             |
      | Schedule Item | Reopening a Closed Case                          | Active                      | -- Primary Contact -- | false             |
      | Schedule Item | Resolving a Case                                 | Resolved (Completed)        | -- Case Opener --     | true              |
      | Schedule Item | Resolving a Case                                 | Resolved (Canceled)         | -- Case Opener --     | true              |
      | Schedule Item | Resolving a Case                                 | Resolved (Duplicate)        | -- Case Opener --     | true              |
      | Schedule Item | Resolving a Case                                 | Resolved (By Design)        | -- Case Opener --     | true              |
      | Schedule Item | Resolving a Case                                 | Resolved (Postponed)        | -- No Change --       | false             |
