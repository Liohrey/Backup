import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css'],
})
export class HomeComponent implements OnInit {
  images: string[] = [
    '/assets/slide1.png',
    '/assets/image.png',
    '/assets/image1.png',
    '/assets/image2.png',
  ];
  currentImageIndex: number = 0;
  autoplay: boolean = true;
  autoplayInterval: any;

  constructor() {}

  ngOnInit(): void {
    this.startAutoplay();
  }

  startAutoplay() {
    if (this.autoplay) {
      this.autoplayInterval = setInterval(() => {
        this.nextImage();
      }, 3000); // Change interval as needed
    }
  }

  nextImage() {
    this.currentImageIndex = (this.currentImageIndex + 1) % this.images.length;
  }

  prevImage() {
    this.currentImageIndex =
      (this.currentImageIndex - 1 + this.images.length) % this.images.length;
  }

  get currentImage(): string {
    return this.images[this.currentImageIndex];
  }
}
