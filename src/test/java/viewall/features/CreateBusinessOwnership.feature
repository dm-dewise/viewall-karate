Feature: Risks Analysis - Create Business Ownership
    Background: Configuration
        Given url apiURL        


    ### Insert business ownership for riskScore computation
    Scenario: Create Business Ownership   
        Given path '/api/v1/business-ownerships'        
        And request
        """
            {
                "name": "BO Karate API Test",
                "vatNumber": "12345678",
                "companyValue": "#(estimated_value)",
                "estimatedValue": "#(estimated_value)",
                "ownershipPercentage": "#(ownership_pct)",
                "amountSaved": "#(parseInt(estimated_value) * parseInt(ownership_pct))"
            }
        """
        When method POST