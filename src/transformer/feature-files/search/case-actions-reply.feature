@NotAutomated
@JIRA-Key-MANUSCRIPT-30464
@Search
Feature: Search - Case - Actions - Reply

  Scenario Outline: Administrator user can reply to an inquiry case from search results in Search page
    Given The user is logged in as Administrator
    And The following users exist:
        | Full Name  | Email                    | Account Type  | Status |
        | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
        | Category |  Case | Title              |
        | Inquiry  |  17   | This is an Inquiry |
    And The user searches for the "17" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Email" button present at the <Location> of the "View Active Case" page
    And The "Send Email" page is shown
    And The user enters the following details in the "Send Email" page:
        | From    | To                       |
        | FogBugz | testusera@manuscript.com |
    And The user clicks the "Send" button
    And The "View Active Case" page is shown
    And The user searches for the "to:testusera@manuscript.com" search string by using the search box
    And The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type  | Category  | Case | Title              | To         |
        | Case  | Inquiry   | 17   | This is an Inquiry | Test UserA |
    And The user hovers over the "Title" column of the "This is an Inquiry" case in the "Search" page
    And The "Action" dropdown is enabled in the "Search" page
    When The user clicks the "Action" dropdown in the "Search" page
    And The user selects the "Reply" option from the "Action" dropdown
    And The "Reply" page is shown
    And The user enters the following details in the "Reply" page:
        | From    | To                       | Subject                |
        | FogBugz | testusera@manuscript.com | Re: This is an Inquiry |
    And The user clicks the "Send" button
    Then The "View Active Case" page is shown
    And The following details are shown in the "View Active Case" page:
        | From    | To                       | Subject                | Replied by |
        | FogBugz | testusera@manuscript.com | Re: This is an Inquiry | FogBugz    |
    Examples:
      | Location  |
      | top       |
      | bottom    |

  Scenario Outline: Administrator user can reply to a bug case from search results in Search page
    Given The user is logged in as Administrator
    And The following users exist:
        | Full Name  | Email                    | Account Type  | Status |
        | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
        | Category |  Case | Title         |
        | Bug      |  17   | This is a bug |
    And The user searches for the "17" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Email" button present at the <Location> of the "View Active Case" page
    And The "Send Email" page is shown
    And The user enters the following details in the "Send Email" page:
        | From    | To                       |
        | FogBugz | testusera@manuscript.com |
    And The user clicks the "Send" button
    And The "View Active Case" page is shown
    And The user searches for the "to:testusera@manuscript.com" search string by using the search box
    And The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type  | Category  | Case | Title         | To         |
        | Case  | Bug       | 17   | This is a Bug | Test UserA |
    And The user hovers over the "Title" column of the "This is a Bug" case in the "Search" page
    And The "Action" dropdown is enabled in the "Search" page
    When The user clicks the "Action" dropdown in the "Search" page
    And The user selects the "Reply" option from the "Action" dropdown
    And The "Reply" page is shown
    And The user enters the following details in the "Reply" page:
        | From    | To                       | Subject           |
        | FogBugz | testusera@manuscript.com | Re: This is a Bug |
    And The user clicks the "Send" button
    Then The "View Active Case" page is shown
    And The following details are shown in the "View Active Case" page:
        | From    | To                       | Subject           | Replied by |
        | FogBugz | testusera@manuscript.com | Re: This is a Bug | FogBugz    |
    Examples:
      | Location  |
      | top       |
      | bottom    |

  Scenario Outline: Administrator user can reply to a Feature case from search results in Search page
    Given The user is logged in as Administrator
    And The following users exist:
        | Full Name  | Email                    | Account Type  | Status |
        | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
        | Category  |  Case | Title             |
        | Feature   |  17   | This is a Feature |
    And The user searches for the "17" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Email" button present at the <Location> of the "View Active Case" page
    And The "Send Email" page is shown
    And The user enters the following details in the "Send Email" page:
        | From    | To                       |
        | FogBugz | testusera@manuscript.com |
    And The user clicks the "Send" button
    And The "View Active Case" page is shown
    And The user searches for the "to:testusera@manuscript.com" search string by using the search box
    And The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Category  | Case | Title             | To         |
        | Case | Feature   | 17   | This is a Feature | Test UserA |
    And The user hovers over the "Title" column of the "This is a Bug" case in the "Search" page
    And The "Action" dropdown is enabled in the "Search" page
    When The user clicks the "Action" dropdown in the "Search" page
    And The user selects the "Reply" option from the "Action" dropdown
    And The "Reply" page is shown
    And The user enters the following details in the "Reply" page:
        | From    | To                       | Subject               |
        | FogBugz | testusera@manuscript.com | Re: This is a Feature |
    And The user clicks the "Send" button
    Then The "View Active Case" page is shown
    And The following details are shown in the "View Active Case" page:
        | From    | To                       | Subject               | Replied by |
        | FogBugz | testusera@manuscript.com | Re: This is a Feature | FogBugz    |
    Examples:
      | Location  |
      | top       |
      | bottom    |


  Scenario Outline: Administrator user can reply to a schedule item case from search results in Search page
    Given The user is logged in as Administrator
    And The following users exist:
        | Full Name  | Email                    | Account Type  | Status |
        | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
        | Category        |  Case | Title                   | Status |
        | schedule item   |  17   | This is a Schedule Item | Active |
    And The user searches for the "17" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Email" button present at the <Location> of the "View Active Case" page
    And The "Send Email" page is shown
    And The user enters the following details in the "Send Email" page:
        | From    | To                       |
        | FogBugz | testusera@manuscript.com |
    And The user clicks the "Send" button
    And The "View Active Case" page is shown
    And The user searches for the "to:testusera@manuscript.com" search string by using the search box
    And The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Category        | Case | Title                   | To         |
        | Case | Schedule Item   | 17   | This is a Schedule Item | Test UserA |
    And The user hovers over the "Title" column of the "This is a Schedule Item" case in the "Search" page
    And The "Action" dropdown is enabled in the "Search" page
    When The user clicks the "Action" dropdown in the "Search" page
    And The user selects the "Reply" option from the "Action" dropdown
    And The "Reply" page is shown
    And The user enters the following details in the "Reply" page:
        | From    | To                       | Subject                     |
        | FogBugz | testusera@manuscript.com | Re: This is a Schedule Item |
    And The user clicks the "Send" button
    Then The "View Active Case" page is shown
    And The following details are shown in the "View Active Case" page:
        | From    | To                       | Subject                     | Replied by |
        | FogBugz | testusera@manuscript.com | Re: This is a Schedule Item | FogBugz    |
    Examples:
      | Location  |
      | top       |
      | bottom    |
