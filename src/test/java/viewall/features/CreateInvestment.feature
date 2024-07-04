Feature: Risks Analysis - Create Investment
    Background: Configuration
        Given url apiURL

    ### Insert investment for riskScore computation
    Scenario: Create Investment
        Given path '/api/v1/investments'     
        And request
        """
            { 
                "categoryId": "#(parseInt(categoryId))", 
                "depotId": 10, 
                "description": "#(description)", 
                "quantity": 1, 
                "purchasePriceAvg": 1, 
                "currentPrice": "#(parseInt(currentValue))", 
                "currencyCode": "#(currencyCode)", 
                "investedPrivately": 1 
            }
        """        
        When method POST
        Then status 200