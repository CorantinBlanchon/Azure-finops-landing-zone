targetScope = 'subscription'

@description('Name of the Azure budget')
param budgetName string = 'finops-monthly-budget'

@description('Monthly budget amount in EUR')
param amount int = 100

@description('Budget start date (YYYY-MM-DD)')
param startDate string = '2026-01-01'

@description('Budget end date (YYYY-MM-DD)')
param endDate string = '2026-12-31'

@description('Optional notification emails')
param contactEmails array = []


resource budget 'Microsoft.Consumption/budgets@2023-05-01' = {
  name: budgetName
  properties: {
    category: 'Cost'
    amount: amount
    timeGrain: 'Monthly'
    timePeriod: {
      startDate: startDate
      endDate: endDate
    }
    notifications: {
      actual_50: {
        enabled: true
        operator: 'GreaterThan'
        threshold: 50
        contactRoles: ['Owner']
        contactEmails : contactEmails
      }
      actual_80: {
        enabled: true
        operator: 'GreaterThan'
        threshold: 80
        contactRoles: ['Owner']
        contactEmails : contactEmails
      }
    }
  }
}
