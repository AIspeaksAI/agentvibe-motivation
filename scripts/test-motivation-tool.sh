#!/bin/bash

# Test script for AgentVibe Motivation Tool
# This script validates that all components are properly deployed

echo "🧪 Testing AgentVibe Motivation Tool..."

# Check if target org is specified
if [ -z "$1" ]; then
    echo "❌ Error: Please specify a target org alias"
    echo "Usage: ./test-motivation-tool.sh <org-alias>"
    echo "Example: ./test-motivation-tool.sh my-sandbox"
    exit 1
fi

TARGET_ORG=$1

echo "📦 Target org: $TARGET_ORG"

# Test Apex classes
echo "🔍 Testing Apex classes..."
sfdx force:apex:test:run -n MotivationControllerTest -u $TARGET_ORG --verbose

# Check component deployment
echo "🔍 Checking component deployment..."
sfdx force:source:retrieve -m ApexClass:MotivationController -u $TARGET_ORG
sfdx force:source:retrieve -m LightningComponentBundle:motivationButton -u $TARGET_ORG

echo "✅ Testing completed!"
echo ""
echo "🎯 If all tests pass, your motivation tool is ready to use!"
echo "📖 Check the README.md for next steps on adding the component to Opportunity pages." 