import { Component, HostListener, OnInit } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { ChangePasswordDialogComponent } from './change-password-dialog/change-password-dialog.component';

@Component({
  selector: 'app-profile-dropdown',
  templateUrl: './profile-dropdown.component.html',
  styleUrls: ['./profile-dropdown.component.css']
})
export class ProfileDropdownComponent implements OnInit {
  dropdownOpen: boolean = false;
  buttonClicked: boolean = false;
  dropdownPosition: string = 'down';

  constructor(private dialog: MatDialog) { }

  ngOnInit(): void {
  }

  toggleDropdown(): void {
    this.dropdownOpen = !this.dropdownOpen;
    this.buttonClicked = !this.buttonClicked;
    this.dropdownPosition = this.dropdownOpen ? 'up' : 'down';
  }
  openChangePasswordDialog(event: Event): void {
    const dialogRef = this.dialog.open(ChangePasswordDialogComponent, {
      width: '1000px',
    });
  
    dialogRef.afterClosed().subscribe(result => {
      console.log('The dialog was closed');
    });
  }
  
}
