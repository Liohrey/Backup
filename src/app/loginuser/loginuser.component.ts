import { Component, AfterViewInit, ViewChild, ElementRef } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { first } from 'rxjs/operators';
import { Router } from '@angular/router';
import { AuthService } from '../auth.service';

@Component({
  selector: 'app-loginuser',
  templateUrl: './loginuser.component.html',
  styleUrls: ['./loginuser.component.css'],
})
export class LoginuserComponent implements AfterViewInit {
  @ViewChild('emailInput') emailInputRef!: ElementRef;
  @ViewChild('passwordInput') passwordInputRef!: ElementRef;
  loginForm: FormGroup;
  errorMessage: string = '';
  passwordVisible: boolean = false; // Variable to track password visibility

  constructor(
    private formBuilder: FormBuilder,
    private router: Router,
    private authService: AuthService
  ) {
    this.loginForm = this.formBuilder.group({
      email: [
        '',
        [Validators.required, Validators.minLength(1), Validators.email],
      ],
      password: ['', Validators.required],
    });
  }

  onSubmit() {
    this.authService
    .login(this.loginForm.value.email, this.loginForm.value.password)
      .pipe(first())
      .subscribe(
        (data) => {
          console.log(data);
          if (data.success) {
            console.log('Login successful');
            alert('Login successful!');
            this.authService.setLoggedInUserId(data.id);
            this.router.navigate(['/home']);
          } else {
            console.error('Login failed');
            this.errorMessage = data.message;
          }
        },
        (error) => {
          console.log('An error occurred: ', error);
          this.errorMessage = 'An error occured. Please try again later.';
        }
      );
  }

  ngAfterViewInit() {
    if (this.emailInputRef) {
      const emailInputElement = this.emailInputRef
        .nativeElement as HTMLInputElement;
      this.setupInput(emailInputElement, '/assets/usernameicon.png');
    }

    if (this.passwordInputRef) {
      const passwordInputElement = this.passwordInputRef
        .nativeElement as HTMLInputElement;
      this.setupInput(passwordInputElement, '/assets/passwordicon.png');
      this.setupShowPasswordIcon(passwordInputElement);
      passwordInputElement.placeholder = '';
    }
  }

  private setupInput(inputElement: HTMLInputElement, iconUrl: string) {
    inputElement.placeholder = '';
    inputElement.style.backgroundImage = `url('${iconUrl}')`;
    inputElement.style.backgroundRepeat = 'no-repeat';
    inputElement.style.backgroundPosition = '20px center';
    inputElement.style.paddingLeft = '40px';
    inputElement.style.backgroundSize = '40px';

    inputElement.addEventListener('input', () => {
      if (inputElement.value.trim() === '') {
        inputElement.placeholder = '';
        inputElement.style.backgroundImage = `url('${iconUrl}')`;
        inputElement.style.backgroundRepeat = 'no-repeat';
        inputElement.style.backgroundPosition = '20px center';
        inputElement.style.paddingLeft = '40px';
        inputElement.style.backgroundSize = '40px';
      } else {
        inputElement.placeholder = '';
        inputElement.style.backgroundImage = '';
        inputElement.style.backgroundRepeat = '';
        inputElement.style.backgroundPosition = '';
        inputElement.style.paddingLeft = '';
      }
    });
  }

  private setupShowPasswordIcon(passwordInputElement: HTMLInputElement) {
    const showPasswordIcon = document.createElement('i');
    showPasswordIcon.className = 'fa fa-eye';
    showPasswordIcon.style.cursor = 'pointer';
    showPasswordIcon.style.position = 'absolute';
    showPasswordIcon.style.right = '20px';
    showPasswordIcon.style.top = '50%';
    showPasswordIcon.style.transform = 'translateY(-50%)';
    showPasswordIcon.style.zIndex = '1';
    showPasswordIcon.style.fontSize = '30px';

    showPasswordIcon.addEventListener('click', () => {
      this.togglePasswordVisibility();
    });

    passwordInputElement.parentElement?.appendChild(showPasswordIcon);
  }

  // Toggle password visibility function
  togglePasswordVisibility() {
    this.passwordVisible = !this.passwordVisible;
    const passwordInputElement = this.passwordInputRef.nativeElement as HTMLInputElement;

    // Toggle password input type between 'password' and 'text'
    passwordInputElement.type = this.passwordVisible ? 'text' : 'password';
  }
}
