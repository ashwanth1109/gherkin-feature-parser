@NotAutomated
@JIRA-Key-MANUSCRIPT-29989
@Configuration
Feature: Configuration - Trusted Attachments - Wiki Article Attachments

  Scenario: User can define new trusted attachment file types and use them in wiki articles
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
    And The following wiki articles exist:
      | Wiki   | Page Title |
      | Wiki-A | Article-1  |
    And The user searches for the "Article-1" search string by using the search box
    And The following wiki articles are listed in the "Wiki Pages" table in the "Search" page:
      | Wiki-A Article-1 |
    And The user clicks the "View Article-1" link in the "Search" page
    And The "View Wiki Article" page is shown
    When The user clicks the "Edit" link in the "View Wiki Article" page
    And The "Edit Wiki Article" page is shown
    And The user enters the following details in the "Edit Wiki Article" page:
      | Attachments |
      | foobar.text |
    Then The following details are shown in the "Edit Wiki Article" page:
      | Wiki Article Content |
      | foobar.text          |

