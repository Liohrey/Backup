import { Component, HostListener, OnInit } from '@angular/core';

@Component({
  selector: 'ccs',
  templateUrl: './ccs.component.html',
  styleUrls: ['./ccs.component.css'],
})
export class CCSComponent implements OnInit {
  router: any;
  isModalOpen: boolean = false;
  modalTimeout: any;

  profData: any = {
    name: 'Prof. X',
    yearsOfTeaching: '10 years',
    department: 'Computer Science',
    rank: 'Associate Professor',
    slides: [
      { image: '../assets/image.png' },
      { image: '../assets/image1.png' },
      { image: '../assets/image2.png' }
    ],
    timelines: '...'
  };

  handleMouseEnter(event: MouseEvent, data: any, imageUrl: string): void {
    this.setModalData(event, data, imageUrl, -140, -200);
  }
  handleMouseEnter2(event: MouseEvent, data: any, imageUrl: string): void {
    this.setModalData(event, data, imageUrl, -140, -200);
  }
  handleMouseEnter3(event: MouseEvent, data: any, imageUrl: string): void {
    this.setModalData(event, data, imageUrl, -1580, -200);
  }

  private setModalPosition(element: HTMLElement): void {
    const modal = document.querySelector('.modal') as HTMLElement;
    const elementRect = element.getBoundingClientRect();
    const scrollLeft = window.pageXOffset || document.documentElement.scrollLeft;
    const scrollTop = window.pageYOffset || document.documentElement.scrollTop;

    // Calculate the desired position for the modal including scroll position
    let modalLeft = elementRect.right - elementRect.width / 2 + scrollLeft;
    let modalTop = elementRect.top + scrollTop;

    // Set the position of the modal
    modal.style.left = modalLeft + 'px';
    modal.style.top = modalTop + 'px';
  }

  private setModalData(event: MouseEvent, data: any, imageUrl: string, leftOffset: number, topOffset: number): void {
    this.profData = { ...data, image: imageUrl };
    this.isModalOpen = true;
    const card = event.currentTarget as HTMLElement;
    const modal = document.querySelector('.modal') as HTMLElement;
    const cardRect = card.getBoundingClientRect();
    const scrollLeft = window.pageXOffset || document.documentElement.scrollLeft;
    const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
  
    // Calculate the desired position for the modal relative to the card
    let modalLeft = cardRect.right + leftOffset + scrollLeft;
    let modalTop = cardRect.top + topOffset + scrollTop;
  
    // Set the position of the modal
    modal.style.position = 'absolute'; // Ensure the modal's position is absolute
    modal.style.left = modalLeft + 'px';
    modal.style.top = modalTop + 'px';
  }
  

  @HostListener('window:resize', ['$event'])
  onResize(event: any) {
    // Recalculate modal position when window is resized
    if (this.isModalOpen) {
      const element = document.querySelector('.active') as HTMLElement; // Assuming the active slide or card has 'active' class
      this.setModalPosition(element);
    }
  }

  handleMouseLeave(): void {
    // Debounce the mouseleave event to prevent flickering
    clearTimeout(this.modalTimeout);
    this.modalTimeout = setTimeout(() => {
      this.isModalOpen = false;
    }, 200);
  }

  constructor() { }

   ngOnInit(): void {
    // Automatically advance slides every 3 seconds
    setInterval(() => {
      const activeIndex = document.querySelector('.carousel-item.active');
      const slides = document.querySelectorAll('.carousel-item');
      let nextIndex = 0;
      if (activeIndex && slides) {
        const currentIndex = Array.from(slides).indexOf(activeIndex);
        nextIndex = (currentIndex + 1) % slides.length;
      }
      slides.forEach((slide) => {
        slide.classList.remove('active');
      });
      slides[nextIndex].classList.add('active');
    }, 2000);
  }
}
