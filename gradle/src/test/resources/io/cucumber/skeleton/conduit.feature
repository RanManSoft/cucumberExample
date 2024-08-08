Feature: Login Conduit

  @login
  Scenario: Successful open login page
    Given open the home page
    When click Sign in
    Then open the login page successful

  Scenario: Failed login Conduit
    Given open the login page
    When login with username "testuser1" and password "123456"
    Then login failed

  Scenario: login Conduit with data table
    Given open the login page
    When login with users:
      | testuser1 | password1 |
      | testuser2 | password2 |
    Then login successful

  Scenario Outline: login Conduit with outline
    Given open the login page
    When login with users "<UserName>" and "<PassWord>"
    Then login <LoginResult>

    Examples:
      | UserName  | PassWord  | LoginResult |
      | testuser1 | 123456    | failed      |
      | testuser1 | password1 | successful  |