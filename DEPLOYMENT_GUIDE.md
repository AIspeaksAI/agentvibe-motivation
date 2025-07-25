# 🚀 Quick Deployment Guide - AgentVibe Motivation Tool

## Prerequisites
- Salesforce CLI installed and authenticated
- Access to a Salesforce org (Sandbox recommended)

## One-Command Deployment

```bash
./scripts/deploy-motivation-tool.sh <your-org-alias>
```

## Manual Deployment Steps

1. **Deploy Apex Classes**
   ```bash
   sfdx force:source:deploy -p force-app/main/default/classes/ -u <your-org-alias>
   ```

2. **Deploy LWC Component**
   ```bash
   sfdx force:source:deploy -p force-app/main/default/lwc/motivationButton -u <your-org-alias>
   ```

3. **Run Tests**
   ```bash
   sfdx force:apex:test:run -n MotivationControllerTest -u <your-org-alias>
   ```

## Add to Opportunity Page

1. Open your Salesforce org
2. Go to any Opportunity record
3. Click ⚙️ Setup → "Edit Page"
4. Find "motivationButton" in Custom components
5. Drag to right sidebar
6. Save & Activate

## Test the Component

1. Navigate to an Opportunity record
2. Look for "Motivation Boost" component
3. Click "Motivate Me" button
4. Verify motivational message appears

## Troubleshooting

- **Component not visible**: Check deployment status
- **Button not working**: Verify Apex controller is deployed
- **No messages**: Check browser console for errors

## Support

See README.md for detailed documentation and troubleshooting. 