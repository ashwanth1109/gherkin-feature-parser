@NotAutomated
@JIRA-Key-MANUSCRIPT-31691
@Email
Feature: Email - Send - Rich Text Mode - Increase Indent

  Scenario: User can increase an indent of a numbered list when sending emails
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user clicks the "Insert/Remove Numbered List" button in the "New Email" page
    And The user clicks the "Increase Indent" button in the "New Email" page
    Then The "Description" field in the "New Email" page is:
    """
<ol style="margin-left: 40px;">
	<li>&nbsp;</li>
</ol>
    """

  Scenario: User can increase an indent of a bulleted list when sending emails
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user clicks the "Insert/Remove Bulleted List" button in the "New Email" page
    And The user clicks the "Increase Indent" button in the "New Email" page
    Then The "Description" field in the "New Email" page is:
    """
<ul style="margin-left: 40px;">
	<li>&nbsp;</li>
</ul>
    """
