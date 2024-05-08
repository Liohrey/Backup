import { Component } from '@angular/core';
import { NavigationEnd, Router } from '@angular/router';
@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent {
  navbarBrandText: string = 'Credify'; // Default brand text

  constructor(private router: Router) {
    this.router.events.subscribe(event => {
      if (event instanceof NavigationEnd) {
        // Update page title based on current route
        this.updateNavbarBrandText(this.router.url);
      }
    });
  }

  // Function to update the navbar brand text based on the current route
  updateNavbarBrandText(url: string) {
    switch(url) {
      case '/home':
        this.navbarBrandText = 'Home';
        break;
      case '/profile':
        this.navbarBrandText = 'Profile';
        break;
      case '/feedbacks':
        this.navbarBrandText = 'Feedbacks';
        break;
      case '/aboutus':
        this.navbarBrandText = 'About us';
        break;
      default:
        this.navbarBrandText = 'Credify'; // Default brand text
    }
  }
}
