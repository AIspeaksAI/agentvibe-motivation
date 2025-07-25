import { LightningElement, track } from 'lwc';
import getMotivationMessage from '@salesforce/apex/MotivationController.getMotivationMessage';

export default class MotivationButton extends LightningElement {
    @track message = '';
    @track isLoading = false;
    @track showConfetti = false;
    @track confettiPieces = [];

    /**
     * Handles the motivation button click event
     * Calls the Apex controller to get a random motivational message
     * Triggers confetti animation
     */
    handleMotivationClick() {
        this.isLoading = true;
        this.message = ''; // Clear previous message
        
        // Trigger confetti animation
        this.triggerConfetti();
        
        getMotivationMessage()
            .then(result => {
                this.message = result;
                this.isLoading = false;
            })
            .catch(error => {
                console.error('Error getting motivation message:', error);
                this.message = 'Something went wrong, but remember: you\'ve got this! 💪';
                this.isLoading = false;
            });
    }

    /**
     * Creates and triggers confetti animation
     */
    triggerConfetti() {
        this.showConfetti = true;
        this.confettiPieces = [];
        
        // Create confetti pieces
        const colors = ['#ff6b6b', '#4ecdc4', '#45b7d1', '#96ceb4', '#feca57', '#ff9ff3', '#54a0ff'];
        const confettiCount = 50;
        
        for (let i = 0; i < confettiCount; i++) {
            this.confettiPieces.push({
                id: i,
                style: `left: ${Math.random() * 100}%; animation-delay: ${Math.random() * 2}s; background-color: ${colors[Math.floor(Math.random() * colors.length)]};`
            });
        }
        
        // Hide confetti after animation completes
        setTimeout(() => {
            this.showConfetti = false;
            this.confettiPieces = [];
        }, 3000);
    }
} 