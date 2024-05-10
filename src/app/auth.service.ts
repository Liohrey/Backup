import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable , map, Subject } from 'rxjs';
import { tap } from 'rxjs/operators';

@Injectable({
  providedIn: 'root',
})
export class AuthService {
  private loggedInUserId!: number;
  private loggedIn = false;
  private baseUrl = "http://localhost/Main-Credify/login.php";
  authStatus: Subject<boolean> = new Subject<boolean>();

  constructor(private http: HttpClient) {}

  setLoggedInUserId(userId: number) {
    this.loggedInUserId = userId;
  }

  getLoggedInUserId(): number {
    return this.loggedInUserId;
  }

  login(email: string, password: string): Observable<any> {
    const loginData = { email, password }; // Prepare login data object
    return this.http.post<any>(this.baseUrl, loginData) // Send login request
      .pipe(
        tap(response => console.log('Login response: ', response)),
        map((response) => {
          if (response && response.success) { // Check for successful login response
            this.setLoggedInUserId(response.faculty_id);
            this.loggedIn = true;
            this.authStatus.next(true);
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


}