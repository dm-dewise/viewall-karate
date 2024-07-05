Feature: Get Risks Score Analysis
    ### Get bearer token from keycloak using the credential below
    ### User your email and pass to get access token
    Background: Create Data for Users    
        * def dataFile = read('../../data/test1.json')

        ### Looping for Business Ownerships        
        * def business_ownerships = dataFile.business_ownership
        * def resultBO =  call read('CreateBusinessOwnership.feature') business_ownerships

        ### Looping for Pensions
        ### * def pensions = dataFile.pensions
        ### * def resultPensions =  call read('create-pension.feature') pensions

        ### Looping for Investment
        * def investments = dataFile.investments
        * def resultInvestments =  call read('CreateInvestment.feature') investments

        ### Looping for Real Estate
        * def real_estates = dataFile.real_estate
        * def resultRE =  call read('CreateRealEstate.feature') real_estates

        ### Looping for Wealth Savings
        * def wealth_savings = dataFile.wealth_savings
        * def resultWS =  call read('CreateWealthSavings.feature') wealth_savings

        #   ### Updating profile account to change birthday, we will use it for pension computation
        #  Scenario: Update User Profile
        #    Given url 'https://api-pagsubok.viewall.dk/api/v1/profiles'
        #    And header Authorization = 'Bearer ' + token
        #    And request { "firstName": "Dennis", "lastName": "Migrino", "birthday": "2001-09-14", "address": "", "cityZipCode": "", "countryCode": "DK", "mobileNumber": "",  "email": "dbmigrino@gmail.com" }
        #    When method PUT
        #    Then status 200


    ### Getting the latest Risk Score for Matrix 1
    Scenario: Get My Latest Risk Score
        Given url apiURL
        Given path 'api/v1/risks/score'            
        When method GET
        * def score = response.riskScore
        Then print score