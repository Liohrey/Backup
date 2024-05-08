import { Component } from '@angular/core';

interface FeedbackItem {
  feedback: string;
}

@Component({
  selector: 'app-feedbacks',
  templateUrl: './feedbacks.component.html',
  styleUrls: ['./feedbacks.component.css'],
})
export class FeedbacksComponent {
  feedbackItems: FeedbackItem[] = [];
  editingIndex: number = -1; // Track which feedback item is being edited

  information = {
    profilePicture: '/assets/user.png',
  };

  constructor() {}

  addFeedback(feedback: string): void {
    if (feedback.trim() !== '') {
      this.feedbackItems.push({ feedback });
    } else {
      alert('Please enter your feedback.');
    }
  }

  editFeedback(index: number): void {
    // Set the editing index to the selected feedback item
    this.editingIndex = index;
  }

  saveEditedFeedback(item: FeedbackItem): void {
    // Reset editing mode
    this.editingIndex = -1;
  }

  cancelEdit(): void {
    // Reset editing mode
    this.editingIndex = -1;
  }

  deleteFeedback(index: number): void {
    // Remove the selected feedback item
    this.feedbackItems.splice(index, 1);
  }
}
