Feature: Risks Analysis - Create Investment
    Background: Configuration
        Given url apiURL

    ### Insert investment for riskScore computation
    Scenario: Create Investment
        Given path '/api/v1/investments'     
        And request
        """
            { 
                "categoryId": "#(categoryId)", 
                "depotId": 10, 
                "description": "#(description)", 
                "quantity": 1, 
                "purchasePriceAvg": 1, 
                "currentPrice": "#(currentValue)", 
                "currencyCode": "DKK", 
                "investedPrivately": 1,
                "insref": 6706046,
                "notes": "Karate API Test"
            }
        """        
        When method POST