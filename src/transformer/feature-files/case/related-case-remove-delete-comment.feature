@NotAutomated
@JIRA-Key-MANUSCRIPT-30059
@Case
Feature: Case - Related case - Remove - Delete comment

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

  Scenario Outline: User can remove a related case ("See also" field) by deleting all the related case comments (mentions): One related case
    Given The following cases exist:
      | ID | Title       | Description    |
      | 17 | First case  | The first one! |
      | 18 | Second case | <Description>  |
    And The user searches for the "18" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the "View Active Case" page
    When The user clicks the "Delete" button for the "Opened By" event in the "Edit Active Case" page
    And The "Delete Case Event" confirmation dialog is opened
    And The user clicks the "Permanently Delete" button in the "Delete Case Event" confirmation dialog
    Then The "See also" field is not shown in the "Edit Active Case" page
    And The user clicks the "Save" button in the "Edit Active Case" page
    And The user is redirected to the "View Active Case" page
    And The "See also" field is not shown in the "View Active Case" page
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type        |
      | Edited By   |
      | Assigned To |
      | Removed By  |
    Examples:
      | Description                   |
      | Bug 17                        |
      | Case 17                       |
      | Caso 17                       |
      | Bug #17                       |
      | Case #17                      |
      | Caso #17                      |
      | The Bug        #####   17   . |
      | The Case       #####   17   . |
      | The Caso       #####   17   . |

  Scenario Outline: User cannot remove a related case ("See also" field) by deleting not all the related case comments (mentions): One related case
    Given The following cases exist:
      | ID | Title       | Description    |
      | 17 | First case  | The first one! |
      | 18 | Second case | <Description>  |
    And The user searches for the "18" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    And The user enters the case details in the "Edit Active Case" page:
      | Description   |
      | <Description> |
    And The user clicks the "Save" button in the "Edit Active Case" page
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the "View Active Case" page
    When The user clicks the "Delete" button for the "Opened By" event in the "Edit Active Case" page
    And The "Delete Case Event" confirmation dialog is opened
    And The user clicks the "Permanently Delete" button in the "Delete Case Event" confirmation dialog
    Then The following case links are listed in the "See also" field in the "Edit Active Case" page in the following order:
      | Link Text            | Destination Case ID   |
      | <See Also Link Text> | <Destination Case ID> |
    And The user clicks the "Save" button in the "Edit Active Case" page
    And The user is redirected to the "View Active Case" page
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type        | Content       |
      | Edited By   | <Description> |
      | Assigned To |               |
      | Removed By  |               |
    And The following case details are shown in the "View Active Case" page:
      | See also             |
      | <See Also Link Text> |
    And The following case links are listed in the "See also" field in the "View Active Case" page in the following order:
      | Link Text            | Destination Case ID   |
      | <See Also Link Text> | <Destination Case ID> |
    And The following description links are listed for the "Edited by" case event in the "View Active Case" page in the following order:
      | Link Text               | Destination Case ID   |
      | <Description Link Text> | <Destination Case ID> |
    Examples:
      | Description                   | Destination Case ID | Description Link Text | See Also Link Text |
      | Bug 17                        | 17                  | Bug 17                | Case 17            |
      | Case 17                       | 17                  | Case 17               | Case 17            |
      | Caso 17                       | 17                  | Caso 17               | Case 17            |
      | Bug #17                       | 17                  | Bug #17               | Case 17            |
      | Case #17                      | 17                  | Case #17              | Case 17            |
      | Caso #17                      | 17                  | Caso #17              | Case 17            |
      | The Bug        #####   17   . | 17                  | Bug        #####   17 | Case 17            |
      | The Case       #####   17   . | 17                  | Case       #####   17 | Case 17            |
      | The Caso       #####   17   . | 17                  | Caso       #####   17 | Case 17            |

  Scenario Outline: User can remove a related case ("See also" field) by deleting all the related case comments (mentions): Many related cases
    Given The following cases exist:
      | ID | Title       | Description     |
      | 17 | First case  | The first one!  |
      | 18 | Second case | The second one! |
      | 19 | Third case  | The third one!  |
      | 20 | Fourth case | <Description>   |
    And The user searches for the "20" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    When The user clicks the "Delete" button for the "Opened By" event in the "Edit Active Case" page
    And The "Delete Case Event" confirmation dialog is opened
    And The user clicks the "Permanently Delete" button in the "Delete Case Event" confirmation dialog
    Then The "See also" field is not shown in the "Edit Active Case" page
    And The user clicks the "Save" button in the "Edit Active Case" page
    And The user is redirected to the "View Active Case" page
    And The "See also" field is not shown in the "View Active Case" page
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type        |
      | Edited By   |
      | Assigned To |
      | Removed By  |
    Examples:
      | Description                                                                                 |
      | The Caso       #####   19   .\nThe Bug        #####   17   .\nThe Case       #####   18   . |

  Scenario Outline: User cannot remove a related case ("See also" field) by deleting not all the related case comments (mentions): Many related cases
    Given The following cases exist:
      | ID | Title       | Description     |
      | 17 | First case  | The first one!  |
      | 18 | Second case | The second one! |
      | 19 | Third case  | The third one!  |
      | 20 | Fourth case | <Description>   |
    And The user searches for the "20" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    And The user enters the case details in the "Edit Active Case" page:
      | Description   |
      | <Description> |
    And The user clicks the "Save" button in the "Edit Active Case" page
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    When The user clicks the "Delete" button for the "Opened By" event in the "Edit Active Case" page
    And The "Delete Case Event" confirmation dialog is opened
    And The user clicks the "Permanently Delete" button in the "Delete Case Event" confirmation dialog
    Then The following case links are listed in the "See also" field in the "Edit Active Case" page in the following order:
      | Link Text | Destination Case ID |
      | Case 17   | 17                  |
      | 18        | 18                  |
      | 19        | 19                  |
    And The user clicks the "Save" button in the "Edit Active Case" page
    And The user is redirected to the "View Active Case" page
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type        | Content       |
      | Edited By   | <Description> |
      | Assigned To |               |
      | Opened By   |               |
    And The following case details are shown in the "View Active Case" page:
      | See also        |
      | Case 17, 18, 19 |
    And The following case links are listed in the "See also" field in the "View Active Case" page in the following order:
      | Link Text | Destination Case ID |
      | Case 17   | 17                  |
      | 18        | 18                  |
      | 19        | 19                  |
    And The following description links are listed for the "Edited by" case event in the "View Active Case" page in the following order:
      | Link Text                 | Destination Case ID |
      | Caso       #####   19     | 19                  |
      | Bug        #####   17     | 17                  |
      | The Case       #####   18 | 18                  |
    Examples:
      | Description                                                                                 |
      | The Caso       #####   19   .\nThe Bug        #####   17   .\nThe Case       #####   18   . |
