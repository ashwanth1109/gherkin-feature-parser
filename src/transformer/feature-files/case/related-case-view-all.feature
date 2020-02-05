@NotAutomated
@JIRA-Key-MANUSCRIPT-30060
@Case
Feature: Case - Related case - View all

  # NOTE: The original implementation uses the following regular expressions:
  # \b(Bug[zs](?: |\t|&nbsp;|\r|\n|<br[^>]*>|\xA0)*ID(?: |\t|&nbsp;|\r|\n|<br[^>]*>)*:(?: |\t|&nbsp;|\r|\n|<br[^>]*>)*)(\d+)\b
  # \b(Bug(?: |\t|#|&nbsp;|\r|\n|<br[^>]*>|\xA0)*)(\d+)\b
  # \b(Case(?: |\t|#|&nbsp;|\r|\n|<br[^>]*>|\xA0)*)(\d+)\b
  # \b(" + FB_CASE + "(?: |\t|#|&nbsp;|\r|\n|<br[^>]*>|\xA0)*)(\d+)\b
  #
  # `FB_CASE` represents the `Case` word in the user's language (user settings).

  # NOTE: Discussed with and confirmed by Gennadii Nikolaev to use only the following regular expressions:
  # \b(Bug(?: |\t|#|&nbsp;|\r|\n|<br[^>]*>|\xA0)*)(\d+)\b
  # \b(Case(?: |\t|#|&nbsp;|\r|\n|<br[^>]*>|\xA0)*)(\d+)\b
  # \b(" + FB_CASE + "(?: |\t|#|&nbsp;|\r|\n|<br[^>]*>|\xA0)*)(\d+)\b
  #
  # `FB_CASE` represents the `Case` word in the user's language (user settings).
  #
  # In addition, all of the recognized references must be represented as hyperlinks!

  Background:
    Given The user is logged in as Normal User
    And The following user options exist:
      | Language        |
      | Spanish (Spain) |

  Scenario Outline: User can view all related cases ("See also" field): No related cases: "See also" field is not shown
    Given The following cases exist:
      | ID | Title      | Description   |
      | 17 | First case | <Description> |
    When The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The "See also" field is not shown in the "View Active Case" page
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type        | Content       |
      | Assigned To |               |
      | Opened By   | <Description> |
    Examples:
      | Description    |
      | The first one! |

  Scenario: User can view all related cases ("See also" field): Many related cases: Many comments
    Given The following cases exist:
      | ID | Title       | Description                                                                                 |
      | 17 | First case  | The first one!                                                                              |
      | 18 | Second case | The second one!                                                                             |
      | 19 | Third case  | The third one!                                                                              |
      | 20 | Fourth case | The Caso       #####   19   .\nThe Bug        #####   17   .\nThe Case       #####   18   . |
    And The user searches for the "20" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    When The user enters the case details in the "Edit Active Case" page:
      | Description                                                                              |
      | The Caso       #####   9   .\nThe Bug        #####   7   .\nThe Case       #####   8   . |
    And The user clicks the "Save" button in the "Edit Active Case" page
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    And The user enters the case details in the "Edit Active Case" page:
      | Description                                                                              |
      | The Caso       #####   3   .\nThe Bug        #####   1   .\nThe Case       #####   2   . |
    And The user clicks the "Save" button in the "Edit Active Case" page
    Then The user is redirected to the "View Active Case" page
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type        | Content                                                                                  |
      | Edited By   | The Caso       #####   3   .\nThe Bug        #####   1   .\nThe Case       #####   2   . |
      | Edited By   | The Caso       #####   9   .\nThe Bug        #####   7   .\nThe Case       #####   8   . |
      | Assigned To |                                                                                          |
      | Opened By   |                                                                                          |
    And The following case details are shown in the "View Active Case" page:
      | See also                          |
      | Case 1, 2, 3, 7, 8, 9, 17, 18, 19 |
    And The following case links are listed in the "See also" field in the "View Active Case" page in the following order:
      | Link Text | Destination Case ID |
      | Case 1    | 1                   |
      | 2         | 2                   |
      | 3         | 3                   |
      | 7         | 7                   |
      | 8         | 8                   |
      | 9         | 9                   |
      | 17        | 17                  |
      | 18        | 18                  |
      | 19        | 19                  |
