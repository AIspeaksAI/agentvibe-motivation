#!/bin/bash

# Test Data Generation Script for AgentVibe Motivation Tool
# This script generates sample data in the scratch org for testing

echo "🎲 Generating test data for AgentVibe Motivation Tool..."

# Check if target org is specified
if [ -z "$1" ]; then
    echo "❌ Error: Please specify a target org alias"
    echo "Usage: ./generate-test-data.sh <org-alias>"
    echo "Example: ./generate-test-data.sh motivation-test-org"
    exit 1
fi

TARGET_ORG=$1

echo "📦 Target org: $TARGET_ORG"

# Execute the Apex script to generate test data
echo "📤 Generating sample data..."
sf apex run --file scripts/generate-test-data.apex --target-org $TARGET_ORG

echo "✅ Test data generation completed!"
echo ""
echo "🎯 Sample data created:"
echo "   • 5 Accounts (Acme Corporation, Global Solutions Inc, Innovation Labs, TechStart Ventures, Enterprise Dynamics)"
echo "   • 6 Opportunities (various stages from Prospecting to Closed Won/Lost)"
echo "   • 5 Contacts (key decision makers)"
echo "   • 3 Tasks (follow-ups and activities)"
echo "   • 3 Notes (meeting notes and discovery call summaries)"
echo "   • 2 Events (proposal presentations and demos)"
echo ""
echo "🚀 Next steps:"
echo "1. Open your Salesforce org: $TARGET_ORG"
echo "2. Navigate to the Opportunities tab"
echo "3. Open any opportunity record"
echo "4. Add the motivationButton component to the page"
echo "5. Test the motivation tool with real data!"
echo ""
echo "🎉 Your scratch org is now ready for comprehensive testing!" 