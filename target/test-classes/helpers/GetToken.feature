Feature: Get Token

    Scenario: Getting user token
        * configure ssl = true
        Given url keycloakURL      
        And form field grant_type = "password"
        And form field client_id = "ViewAll.WebApp"
        And form field username = "dbmigrino@gmail.com"
        And form field scope = "email profile openid"
        And form field password = "Gr33nT34!234"
        When method POST
        Then status 200
        * def authToken = response.access_token