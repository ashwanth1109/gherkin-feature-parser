@JIRA-Key-MANUSCRIPT-28903
@WikiTemplate
Feature: Wiki template - Create

  Scenario: Administrator can create a Wiki template: "Save" button
    Given The user is logged in as Administrator
    And The user navigates to the "List Templates" page
    And The user clicks the "New Template" link in the "List Templates" page
    And The "New Template" page is shown
    When The user enters the wiki template details in the "New Template" page:
      | Template            | HTML                       | CSS                                | Change           |
      | Cases Wiki template | <div id="container"></div> | span.Arial { font-family: Arial; } | Initial version. |
    And The user clicks the "Save" button in the "New Template" page
    Then The user is redirected to the "Edit Template" page with the created wiki template
    And The user navigates to the "List Templates" page
    # NOTE: Check all the visible property values of the created wiki template as a part of the below step definition!
    And The created wiki template is listed in the "List Templates" page

  Scenario: Administrator can create a Wiki template: "Save and Close" button
    Given The user is logged in as Administrator
    And The user navigates to the "List Templates" page
    And The user clicks the "New Template" link in the "List Templates" page
    And The "New Template" page is shown
    When The user enters the wiki template details in the "New Template" page:
      | Template            | HTML                       | CSS                                Change           |
      | Cases Wiki template | <div id="container"></div> | span.Arial { font-family: Arial; } Initial version. |
    And The user clicks the "Save and Close" button the "New Template" page
    Then The user is redirected to the "List Templates" page
    # NOTE: Check all the visible property values of the created wiki template as a part of the below step definition!
    And The created wiki template is listed in the "List Templates" page
