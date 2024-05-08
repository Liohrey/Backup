import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, map } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class AuthService {
  private loggedInUserId: number | null = null;
  private loggedIn = false;
  private baseUrl = "http://localhost/Main-Credify/login.php";

  constructor(private http: HttpClient) {}

  login(email: string, password: string): Observable<any> {
    const loginData = { email, password }; // Prepare login data object
    return this.http.post<any>(this.baseUrl, loginData) // Send login request
      .pipe(
        map((response) => {
          if (response && response.success) { // Check for successful login response
            this.loggedIn = true;
            localStorage.setItem('loggedIn', JSON.stringify(this.loggedIn));
            return response; // Return the response data
          } else {
            throw new Error('Login failed'); // Throw error on failed login
          }
        })
      );
  }

  logout(): void {
    this.loggedIn = false;
    localStorage.removeItem('loggedIn');
  }

  isLoggedIn(): boolean {
    return this.loggedIn;
  }

  setLoggedInUserId(userId: number) {
    this.loggedInUserId = userId;
  }

  getLoggedInUserId(): number | null {
    return this.loggedInUserId;
  }
}