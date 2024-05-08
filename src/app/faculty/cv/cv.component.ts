import { Component } from '@angular/core';

@Component({
  selector: 'app-cv',
  templateUrl: './cv.component.html',
  styleUrl: './cv.component.css'
})
export class CvComponent {

  feedbackContainers: string[] = [];
  feedbackPosted: boolean = false; // Track if feedback has been posted

  information = {
    profilePicture: '/assets/user.png',
  };

  constructor() {}

  postFeedback(feedback: string): void {
    if (feedback.trim() !== '') {
      this.feedbackContainers.push(feedback);
      this.feedbackPosted = true; // Set feedbackPosted to true after posting feedback
    } else {
      alert('Please enter your feedback.');
    }
  }
}
