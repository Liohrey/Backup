import { NgModule } from '@angular/core';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BodyComponent } from './body/body.component';
import { SidenavComponent } from './sidenav/sidenav.component';
import { SublevelMenuComponent } from './sidenav/sublevel-menu.component';
import { HomeComponent } from './MAIN/home/home.component';
import { ProfileComponent } from './MAIN/profile/profile.component';
import { FeedbacksComponent } from './MAIN/feedbacks/feedbacks.component';
import { CommonModule } from '@angular/common';
import { HeaderComponent } from './MAIN/header/header.component';
import { AboutusComponent } from './MAIN/aboutus/aboutus.component';
import { ProfileDropdownComponent } from './MAIN/profile-dropdown/profile-dropdown.component';
import { FooterComponent } from './MAIN/footer/footer.component';
import { LoginuserComponent } from './loginuser/loginuser.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';


@NgModule({
  declarations: [
    AppComponent,
    BodyComponent,
    SidenavComponent,
    HomeComponent,
    AboutusComponent,
    ProfileComponent,
    FeedbacksComponent,
    SublevelMenuComponent,
    HeaderComponent,
    ProfileDropdownComponent,
    FooterComponent,
    LoginuserComponent,
    
  ],
  imports: [
    FormsModule,
    BrowserAnimationsModule,
    CommonModule,
    BrowserAnimationsModule,
    AppRoutingModule,
    ReactiveFormsModule,
    HttpClientModule,
  ],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
