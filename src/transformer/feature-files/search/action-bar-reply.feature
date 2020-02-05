@NotAutomated
@JIRA-Key-MANUSCRIPT-30887
@Search
Feature: Search - Case - Action Bar - Reply

  Scenario Outline: Administrator user can reply to an inquiry case from action bar in search page
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
    And The user checks the "Selection" checkbox present in the "This is an Inquiry" row in the "Search" page
    When The user clicks the "Reply" button in the "Search" page
    And The "Edit Active Case" page is shown
    And The user enters the following details in the "Edit Active Case" page:
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

  Scenario Outline: Administrator user can reply to a bug case from action bar in search page
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
    And The user checks the "Selection" checkbox present in the "This is an Bug" row in the "Search" page
    When The user clicks the "Reply" button in the "Search" page
    And The "Edit Active Case" page is shown
    And The user enters the following details in the "Edit Active Case" page:
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

  Scenario Outline: Administrator user can reply to a Feature case from action bar in search page
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
    And The user checks the "Selection" checkbox present in the "This is an Feature" row in the "Search" page
    When The user clicks the "Reply" button in the "Search" page
    And The "Edit Active Case" page is shown
    And The user enters the following details in the "Edit Active Case" page:
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


  Scenario Outline: Administrator user can reply to a schedule item case from action bar in search page
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
    And The user checks the "Selection" checkbox present in the "This is an Schedule Item" row in the "Search" page
    When The user clicks the "Reply" button in the "Search" page
    And The "Edit Active Case" page is shown
    And The user enters the following details in the "Edit Active Case" page:
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
