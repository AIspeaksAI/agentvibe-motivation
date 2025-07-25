import { LightningElement, track } from "lwc";
import getMotivationMessage from "@salesforce/apex/MotivationController.getMotivationMessage";
import { loadScript } from "lightning/platformResourceLoader";
import CANVAS_CONFETTI from "@salesforce/resourceUrl/canvasConfetti";

export default class MotivationButton extends LightningElement {
  @track message = "";
  @track isLoading = false;
  @track confettiLoaded = false;

  /**
   * Handles the motivation button click event
   * Calls the Apex controller to get a random motivational message
   * Triggers confetti animation using canvas-confetti library
   */
  handleMotivationClick() {
    this.isLoading = true;
    this.message = ""; // Clear previous message

    // Trigger confetti animation using the library
    this.triggerConfetti();

    getMotivationMessage()
      .then((result) => {
        this.message = result;
        this.isLoading = false;
      })
      .catch((error) => {
        console.error("Error getting motivation message:", error);
        this.message =
          "Something went wrong, but remember: you've got this! 💪";
        this.isLoading = false;
      });
  }

  /**
   * Loads the confetti library from static resource and triggers animation
   */
  async triggerConfetti() {
    try {
      // Load confetti library if not already loaded
      if (!this.confettiLoaded) {
        await loadScript(this, CANVAS_CONFETTI);
        this.confettiLoaded = true;
      }

      // Fire confetti animation
      this.fireConfetti();
    } catch (error) {
      console.error("Error loading confetti library:", error);
    }
  }

  /**
   * Fires the actual confetti animation
   */
  fireConfetti() {
    // Create a burst of confetti from the center
    window.confetti({
      particleCount: 150,
      spread: 90,
      origin: { y: 0.6 }
    });

    // Add side bursts immediately for dramatic effect
    window.confetti({
      particleCount: 50,
      angle: 60,
      spread: 55,
      origin: { x: 0 }
    });
    window.confetti({
      particleCount: 50,
      angle: 120,
      spread: 55,
      origin: { x: 1 }
    });
  }
}
