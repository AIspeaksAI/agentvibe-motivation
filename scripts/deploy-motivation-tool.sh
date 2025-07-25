#!/bin/bash

# Deployment script for AgentVibe Motivation Tool
# This script deploys the motivation tool components to a Salesforce org

echo "🚀 Deploying AgentVibe Motivation Tool..."

# Check if target org is specified
if [ -z "$1" ]; then
    echo "❌ Error: Please specify a target org alias"
    echo "Usage: ./deploy-motivation-tool.sh <org-alias>"
    echo "Example: ./deploy-motivation-tool.sh my-sandbox"
    exit 1
fi

TARGET_ORG=$1

echo "📦 Target org: $TARGET_ORG"

# Deploy the components
echo "📤 Deploying Apex classes..."
sf project deploy start --source-dir force-app/main/default/classes --target-org $TARGET_ORG

echo "📤 Deploying Static Resources..."
sf project deploy start --source-dir force-app/main/default/staticresources --target-org $TARGET_ORG

echo "📤 Deploying LWC components..."
sf project deploy start --source-dir force-app/main/default/lwc/motivationButton --target-org $TARGET_ORG

echo "✅ Deployment completed successfully!"
echo ""
echo "🎯 Next steps:"
echo "1. Open your Salesforce org: $TARGET_ORG"
echo "2. Navigate to an Opportunity record"
echo "3. Click the Setup gear icon and select 'Edit Page'"
echo "4. Find 'motivationButton' in the Custom components list"
echo "5. Drag it to your desired location on the page"
echo "6. Save and activate the page"
echo ""
echo "🎉 Your motivation tool is ready to boost sales team morale!" 