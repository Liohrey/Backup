import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './MAIN/home/home.component';
import { ProfileComponent } from './MAIN/profile/profile.component';
import { FeedbacksComponent } from './MAIN/feedbacks/feedbacks.component';
import { AboutusComponent } from './MAIN/aboutus/aboutus.component';
import { LoginuserComponent } from './loginuser/loginuser.component';
import { AuthGuard } from './auth.guard';

const routes: Routes = [
  { path: 'login', component: LoginuserComponent },
  { path: 'home', component: HomeComponent, canActivate: [AuthGuard] }, // Protect the 'home' route
  { path: 'profile', component: ProfileComponent, canActivate: [AuthGuard] }, // Protect the 'profile' route
  { path: 'feedbacks', component: FeedbacksComponent, canActivate: [AuthGuard] }, // Protect the 'feedbacks' route
  { path: 'aboutus', component: AboutusComponent, canActivate: [AuthGuard] }, // Protect the 'aboutus' route
  // Lazy-loaded module for faculty
  {
    path: 'faculty',
    loadChildren: () =>
      import('./faculty/faculty.module').then((m) => m.ProductsModule),
  },
  // Redirect any unknown paths to the home page
  { path: '**', redirectTo: '/home' },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}