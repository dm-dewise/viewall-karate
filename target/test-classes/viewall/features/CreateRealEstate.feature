Feature: Risks Analysis - Create Real Estate
    Background: Configuration
        Given url apiURL


    ### Insert Property for riskScore computation
    Scenario: Create Real Estate
        Given path '/api/v1/properties'        
        And request 
        """
            { 
                "typeId": "#(property_type_id)", 
                "addressStreet": "RE Karate API Test", 
                "cityZipCode": "2000", 
                "countryCode": "DK", 
                "valueEstimated": "#(value_estimated)", 
                "ownershipPercent": "#(ownership_pct)", 
                "mortgages": [], 
                "loans": [] 
            }
        """ 
        When method POST
