@NotAutomated
@JIRA-Key-MANUSCRIPT-29990
@Configuration
Feature: Configuration - Trusted Attachments - New Email - Single Attachment

  Scenario: User can define new trusted attachment file types
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The "Site Configuration" page is shown
    And The user clicks the "Advanced" tab in the "Site Configuration" page
    And The "Advanced" tab is shown in the "Site Configuration" page
    And The user enters the following details in the "Advanced" tab in the "Site Configuration" page:
      | Trusted File Types                                                                           |
      | tar,gzip,gz,zip,bzip,doc,xls,ppt,docx,xlsx,xml,cty,pdf,csv,rar,txt,jpg,jpeg,bmp,gif,png,text |
    And The user clicks the "OK" button in the "Site Configuration" page
    And The user clicks the "New Email" button in the sidebar
    When The user enters the following details in the "New Email" page:
      | To                 | Subject | Attachments |
      | nobody@nowhere.com | 116     | foobar.text |
    Then The following mail details are shown in the "New Email" page:
      | Attachments |
      | foobar.text |
