@NotAutomated
@JIRA-Key-MANUSCRIPT-31687
@Email
Feature: Email - Send - Rich Text Mode - Image

  Scenario: When sending emails user can insert an image into description
    Given The user is logged in as Administrator
    And The "test.png" file exists
    And The "test2.png" file exists
    When The user clicks the "New Email" button in the sidebar
    And The user clicks the "Image" button in the "New Email" page
    And The user uploads the "test.png" file in the "New Email" page
    And The user clicks the "Image" button in the "New Email" page
    And The user uploads the "test2.png" file in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description                                                                                                         |
      | <p><img src="/default.asp?pg=pgDownload&amp;pgType=pgDBAttachment&amp;ixAttachment=1&amp;sFileName=test.png" /></p> |
      | <p><img src="/default.asp?pg=pgDownload&amp;pgType=pgDBAttachment&amp;ixAttachment=2&amp;sFileName=test.png" /></p> |
