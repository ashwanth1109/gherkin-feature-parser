@NotAutomated
@JIRA-Key-MANUSCRIPT-29846
@User
Feature: User - Edit - Legacy - Invalidate RSS Tokens

  Scenario: Invalidate RSS Tokens - Case - Active - View
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title   | Status |
      | 16 | Jokones | Active |
    And The user searches for the "16" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "RSS Feed" link in the "View Active Case" page
    And The "RSS Feed" window is opened
    And The user saves the "sSignature" URL parameter as "Old signature"
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    And The user enters the user options details in the "User Options" page:
      | Invalidate RSS Tokens |
      | true                  |
    And The user clicks the "OK" button in the "User Options" page
    And The user searches for the "16" search string by using the search box
    And The "View Active Case" page is shown
    When The user clicks the "RSS Feed" link in the "View Active Case" page
    And The "RSS Feed" window is opened
    Then The "sSignature" URL parameter is not equal to the "Old signature"

  Scenario: Invalidate RSS Tokens - Case - Active - Edit
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title   | Status |
      | 16 | Jokones | Active |
    And The user searches for the "16" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Edit" button in the "View Active Case" page
    And The user clicks the "RSS Feed" link in the "Edit Active Case" page
    And The "RSS Feed" window is opened
    And The user saves the "sSignature" URL parameter as "Old signature"
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    And The user enters the user options details in the "User Options" page:
      | Invalidate RSS Tokens |
      | true                  |
    And The user clicks the "OK" button in the "User Options" page
    And The user searches for the "16" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Edit" button in the "View Active Case" page
    When The user clicks the "RSS Feed" link in the "Edit Active Case" page
    And The "RSS Feed" window is opened
    Then The "sSignature" URL parameter is not equal to the "Old signature"

  Scenario: Invalidate RSS Tokens - Case - Resolve
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title   | Status |
      | 16 | Jokones | Active |
    And The user searches for the "16" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Resolve" button in the "View Active Case" page
    And The user clicks the "RSS Feed" link in the "Edit Resolved Case" page
    And The "RSS Feed" window is opened
    And The user saves the "sSignature" URL parameter as "Old signature"
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    And The user enters the user options details in the "User Options" page:
      | Invalidate RSS Tokens |
      | true                  |
    And The user clicks the "OK" button in the "User Options" page
    And The user searches for the "16" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Resolve" button in the "View Active Case" page
    When The user clicks the "RSS Feed" link in the "Edit Resolved Case" page
    And The "RSS Feed" window is opened
    Then The "sSignature" URL parameter is not equal to the "Old signature"

  Scenario: Invalidate RSS Tokens - Case - Resolved
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title   | Status   |
      | 16 | Jokones | Resolved |
    And The user searches for the "16" search string by using the search box
    And The "View Resolved Case" page is shown
    And The user clicks the "RSS Feed" link in the "View Resolved Case" page
    And The "RSS Feed" window is opened
    And The user saves the "sSignature" URL parameter as "Old signature"
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    And The user enters the user options details in the "User Options" page:
      | Invalidate RSS Tokens |
      | true                  |
    And The user clicks the "OK" button in the "User Options" page
    And The user searches for the "16" search string by using the search box
    And The "View Resolved Case" page is shown
    When The user clicks the "RSS Feed" link in the "View Resolved Case" page
    And The "RSS Feed" window is opened
    Then The "sSignature" URL parameter is not equal to the "Old signature"

  Scenario: Invalidate RSS Tokens - Case - Closed
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title   | Status |
      | 16 | Jokones | Closed |
    And The user searches for the "16" search string by using the search box
    And The "View Closed Case" page is shown
    And The user clicks the "RSS Feed" link in the "View Closed Case" page
    And The "RSS Feed" window is opened
    And The user saves the "sSignature" URL parameter as "Old signature"
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    And The user enters the user options details in the "User Options" page:
      | Invalidate RSS Tokens |
      | true                  |
    And The user clicks the "OK" button in the "User Options" page
    And The user searches for the "16" search string by using the search box
    And The "View Closed Case" page is shown
    When The user clicks the "RSS Feed" link in the "View Closed Case" page
    And The "RSS Feed" window is opened
    Then The "sSignature" URL parameter is not equal to the "Old signature"

  Scenario: Invalidate RSS Tokens - Wiki Article
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Title    |
      | Notebook |
    And The user hovers over the "Wiki" menu item in the sidebar
    And The user clicks the "Notebook" menu item in the sidebar menu
    And The user clicks the "RSS Feed" icon in the "Root Article" wiki article
    And The "RSS Feed" window is opened
    And The user saves the "sSignature" URL parameter as "Old signature"
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    And The user enters the user options details in the "User Options" page:
      | Invalidate RSS Tokens |
      | true                  |
    And The user clicks the "OK" button in the "User Options" page
    And The user hovers over the "Wiki" menu item in the sidebar
    And The user clicks the "Notebook" menu item in the sidebar menu
    When The user clicks the "RSS Feed" icon in the "Root Article" wiki article
    And The "RSS Feed" window is opened
    Then The "sSignature" URL parameter is not equal to the "Old signature"

  Scenario: Invalidate RSS Tokens - Wiki Article - Info
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Title    |
      | Notebook |
    And The user hovers over the "Wiki" menu item in the sidebar
    And The user clicks the "Notebook" menu item in the sidebar menu
    And The user clicks the "Info" link in the "Root Article" wiki article
    And The user clicks the "RSS Feed" link in the "Wiki Article Info" page
    And The "RSS Feed" window is opened
    And The user saves the "sSignature" URL parameter as "Old signature"
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    And The user enters the user options details in the "User Options" page:
      | Invalidate RSS Tokens |
      | true                  |
    And The user clicks the "OK" button in the "User Options" page
    And The user hovers over the "Wiki" menu item in the sidebar
    And The user clicks the "Notebook" menu item in the sidebar menu
    And The user clicks the "Info" link in the "Root Article" wiki article
    When The user clicks the "RSS Feed" link in the "Wiki Article Info" page
    And The "RSS Feed" window is opened
    Then The "sSignature" URL parameter is not equal to the "Old signature"

  Scenario: Invalidate RSS Tokens - Discussion Group
    Given The user is logged in as Administrator
    And The following discussion groups exist:
      | Title      |
      | Flat earth |
    And The following user groups exist:
      | Title |
      | Fakes |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Groups" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Fakes" user group in the "User Groups" page
    And The user clicks the "discussion groups" link in the "Edit User Group" page
    And The user clicks the "Flat earth" link for the "Flat earth" discussion group in the "Discussion Groups" page
    And The user clicks the "RSS Feed" link in the "Discussion Group" page
    And The "RSS Feed" window is opened
    And The user saves the "sSignature" URL parameter as "Old signature"
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    And The user enters the user options details in the "User Options" page:
      | Invalidate RSS Tokens |
      | true                  |
    And The user clicks the "OK" button in the "User Options" page
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Groups" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Fakes" user group in the "User Groups" page
    And The user clicks the "discussion groups" link in the "Edit User Group" page
    And The user clicks the "Flat earth" link for the "Flat earth" discussion group in the "Discussion Groups" page
    When The user clicks the "RSS Feed" link in the "Discussion Group" page
    And The "RSS Feed" window is opened
    Then The "sSignature" URL parameter is not equal to the "Old signature"

  Scenario: Invalidate RSS Tokens - Filter
    Given The user is logged in as Administrator
    And The user hovers over the "Filters" menu item in the sidebar
    And The user clicks the "Inbox" menu item in the sidebar menu
    And The user clicks the "More" link in the "Filter" page
    And The user clicks the "RSS Feed" link in the "More" popover in the "Filter" page
    And The "RSS Feed" window is opened
    And The user saves the "sSignature" URL parameter as "Old signature"
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    And The user enters the user options details in the "User Options" page:
      | Invalidate RSS Tokens |
      | true                  |
    And The user clicks the "OK" button in the "User Options" page
    And The user hovers over the "Filters" menu item in the sidebar
    And The user clicks the "Inbox" menu item in the sidebar menu
    And The user clicks the "More" link in the "Filter" page
    When The user clicks the "RSS Feed" link in the "More" popover in the "Filter" page
    And The "RSS Feed" window is opened
    Then The "sSignature" URL parameter is not equal to the "Old signature"

  Scenario: Invalidate RSS Tokens - Filter - Manage Filters
    Given The user is logged in as Administrator
    And The user hovers over the "Filters" menu item in the sidebar
    And The user clicks the "..." menu item in the sidebar menu
    And The user clicks the "RSS Feed" icon for the "Inbox" filter in the "Manage Filters" page
    And The "RSS Feed" window is opened
    And The user saves the "sSignature" URL parameter as "Old signature"
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    And The user enters the user options details in the "User Options" page:
      | Invalidate RSS Tokens |
      | true                  |
    And The user clicks the "OK" button in the "User Options" page
    And The user hovers over the "Filters" menu item in the sidebar
    And The user hovers over the "Filters" menu item in the sidebar
    And The user clicks the "..." menu item in the sidebar menu
    When The user clicks the "RSS Feed" icon for the "Inbox" filter in the "Manage Filters" page
    And The "RSS Feed" window is opened
    Then The "sSignature" URL parameter is not equal to the "Old signature"
