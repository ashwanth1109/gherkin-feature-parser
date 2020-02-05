@NotAutomated
@JIRA-Key-MANUSCRIPT-30412
@Case
Feature: Case - Related case - Add and Remove - Edit comment

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

  Scenario Outline: User can remove all related cases ("See also" field) by editing an existing comment to remove all the related case comments (mentions): Many related cases: One comment
    Given The following cases exist:
      | ID | Title       | Description                                                                              |
      | 17 | First case  | The first one!                                                                           |
      | 18 | Second case | The second one!                                                                          |
      | 19 | Third case  | The third one!                                                                           |
      | 20 | Fourth case | The Caso       #####   3   .\nThe Bug        #####   2   .\nThe Case       #####   1   . |
    And The user searches for the "20" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button for the "Opened By" event in the "View Active Case" page
    And The "Editing Event" form is shown for the "Opened By" event in the "View Active Case" page
    When The user enters the event details in the "Editing Event" form for the "Opened By" event in the "View Active Case" page:
      | Content       |
      | <Description> |
    And The user clicks the "Save" button in the "Editing Event" form for the "Opened By" event in the "View Active Case" page
    Then The following case events are listed in the "View Active Case" page in the following order:
      | Type        | Content       |
      | Edited By   |               |
      | Assigned To |               |
      | Opened By   | <Description> |
    And The "See also" field is not shown in the "View Active Case" page
    And The following description links are listed for the "Opened by" case event in the "View Active Case" page in the following order:
      | Link Text | Destination Case ID |
    Examples:
      | Description |
      | Cleaned up! |

  Scenario Outline: User can add and remove related cases ("See also" field) by editing an existing comment with specific description: Many related cases: One comment
    Given The following cases exist:
      | ID | Title       | Description                                                                              |
      | 17 | First case  | The first one!                                                                           |
      | 18 | Second case | The second one!                                                                          |
      | 19 | Third case  | The third one!                                                                           |
      | 20 | Fourth case | The Caso       #####   3   .\nThe Bug        #####   2   .\nThe Case       #####   1   . |
    And The user searches for the "20" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button for the "Opened By" event in the "View Active Case" page
    And The "Editing Event" form is shown for the "Opened By" event in the "View Active Case" page
    When The user enters the event details in the "Editing Event" form for the "Opened By" event in the "View Active Case" page:
      | Content       |
      | <Description> |
    And The user clicks the "Save" button in the "Editing Event" form for the "Opened By" event in the "View Active Case" page
    Then The following case events are listed in the "View Active Case" page in the following order:
      | Type        | Content       |
      | Edited By   |               |
      | Assigned To |               |
      | Opened By   | <Description> |
    And The following case details are shown in the "View Active Case" page:
      | See also        |
      | Case 17, 18, 19 |
    And The following case links are listed in the "See also" field in the "View Active Case" page in the following order:
      | Link Text | Destination Case ID |
      | Case 17   | 17                  |
      | 18        | 18                  |
      | 19        | 19                  |
    And The following description links are listed for the "Opened by" case event in the "View Active Case" page in the following order:
      | Link Text                 | Destination Case ID |
      | Caso       #####   19     | 19                  |
      | Bug        #####   17     | 17                  |
      | The Case       #####   18 | 18                  |
    Examples:
      | Description                                                                                 |
      | The Caso       #####   19   .\nThe Bug        #####   17   .\nThe Case       #####   18   . |

  Scenario Outline: User can add and remove related cases ("See also" field) by editing an existing comment with specific description: Many related cases: Two comments
    Given The following cases exist:
      | ID | Title       | Description                                                                              |
      | 17 | First case  | The first one!                                                                           |
      | 18 | Second case | The second one!                                                                          |
      | 19 | Third case  | The third one!                                                                           |
      | 20 | Fourth case | The Caso       #####   3   .\nThe Bug        #####   2   .\nThe Case       #####   1   . |
    And The user searches for the "20" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    And The user enters the case details in the "Edit Active Case" page:
      | Description                                                                                                                                                                        |
      | The Caso       #####   3   .\nThe Bug        #####   2   .\nThe Case       #####   1   .\nThe Caso       #####   6   .\nThe Bug        #####   5   .\nThe Case       #####   4   . |
    And The user clicks the "Save" button in the "Edit Active Case" page
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button for the "Edited By" event in the "View Active Case" page
    And The "Editing Event" form is shown for the "Edited By" event in the "View Active Case" page
    When The user enters the event details in the "Editing Event" form for the "Edited By" event in the "View Active Case" page:
      | Content       |
      | <Description> |
    And The user clicks the "Save" button in the "Editing Event" form for the "Edited By" event in the "View Active Case" page
    Then The following case events are listed in the "View Active Case" page in the following order:
      | Type        | Content       |
      | Edited By   |               |
      | Edited By   | <Description> |
      | Assigned To |               |
      | Opened By   |               |
    And The following case details are shown in the "View Active Case" page:
      | See also                          |
      | Case 1, 2, 3, 7, 8, 9, 17, 18, 19 |
    And The following case links are listed in the "See also" field in the "View Active Case" page in the following order:
      | Link Text | Destination Case ID |
      | Case 1    | 1                   |
      | 2         | 2                   |
      | 3         | 3                   |
      | 7         | 17                  |
      | 8         | 18                  |
      | 9         | 19                  |
      | 17        | 17                  |
      | 18        | 18                  |
      | 19        | 19                  |
    And The following description links are listed for the "Edited by" case event in the "View Active Case" page in the following order:
      | Link Text                 | Destination Case ID |
      | Caso       #####   9      | 9                   |
      | Bug        #####   8      | 8                   |
      | The Case       #####   7  | 7                   |
      | Caso       #####   19     | 19                  |
      | Bug        #####   17     | 17                  |
      | The Case       #####   18 | 18                  |
    Examples:
      | Description                                                                                                                                                                           |
      | The Caso       #####   9   .\nThe Bug        #####   8   .\nThe Case       #####   7   .\nThe Caso       #####   19   .\nThe Bug        #####   17   .\nThe Case       #####   18   . |
