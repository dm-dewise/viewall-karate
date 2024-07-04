Feature: Risks Analysis - Create Wealth and Savings
    Background: Configuration
        Given url apiURL


    ### Insert Wealth and Savings for riskScore computation
    Scenario: Create Wealth and Savings
        Given path '/api/v1/wealth-savings'        
        And request
        """
            { 
                "description": "#(description)", 
                "currentValue": "#(current_value)", 
                "ownershipPercentage": "#(ownership_pct)", 
                "amountSaved": 800, 
                "includePensionCalculation": "#(include_in_pension_calc)" 
            }
        """ 
        When method POST