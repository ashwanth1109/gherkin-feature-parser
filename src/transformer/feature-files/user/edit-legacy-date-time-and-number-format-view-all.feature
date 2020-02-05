@NotAutomated
@JIRA-Key-MANUSCRIPT-30225
@User
Feature: User - Edit - Legacy - Date, Time, and Number Format - View All

  Scenario: User - Edit - Legacy - Date, Time, and Number Format - Available options
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    When The user clicks the "Legacy Settings" link in the "User Options" page
    And The user clicks the "Date, Time, and Number Format" dropdown in the "User Options" page
    Then The following time zones are listed in the "Date, Time, and Number Format" dropdown in the "User Options" page in the following order:
      | Use Browser Format                                 |
      | Afrikaans (South Africa)                           |
      | Albanian (Albania)                                 |
      | Arabic (Algeria)                                   |
      | Arabic (Bahrain)                                   |
      | Arabic (Egypt)                                     |
      | Arabic (Iraq)                                      |
      | Arabic (Jordan)                                    |
      | Arabic (Kuwait)                                    |
      | Arabic (Lebanon)                                   |
      | Arabic (Libya)                                     |
      | Arabic (Morocco)                                   |
      | Arabic (Oman)                                      |
      | Arabic (Qatar)                                     |
      | Arabic (Saudi Arabia)                              |
      | Arabic (Syria)                                     |
      | Arabic (Tunisia)                                   |
      | Arabic (U.A.E.)                                    |
      | Arabic (Yemen)                                     |
      | Armenian (Armenia)                                 |
      | Azeri (Cyrillic, Azerbaijan)                       |
      | Azeri (Latin, Azerbaijan)                          |
      | Basque (Basque)                                    |
      | Belarusian (Belarus)                               |
      | Bosnian (Latin, Bosnia and Herzegovina)            |
      | Bulgarian (Bulgaria)                               |
      | Catalan (Catalan)                                  |
      | Chinese (Hong Kong S.A.R.)                         |
      | Chinese (Macao S.A.R.)                             |
      | Chinese (People"s Republic of China)               |
      | Chinese (Singapore)                                |
      | Chinese (Taiwan)                                   |
      | Chinese (Traditional)                              |
      | Croatian (Bosnia and Herzegovina)                  |
      | Croatian (Croatia)                                 |
      | Czech (Czech Republic)                             |
      | Danish (Denmark)                                   |
      | Divehi (Maldives)                                  |
      | Dutch (Belgium)                                    |
      | Dutch (Netherlands)                                |
      | English (Australia)                                |
      | English (Belize)                                   |
      | English (Canada)                                   |
      | English (Caribbean)                                |
      | English (Ireland)                                  |
      | English (Jamaica)                                  |
      | English (New Zealand)                              |
      | English (Republic of the Philippines)              |
      | English (South Africa)                             |
      | English (Trinidad and Tobago)                      |
      | English (United Kingdom)                           |
      | English (United States)                            |
      | English (Zimbabwe)                                 |
      | Estonian (Estonia)                                 |
      | Faroese (Faroe Islands)                            |
      | Finnish (Finland)                                  |
      | French (Belgium)                                   |
      | French (Canada)                                    |
      | French (France)                                    |
      | French (Luxembourg)                                |
      | French (Principality of Monaco)                    |
      | French (Switzerland)                               |
      | Galician (Galician)                                |
      | Georgian (Georgia)                                 |
      | German (Austria)                                   |
      | German (Germany)                                   |
      | German (Liechtenstein)                             |
      | German (Luxembourg)                                |
      | German (Switzerland)                               |
      | Greek (Greece)                                     |
      | Gujarati (India)                                   |
      | Hebrew (Israel)                                    |
      | Hindi (India)                                      |
      | Hungarian (Hungary)                                |
      | Icelandic (Iceland)                                |
      | Indonesian (Indonesia)                             |
      | Italian (Italy)                                    |
      | Italian (Switzerland)                              |
      | Japanese (Japan)                                   |
      | Kannada (India)                                    |
      | Kazakh (Kazakhstan)                                |
      | Kiswahili (Kenya)                                  |
      | Konkani (India)                                    |
      | Korean (Korea)                                     |
      | Kyrgyz (Kyrgyzstan)                                |
      | Latvian (Latvia)                                   |
      | Lithuanian (Lithuania)                             |
      | Macedonian (Former Yugoslav Republic of Macedonia) |
      | Malay (Brunei Darussalam)                          |
      | Malay (Malaysia)                                   |
      | Maltese                                            |
      | Maori                                              |
      | Marathi (India)                                    |
      | Mongolian (Cyrillic, Mongolia)                     |
      | Northern Sotho                                     |
      | Norwegian, Bokmal (Norway)                         |
      | Norwegian, Nynorsk (Norway)                        |
      | Persian (Iran)                                     |
      | Polish (Poland)                                    |
      | Portuguese (Brazil)                                |
      | Portuguese (Portugal)                              |
      | Punjabi (India)                                    |
      | Quechua (Bolivia)                                  |
      | Quechua (Ecuador)                                  |
      | Quechua (Peru)                                     |
      | Romanian (Romania)                                 |
      | Russian (Russia)                                   |
      | Sami, Inari (Finland)                              |
      | Sami, Lule (Norway)                                |
      | Sami, Lule (Sweden)                                |
      | Sami, Northern (Finland)                           |
      | Sami, Northern (Norway)                            |
      | Sami, Northern (Sweden)                            |
      | Sami, Skolt (Finland)                              |
      | Sami, Southern (Norway)                            |
      | Sami, Southern (Sweden)                            |
      | Sanskrit (India)                                   |
      | Serbian                                            |
      | Serbian (Cyrillic, Bosnia and Herzegovina)         |
      | Serbian (Cyrillic, Serbia and Montenegro)          |
      | Serbian (Latin, Bosnia and Herzegovina)            |
      | Serbian (Latin, Serbia and Montenegro)             |
      | Slovak (Slovakia)                                  |
      | Slovenian (Slovenia)                               |
      | Spanish (Argentina)                                |
      | Spanish (Bolivia)                                  |
      | Spanish (Chile)                                    |
      | Spanish (Colombia)                                 |
      | Spanish (Costa Rica)                               |
      | Spanish (Dominican Republic)                       |
      | Spanish (Ecuador)                                  |
      | Spanish (El Salvador)                              |
      | Spanish (Guatemala)                                |
      | Spanish (Honduras)                                 |
      | Spanish (Mexico)                                   |
      | Spanish (Nicaragua)                                |
      | Spanish (Panama)                                   |
      | Spanish (Paraguay)                                 |
      | Spanish (Peru)                                     |
      | Spanish (Puerto Rico)                              |
      | Spanish (Spain)                                    |
      | Spanish (Uruguay)                                  |
      | Spanish (Venezuela)                                |
      | Swedish (Finland)                                  |
      | Swedish (Sweden)                                   |
      | Syriac (Syria)                                     |
      | Tamil (India)                                      |
      | Tatar (Russia)                                     |
      | Telugu (India)                                     |
      | Thai (Thailand)                                    |
      | Tswana                                             |
      | Turkish (Turkey)                                   |
      | Ukrainian (Ukraine)                                |
      | Urdu (Islamic Republic of Pakistan)                |
      | Uzbek (Cyrillic, Uzbekistan)                       |
      | Uzbek (Latin, Uzbekistan)                          |
      | Vietnamese (Vietnam)                               |
      | Welsh                                              |
      | Xhosa                                              |
      | Zulu                                               |
