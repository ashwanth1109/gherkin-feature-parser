@NotAutomated
@JIRA-Key-MANUSCRIPT-31280
@WikiArticle
Feature: Wiki article - Edit - Insert - Attachment

  Background:
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name   |
      | Wiki-A |
    And The following wiki articles exist:
      | Page Title | Description      | Wiki   |
      | Article-1  | New Wiki Article | Wiki-A |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-1" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    And The user clicks the "Edit" button in the "View Wiki Article" page
    And The user is redirected to the "Edit Wiki Article" page

  Scenario: Administrator user can add attachment to a wiki article using "Edit" button: Cursor position is unchanged in the "Description" rich text editor in the "Edit Wiki Article" page
    When The user clicks the "Insert" dropdown in the "Edit Wiki Article" page
    And The user selects the "Attachment" option from the "Insert" dropdown
    And The user selects the "image.png" image file in the file browser
    And The following details are shown in the "Uploaded Successful" draft note in the "Edit Wiki Article" page:
      | Uploaded Successful         |
      | File successfully uploaded. |
    And The user clicks the "Save" button in the "Edit Wiki Article" page
    And The "Save Wiki Article" dialog is opened
    And The user clicks the "Save and View" button in the "Save Wiki Article" dialog
    Then The "Save Wiki Article" dialog is closed
    And The user is redirected to the "View Wiki Article" page
    And The following wiki article details are shown in the "View Wiki Article" page:
    # TODO: After this step: Deep attachment verification can be added: Download and compare with the original one.
      | Page Title | Description                | Wiki   | Attachment Links |
      | Article-1  | image.png New Wiki Article | Wiki-A | image.png        |
    And The user clicks the "Info" button in the "View Wiki Article" page
    And The user is redirected to the "Wiki Article Info" page
    And The user clicks the "Attachments" button in the "Wiki Article Info" page
    And The user is redirected to the "Wiki Attachment List" page
    And The following wiki attachments are listed in the "Wiki Attachment" table in the "Wiki Attachment List" page in the following order:
      | Attachment | Can Delete |
      | image.png  | true       |

  Scenario: Administrator user can add attachment to a wiki article using "Edit" button: Cursor at the end of the "Description" rich text editor in the "Edit Wiki Article" page
    When The user clicks the "Insert" dropdown in the "Edit Wiki Article" page
    And The user places the cursor at the end of the "Description" rich text editor in the "Edit Wiki Article" page
    And The user selects the "Attachment" option from the "Insert" dropdown
    And The user selects the "image.png" image file in the file browser
    And The following details are shown in the "Uploaded Successful" draft note in the "Edit Wiki Article" page:
      | Uploaded Successful         |
      | File successfully uploaded. |
    And The user clicks the "Save" button in the "Edit Wiki Article" page
    And The "Save Wiki Article" dialog is opened
    And The user clicks the "Save and View" button in the "Save Wiki Article" dialog
    Then The "Save Wiki Article" dialog is closed
    And The user is redirected to the "View Wiki Article" page
    And The following wiki article details are shown in the "View Wiki Article" page:
    # TODO: After this step: Deep attachment verification can be added: Download and compare with the original one.
      | Page Title | Description                | Wiki   | Attachment Links |
      | Article-1  | New Wiki Article image.png | Wiki-A | image.png        |
    And The user clicks the "Info" button in the "View Wiki Article" page
    And The user is redirected to the "Wiki Article Info" page
    And The user clicks the "Attachments" button in the "Wiki Article Info" page
    And The user is redirected to the "Wiki Attachment List" page
    And The following wiki attachments are listed in the "Wiki Attachment" table in the "Wiki Attachment List" page in the following order:
      | Attachment        | Can Delete |
      | image.png (11 KB) | true       |
