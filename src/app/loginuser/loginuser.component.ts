import { Component, ViewChild, ElementRef } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router'; 
import { AuthService } from '../auth.service';
import { AuthGuard } from '../auth.guard';

@Component({
  selector: 'app-loginuser',
  templateUrl: './loginuser.component.html',
  styleUrls: ['./loginuser.component.css'],
})
export class LoginuserComponent {
  @ViewChild('passwordInput') passwordInputRef!: ElementRef;
  loginForm: FormGroup;
  errorMessage: string = '';
  showPassword: boolean = false; 
  passwordFieldType: string = 'password'; 

  constructor(
    private formBuilder: FormBuilder,
    private authService: AuthService,
    private authGuard: AuthGuard,
    private router: Router 
  ) {
    this.loginForm = this.formBuilder.group({
      email: ['', [Validators.required, Validators.email]],
      password: ['', Validators.required],
    });
  }

  onSubmit() {
    this.authService
      .login(this.loginForm.value.email, this.loginForm.value.password)
      .subscribe(
        (data) => {
          if (data.success) {
            console.log('Login successful');
            alert('Login successful!');
            this.router.navigate(['/home']); 
          } else {
            console.error('Login failed');
            this.errorMessage = data.message;
          }
        },
        (error) => {
          console.log('An error occurred: ', error);
          this.errorMessage = 'Email or password incorrect';
        }
      );
  }

  togglePasswordVisibility() {
    this.showPassword = !this.showPassword;
    this.passwordFieldType = this.showPassword ? 'text' : 'password';
  }

  isLoggedIn = this.authGuard.canActivate();
}
