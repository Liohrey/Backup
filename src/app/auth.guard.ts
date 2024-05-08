import { Injectable } from '@angular/core';
import { CanActivate, Router } from '@angular/router';
import { AuthService } from './auth.service';

@Injectable({
  providedIn: 'root',
})
export class AuthGuard implements CanActivate {
  constructor(private authService: AuthService, private router: Router) {}

  canActivate(): boolean {
    console.log('AuthGuard canActivate method called');
    const isAuthenticated = this.authService.isLoggedIn();
    console.log('Is authenticated:', isAuthenticated);
    if (isAuthenticated) {
      return true;
    } else {
      console.log('User not authenticated. Redirecting to /login');
      this.router.navigate(['/login']);
      return false;
    }
  }
}