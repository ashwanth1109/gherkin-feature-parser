@NotAutomated
@JIRA-Key-MANUSCRIPT-29029
@Admin
Feature: Admin - Create root user

  Scenario: User can create a root user by calling the "createRootUser" function of the "create-root-user" module
    Given The "config.json" file contains the following configuration:
      | Access Key ID        | Secret Access Key                        | User Pool ID        | User Pool Client ID        | Environment | Region    |
      | AKIAWSUYLYTN6OIOXCYB | jCoMiAWRK/1+Rxb7KYLiBSZxa1hdk1wGScJerVL2 | eu-west-2_7wVPLMpuS | 11vct18kiln1frqeo8jolvn6oj | stagingtwo  | eu-west-2 |
    And The "customer-data.json" file contains the following customer data:
      | Customer  | Full Name           | Email                 | Password |
      | customer1 | Admin for Customer1 | admin@customerone.com | test1234 |
    When The "createRootUser" function of the "create-root-user" module is called with the configuration and the customer data
    Then The call of the "createRootUser" function of the "create-root-user" module is successful
    And The user navigates to the "Index" page
    And The user clicks the "Log In" menu item in the sidebar menu
    And The "Login" page is shown
    And The user enters the credentials in the "Login" page:
      | Email   | Password   |
      | <Email> | <Password> |
    And The user clicks the "Log In" button in the "Login" page
    And The full name of the user is shown as "Admin for Customer1" in the sidebar
