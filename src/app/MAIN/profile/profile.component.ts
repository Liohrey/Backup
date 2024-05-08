// profile.component.ts
import { Component, ElementRef, OnInit, ViewChild } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { AddSlideshowDialogComponent } from '../profile/add-slideshow-dialog/add-slideshow-dialog.component';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent implements OnInit { 
  information = {
    name: 'Profx',
    profilePicture: "/assets/user.png" as string | null,
    department: 'College of Computer Studies',
    courseHandled: 'Masters of Information Technology',
    college: 'College of Computer Studies',
    teachingExperience: '11',
    employmentStatus: 'Full-Time',
    position: 'Assistant Professor',
   
  }
  addedInformation: any[] = [];
  slideshowImages: string[] = [];
  currentImageIndex = 0;
  profilePicture: string | null = null; 
  slideshowInterval: any;

  addInformationToContainer(): void {
 
    if (this.addedInformation.length === 0) {
  
      this.addedInformation.push({
        courseHandled: this.information.courseHandled,
        college: this.information.college,
        teachingExperience: this.information.teachingExperience,
        employmentStatus: this.information.employmentStatus,
        position: this.information.position
      });
    }
  }
  

  get currentImage(): string {
    return this.slideshowImages[this.currentImageIndex];
  }

  nextImage(): void {
    this.currentImageIndex = (this.currentImageIndex + 1) % this.slideshowImages.length;
  }

  prevImage(): void {
    this.currentImageIndex = (this.currentImageIndex - 1 + this.slideshowImages.length) % this.slideshowImages.length;
  }

  isSlideshowEmpty(): boolean {
    return this.slideshowImages.length === 0;
  }
  @ViewChild('slideshowFileInput') slideshowFileInput!: ElementRef;

  openSlideshowFileInput() {
    this.slideshowFileInput.nativeElement.click();
  }

  onSlideshowFileSelected(event: any): void {
    const file: File = event.target.files[0];
    if (file) {
      const reader = new FileReader();
      reader.onload = () => {
        // Change the current slideshow image to the new one
        this.slideshowImages[this.currentImageIndex] = reader.result as string;
      };
      reader.readAsDataURL(file);
    }
  }
  deleteCurrentImage(): void {
    if (this.slideshowImages.length > 1) {
      // Remove the current image from the array
      this.slideshowImages.splice(this.currentImageIndex, 1);
      // Adjust the currentImageIndex if it's now out of bounds
      if (this.currentImageIndex >= this.slideshowImages.length) {
        this.currentImageIndex = 0; // Reset to the first image or the last one
      }
    } else if (this.slideshowImages.length === 1) {
      // If there is only one image, remove it and reset the index
      this.slideshowImages = [];
      this.currentImageIndex = 0;
    }
  }
  addSlideshowImage(imageUrl: string): void {
    this.slideshowImages.push(imageUrl);
  }
    
  pop = false;

  openPop() {
    this.pop = true;
  }
  closePop() {
    this.pop = false;
  }
  
  @ViewChild('fileInput')
  fileInput!: ElementRef;

  openFileInput() {
    this.fileInput.nativeElement.click(); // Trigger click event on file input
  }

  onFileSelected(event: any): void {
    const file: File = event.target.files[0];
    if (file) {
      const reader = new FileReader();
      reader.onload = (e: any) => {
        this.information.profilePicture = e.target.result as string; // Assuring TypeScript that this is a string
      };
      reader.readAsDataURL(file);
    }
  }
  constructor(public dialog: MatDialog) { }

  openDialog(): void {
    const dialogRef = this.dialog.open(AddSlideshowDialogComponent, {
      width: '400px'
    });

    dialogRef.afterClosed().subscribe((selectedImages: File[]) => {
      // Add selected images to slideshowImages array
      if (selectedImages && selectedImages.length > 0) {
        const newImageUrls = selectedImages.map(image => URL.createObjectURL(image));
        this.slideshowImages.push(...newImageUrls); // Append new images to existing array
        // Restart slideshow when new images are added
        this.restartSlideshow();
      }
    });
  }

  startSlideshow(): void {
    this.slideshowInterval = setInterval(() => {
      this.nextImage();
    }, 5000); // Change interval as needed (milliseconds)
  }

  restartSlideshow(): void {
    clearInterval(this.slideshowInterval); // Clear existing interval
    this.currentImageIndex = 0; // Reset to first image
    this.startSlideshow(); // Restart slideshow
  }
  

 


  updateName(event: any) {
    this.information.name = event.target.innerText;
  }

  updateField(field: keyof typeof ProfileComponent.prototype.information, event: any) {
    this.information[field] = event.target.innerText;
  }
  
  ngOnInit(): void {
    this.profilePicture = this.information.profilePicture;
    this.startSlideshow();
  }
  ngOnDestroy(): void {
    this.stopSlideshow();
  }
  stopSlideshow(): void {
    clearInterval(this.slideshowInterval);
  }
}
