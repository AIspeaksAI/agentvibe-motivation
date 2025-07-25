// Test Data Generation Script for AgentVibe Motivation Tool
// This script creates sample data to test the motivation tool functionality

// Create sample accounts
List<Account> accounts = new List<Account>();
accounts.add(new Account(
    Name = 'Acme Corporation',
    Industry = 'Technology',
    Type = 'Customer',
    BillingCity = 'San Francisco',
    BillingState = 'CA',
    Phone = '(555) 123-4567',
    Website = 'www.acme.com'
));
accounts.add(new Account(
    Name = 'Global Solutions Inc',
    Industry = 'Consulting',
    Type = 'Customer',
    BillingCity = 'New York',
    BillingState = 'NY',
    Phone = '(555) 234-5678',
    Website = 'www.globalsolutions.com'
));
accounts.add(new Account(
    Name = 'Innovation Labs',
    Industry = 'Healthcare',
    Type = 'Prospect',
    BillingCity = 'Boston',
    BillingState = 'MA',
    Phone = '(555) 345-6789',
    Website = 'www.innovationlabs.com'
));
accounts.add(new Account(
    Name = 'TechStart Ventures',
    Industry = 'Technology',
    Type = 'Prospect',
    BillingCity = 'Austin',
    BillingState = 'TX',
    Phone = '(555) 456-7890',
    Website = 'www.techstart.com'
));
accounts.add(new Account(
    Name = 'Enterprise Dynamics',
    Industry = 'Manufacturing',
    Type = 'Customer',
    BillingCity = 'Chicago',
    BillingState = 'IL',
    Phone = '(555) 567-8901',
    Website = 'www.enterprisedynamics.com'
));

insert accounts;

// Create sample opportunities
List<Opportunity> opportunities = new List<Opportunity>();
opportunities.add(new Opportunity(
    Name = 'Acme CRM Implementation',
    AccountId = accounts[0].Id,
    Amount = 250000,
    CloseDate = Date.today().addDays(30),
    StageName = 'Prospecting',
    Type = 'New Business',
    Probability = 20,
    LeadSource = 'Web',
    Description = 'Large-scale CRM implementation for Acme Corporation'
));
opportunities.add(new Opportunity(
    Name = 'Global Solutions Consulting Contract',
    AccountId = accounts[1].Id,
    Amount = 150000,
    CloseDate = Date.today().addDays(45),
    StageName = 'Qualification',
    Type = 'New Business',
    Probability = 40,
    LeadSource = 'Referral',
    Description = 'Strategic consulting engagement for process optimization'
));
opportunities.add(new Opportunity(
    Name = 'Innovation Labs Healthcare Platform',
    AccountId = accounts[2].Id,
    Amount = 500000,
    CloseDate = Date.today().addDays(60),
    StageName = 'Proposal/Price Quote',
    Type = 'New Business',
    Probability = 60,
    LeadSource = 'Partner',
    Description = 'Healthcare platform development and implementation'
));
opportunities.add(new Opportunity(
    Name = 'TechStart Seed Funding',
    AccountId = accounts[3].Id,
    Amount = 75000,
    CloseDate = Date.today().addDays(15),
    StageName = 'Negotiation/Review',
    Type = 'New Business',
    Probability = 80,
    LeadSource = 'Cold Call',
    Description = 'Seed funding round for innovative tech startup'
));
opportunities.add(new Opportunity(
    Name = 'Enterprise Dynamics ERP Upgrade',
    AccountId = accounts[4].Id,
    Amount = 350000,
    CloseDate = Date.today().addDays(90),
    StageName = 'Closed Won',
    Type = 'Existing Business',
    Probability = 100,
    LeadSource = 'Existing Customer',
    Description = 'ERP system upgrade and migration project'
));
opportunities.add(new Opportunity(
    Name = 'Acme Phase 2 Expansion',
    AccountId = accounts[0].Id,
    Amount = 180000,
    CloseDate = Date.today().addDays(120),
    StageName = 'Closed Lost',
    Type = 'Existing Business',
    Probability = 0,
    LeadSource = 'Existing Customer',
    Description = 'Phase 2 expansion of existing CRM implementation'
));

insert opportunities;

// Create sample contacts
List<Contact> contacts = new List<Contact>();
contacts.add(new Contact(
    FirstName = 'John',
    LastName = 'Smith',
    AccountId = accounts[0].Id,
    Title = 'CTO',
    Email = 'john.smith@acme.com',
    Phone = '(555) 111-2222'
));
contacts.add(new Contact(
    FirstName = 'Sarah',
    LastName = 'Johnson',
    AccountId = accounts[1].Id,
    Title = 'VP of Operations',
    Email = 'sarah.johnson@globalsolutions.com',
    Phone = '(555) 222-3333'
));
contacts.add(new Contact(
    FirstName = 'Michael',
    LastName = 'Chen',
    AccountId = accounts[2].Id,
    Title = 'CEO',
    Email = 'michael.chen@innovationlabs.com',
    Phone = '(555) 333-4444'
));
contacts.add(new Contact(
    FirstName = 'Emily',
    LastName = 'Davis',
    AccountId = accounts[3].Id,
    Title = 'Founder',
    Email = 'emily.davis@techstart.com',
    Phone = '(555) 444-5555'
));
contacts.add(new Contact(
    FirstName = 'Robert',
    LastName = 'Wilson',
    AccountId = accounts[4].Id,
    Title = 'IT Director',
    Email = 'robert.wilson@enterprisedynamics.com',
    Phone = '(555) 555-6666'
));

insert contacts;

// Create sample tasks
List<Task> tasks = new List<Task>();
tasks.add(new Task(
    Subject = 'Follow up on proposal',
    WhatId = opportunities[0].Id,
    WhoId = contacts[0].Id,
    Status = 'Not Started',
    Priority = 'High',
    ActivityDate = Date.today().addDays(7),
    Description = 'Follow up on the CRM implementation proposal'
));
tasks.add(new Task(
    Subject = 'Schedule demo call',
    WhatId = opportunities[1].Id,
    WhoId = contacts[1].Id,
    Status = 'In Progress',
    Priority = 'Medium',
    ActivityDate = Date.today().addDays(3),
    Description = 'Schedule product demonstration for Global Solutions'
));
tasks.add(new Task(
    Subject = 'Contract review meeting',
    WhatId = opportunities[2].Id,
    WhoId = contacts[2].Id,
    Status = 'Completed',
    Priority = 'High',
    ActivityDate = Date.today().addDays(-2),
    Description = 'Review contract terms for healthcare platform project'
));

insert tasks;

// Create sample notes (using Note object instead of ContentNote)
List<Note> notes = new List<Note>();
notes.add(new Note(
    Title = 'Acme Meeting Notes',
    Body = 'Met with John Smith to discuss CRM requirements. They are looking for a scalable solution that can handle 1000+ users. Budget approved up to $300K.',
    ParentId = opportunities[0].Id
));
notes.add(new Note(
    Title = 'Global Solutions Discovery Call',
    Body = 'Initial discovery call with Sarah Johnson. They need help optimizing their consulting processes. Current pain points include manual reporting and client communication.',
    ParentId = opportunities[1].Id
));
notes.add(new Note(
    Title = 'Innovation Labs Technical Review',
    Body = 'Technical review completed for healthcare platform. Requirements include HIPAA compliance, real-time data processing, and mobile app integration.',
    ParentId = opportunities[2].Id
));

insert notes;

// Create sample events
List<Event> events = new List<Event>();
events.add(new Event(
    Subject = 'Acme Proposal Presentation',
    WhatId = opportunities[0].Id,
    WhoId = contacts[0].Id,
    StartDateTime = DateTime.now().addDays(7).addHours(10),
    EndDateTime = DateTime.now().addDays(7).addHours(11),
    Description = 'Present the CRM implementation proposal to Acme leadership team'
));
events.add(new Event(
    Subject = 'Global Solutions Demo',
    WhatId = opportunities[1].Id,
    WhoId = contacts[1].Id,
    StartDateTime = DateTime.now().addDays(5).addHours(14),
    EndDateTime = DateTime.now().addDays(5).addHours(15),
    Description = 'Product demonstration for Global Solutions team'
));

insert events;

System.debug('Test data generation completed successfully!');
System.debug('Created ' + accounts.size() + ' accounts');
System.debug('Created ' + opportunities.size() + ' opportunities');
System.debug('Created ' + contacts.size() + ' contacts');
System.debug('Created ' + tasks.size() + ' tasks');
System.debug('Created ' + notes.size() + ' notes');
System.debug('Created ' + events.size() + ' events'); 