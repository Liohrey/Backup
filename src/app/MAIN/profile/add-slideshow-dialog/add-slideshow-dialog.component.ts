import { Component, OnInit } from '@angular/core';
import { MatDialogRef } from '@angular/material/dialog';

@Component({
  selector: 'app-add-slideshow-dialog',
  templateUrl: './add-slideshow-dialog.component.html',
  styleUrls: ['./add-slideshow-dialog.component.css']
})
export class AddSlideshowDialogComponent implements OnInit {

  selectedImages: File[] = [];

  constructor(public dialogRef: MatDialogRef<AddSlideshowDialogComponent>) { }

  ngOnInit(): void {
  }

  closeDialog(): void {
    this.dialogRef.close();
  }

  onFileSelected(event: Event): void {
    const inputElement = event.target as HTMLInputElement;
    if (inputElement.files && inputElement.files.length > 0) {
      // Store selected files in selectedImages array
      this.selectedImages = Array.from(inputElement.files);
    }
  }

  addImages(): void {
    // Pass selected images back to the profile component
    this.dialogRef.close(this.selectedImages);
  }

}
