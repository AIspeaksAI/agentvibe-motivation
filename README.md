# AgentVibe Motivation Tool

A custom Lightning Web Component (LWC) for Salesforce that provides motivational messages to sales users directly on the Opportunity page. This tool helps boost morale and maintain focus on closing deals by displaying personalized motivational messages from the user's "future self."

## 🎯 Project Overview

The AgentVibe Motivation Tool delivers a custom "Motivate Me" button within a Lightning Web Component. When a user clicks this button on an Opportunity record, a pre-written motivational message appears, framed as if it's from their future self, congratulating them on their hard work and the positive outcomes of their current opportunity.

## ✨ Key Features

- **Quick Motivation**: One-click access to motivational messages
- **Personal Touch**: Messages feel personal and relevant to opportunity work
- **Random Selection**: Each click provides a different motivational message
- **Professional UI**: Clean, modern interface using Salesforce Lightning Design System
- **Easy Integration**: Simple drag-and-drop installation on Opportunity pages

## 🏗️ Technical Architecture

### Components

1. **MotivationController.cls** - Apex controller providing motivational messages
2. **motivationButton** - Lightning Web Component with UI and interaction logic
3. **MotivationControllerTest.cls** - Test coverage for the Apex controller

### File Structure

```
force-app/main/default/
├── classes/
│   ├── MotivationController.cls
│   ├── MotivationController.cls-meta.xml
│   ├── MotivationControllerTest.cls
│   └── MotivationControllerTest.cls-meta.xml
└── lwc/
    └── motivationButton/
        ├── motivationButton.html
        ├── motivationButton.js
        ├── motivationButton.css
        └── motivationButton.js-meta.xml
```

## 🚀 Installation & Deployment

### Prerequisites

- Salesforce CLI installed and authenticated
- Access to a Salesforce org (Sandbox or Developer Edition recommended)
- Basic knowledge of Salesforce Lightning App Builder

### Quick Deployment

1. **Clone or download this project**
   ```bash
   git clone <repository-url>
   cd agentvibe-motivation
   ```

2. **Deploy using the provided script**
   ```bash
   ./scripts/deploy-motivation-tool.sh <your-org-alias>
   ```

3. **Manual deployment (alternative)**
   ```bash
   # Deploy Apex classes
   sfdx force:source:deploy -p force-app/main/default/classes/ -u <your-org-alias>
   
   # Deploy LWC components
   sfdx force:source:deploy -p force-app/main/default/lwc/motivationButton -u <your-org-alias>
   ```

### Adding to Opportunity Page

1. Open your Salesforce org
2. Navigate to any Opportunity record
3. Click the **Setup gear icon** ⚙️ and select **"Edit Page"**
4. In the Lightning App Builder, find **"motivationButton"** in the **Custom** components list
5. Drag and drop the component to your desired location (recommended: right sidebar)
6. Click **"Save"** and then **"Activate"**

## 🎮 Usage

1. **Navigate** to any Opportunity record in Salesforce
2. **Locate** the "Motivation Boost" component (usually in the right sidebar)
3. **Click** the "Motivate Me" button
4. **Read** the motivational message that appears
5. **Repeat** as needed for additional motivation!

## 📝 Motivational Messages

The tool includes five pre-defined motivational messages:

1. *"Remember all the late nights you put into this? It paid off big time. The commission from this deal funded that amazing vacation you've been dreaming of."*

2. *"This was the deal that got you noticed by leadership. Your hard work and strategic thinking here opened up so many new doors for your career."*

3. *"You almost gave up on this one, but your persistence was worth it. The relationship you built with this client has led to three more referrals."*

4. *"Because you closed this deal, you hit President's Club! Think about that feeling of accomplishment and the recognition you earned."*

5. *"This opportunity was a tough one, but the skills you developed while working on it made you a top performer on the team. You're unstoppable now."*

## 🧪 Testing

Run the test suite to ensure everything is working correctly:

```bash
sfdx force:apex:test:run -n MotivationControllerTest -u <your-org-alias>
```

## 🔧 Customization

### Adding New Messages

To add new motivational messages, edit the `MotivationController.cls` file:

```apex
List<String> motivationalMessages = new List<String>{
    'Your existing messages...',
    'Your new motivational message here!',
    // Add more messages as needed
};
```

### Styling Customization

Modify the `motivationButton.css` file to customize the component's appearance.

## 📋 Requirements

- **Salesforce API Version**: 62.0+
- **Browser Support**: Modern browsers supporting Lightning Web Components
- **Permissions**: Users need access to Opportunity records

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

For issues or questions:
1. Check the troubleshooting section below
2. Review Salesforce LWC documentation
3. Create an issue in the repository

## 🔍 Troubleshooting

### Common Issues

**Component not appearing in Lightning App Builder:**
- Ensure the component is deployed successfully
- Check that the metadata file has `isExposed="true"`
- Verify the target configuration includes `lightning__RecordPage`

**Button not responding:**
- Check browser console for JavaScript errors
- Verify the Apex controller is deployed and accessible
- Ensure user has appropriate permissions

**Messages not loading:**
- Check network connectivity
- Verify the Apex method is properly annotated with `@AuraEnabled`
- Review debug logs for any errors

---

**Built with ❤️ for sales teams everywhere**
