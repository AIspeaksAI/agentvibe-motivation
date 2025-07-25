import { LightningElement, track } from 'lwc';
import getMotivationMessage from '@salesforce/apex/MotivationController.getMotivationMessage';

export default class MotivationButton extends LightningElement {
    @track message = '';
    @track isLoading = false;

    /**
     * Handles the motivation button click event
     * Calls the Apex controller to get a random motivational message
     */
    handleMotivationClick() {
        this.isLoading = true;
        this.message = ''; // Clear previous message
        
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
} 