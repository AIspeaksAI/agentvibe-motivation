/**
 * @description Test class for MotivationController
 * @author AgentVibe Motivation Tool
 * @version 1.0
 */
@isTest
private class MotivationControllerTest {
    
    /**
     * @description Test the getMotivationMessage method returns a valid message
     */
    @isTest
    static void testGetMotivationMessage() {
        // Test data
        List<String> expectedMessages = new List<String>{
            'Remember all the late nights you put into this? It paid off big time. The commission from this deal funded that amazing vacation you\'ve been dreaming of.',
            'This was the deal that got you noticed by leadership. Your hard work and strategic thinking here opened up so many new doors for your career.',
            'You almost gave up on this one, but your persistence was worth it. The relationship you built with this client has led to three more referrals.',
            'Because you closed this deal, you hit President\'s Club! Think about that feeling of accomplishment and the recognition you earned.',
            'This opportunity was a tough one, but the skills you developed while working on it made you a top performer on the team. You\'re unstoppable now.'
        };
        
        Test.startTest();
        
        // Call the method multiple times to test randomness
        String message1 = MotivationController.getMotivationMessage();
        String message2 = MotivationController.getMotivationMessage();
        String message3 = MotivationController.getMotivationMessage();
        
        Test.stopTest();
        
        // Assertions
        System.assertNotEquals(null, message1, 'Message should not be null');
        System.assertNotEquals('', message1, 'Message should not be empty');
        System.assert(expectedMessages.contains(message1), 'Message should be one of the expected messages');
        
        System.assertNotEquals(null, message2, 'Message should not be null');
        System.assertNotEquals('', message2, 'Message should not be empty');
        System.assert(expectedMessages.contains(message2), 'Message should be one of the expected messages');
        
        System.assertNotEquals(null, message3, 'Message should not be null');
        System.assertNotEquals('', message3, 'Message should not be empty');
        System.assert(expectedMessages.contains(message3), 'Message should be one of the expected messages');
    }
    
    /**
     * @description Test that the method is accessible and cacheable
     */
    @isTest
    static void testMethodAccessibility() {
        Test.startTest();
        
        // This test ensures the method can be called without errors
        String message = MotivationController.getMotivationMessage();
        
        Test.stopTest();
        
        // Basic assertion to ensure method works
        System.assertNotEquals(null, message, 'Method should return a valid message');
    }
} 