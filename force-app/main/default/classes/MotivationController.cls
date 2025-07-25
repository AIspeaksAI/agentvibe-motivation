/**
 * @description Apex controller for the Motivation Button LWC component
 * @author AgentVibe Motivation Tool
 * @version 1.0
 */
public with sharing class MotivationController {
    
    /**
     * @description Returns a random motivational message from a predefined list
     * @return String - A motivational message
     */
    @AuraEnabled(cacheable=true)
    public static String getMotivationMessage() {
        List<String> motivationalMessages = new List<String>{
            'Remember all the late nights you put into this? It paid off big time. The commission from this deal funded that amazing vacation you\'ve been dreaming of.',
            'This was the deal that got you noticed by leadership. Your hard work and strategic thinking here opened up so many new doors for your career.',
            'You almost gave up on this one, but your persistence was worth it. The relationship you built with this client has led to three more referrals.',
            'Because you closed this deal, you hit President\'s Club! Think about that feeling of accomplishment and the recognition you earned.',
            'This opportunity was a tough one, but the skills you developed while working on it made you a top performer on the team. You\'re unstoppable now.'
        };
        
        // Generate a random index
        Integer randomIndex = Math.mod(Math.abs(Crypto.getRandomInteger()), motivationalMessages.size());
        
        return motivationalMessages[randomIndex];
    }
} 