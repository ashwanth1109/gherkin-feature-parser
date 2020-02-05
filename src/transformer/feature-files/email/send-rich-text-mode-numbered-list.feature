@NotAutomated
@JIRA-Key-MANUSCRIPT-31688
@Email
Feature: Email - Send - Rich Text Mode - Numbered List

  Scenario: User can insert a numbered list when sending emails
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user clicks the "Insert/Remove Numbered List" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The "Description" field in the "New Email" page is:
    """
<ol>
	<li>&nbsp;</li>
</ol>
    """

  Scenario: User can remove a numbered list  when sending emails
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user clicks the "Insert/Remove Numbered List" button in the "New Email" page
    And The user clicks the "Insert/Remove Numbered List" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description |
      |             |
