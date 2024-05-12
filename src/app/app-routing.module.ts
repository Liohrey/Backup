import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './MAIN/home/home.component';
import { ProfileComponent } from './MAIN/profile/profile.component';
import { FeedbacksComponent } from './MAIN/feedbacks/feedbacks.component';
import { AboutusComponent } from './MAIN/aboutus/aboutus.component';
import { LoginuserComponent } from './loginuser/loginuser.component';
import { AuthGuard } from './auth.guard';

const routes: Routes = [
  { path: 'login', component: LoginuserComponent, title: 'Credify | Login' },
  { path: 'home', component: HomeComponent, title: 'Credify | Home', canActivate: [AuthGuard] },
  { path: 'profile', component: ProfileComponent, title: 'Credify | Profile', canActivate: [AuthGuard] }, 
  { path: 'feedbacks', component: FeedbacksComponent, title: 'Credify | Feedbacks', canActivate: [AuthGuard] }, 
  { path: 'aboutus', component: AboutusComponent, title: 'Credify | About Us', canActivate: [AuthGuard] }, 

  {
    path: 'faculty',
    loadChildren: () =>
      import('./faculty/faculty.module').then((m) => m.ProductsModule),
  },
  { path: '**', redirectTo: '/home' },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}