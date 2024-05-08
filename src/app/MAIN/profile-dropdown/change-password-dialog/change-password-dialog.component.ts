import { Component, OnInit } from '@angular/core';
import { MatDialogRef } from '@angular/material/dialog';

@Component({
  selector: 'app-change-password-dialog',
  templateUrl: './change-password-dialog.component.html',
  styleUrls: ['./change-password-dialog.component.css']
})
export class ChangePasswordDialogComponent implements OnInit {
  currentPassword: string = '';
  newPassword: string = '';
  confirmPassword: string = '';

  constructor(public dialogRef: MatDialogRef<ChangePasswordDialogComponent>) { }

  ngOnInit(): void {
  }

  onSubmit(): void {
    // Here you can implement password change logic
    // For simplicity, I'm just logging the passwords
    console.log('Current Password:', this.currentPassword);
    console.log('New Password:', this.newPassword);
    console.log('Confirm Password:', this.confirmPassword);
    this.dialogRef.close();
  }

  cancelChangePassword(): void {
    this.dialogRef.close();
  }
}
