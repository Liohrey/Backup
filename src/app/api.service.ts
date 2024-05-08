import { Injectable } from "@angular/core";
import { HttpClient } from "@angular/common/http";
import { map } from 'rxjs/operators';

@Injectable({
    providedIn: 'root'
})
export class ApiService {

    baseUrl: string = "http://localhost/Main-Credify";
    
    constructor(private httpClient: HttpClient) {}

    public userlogin(email: any, password: any) {
        return this.httpClient.post<any>(this.baseUrl + '/login.php', {email, password})
        .pipe(map(response => {
            if (response && response.message === 'success') {
                // Set token based on a reliable property in the response
                this.setToken(response.token); // Assuming token is provided in the response
                return response;
            } else {
                throw new Error('Login failed'); // Throw an error if login fails
            }
        }));
    }

    private setToken(token: string) {
        localStorage.setItem('token', token);
    }
}
