import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { CCSComponent } from './ccs/ccs.component';
import { CeahComponent } from './ceah/ceah.component';
import { CBAComponent } from './cba/cba.component';
import { CHTMComponent } from './chtm/chtm.component';
import { CAHSComponent } from './cahs/cahs.component';
import { CvformComponent } from './cvform/cvform.component';
import { CvComponent } from './cv/cv.component';

const routes: Routes = [
  
  {
    path: 'ccs',
    component: CCSComponent
  },
  {
    path: 'ceah',
    component: CeahComponent
  },
  {
    path: 'cba',
    component: CBAComponent
  },
  {
    path: 'chtm',
    component: CHTMComponent
  },
  {
    path: 'cahs',
    component: CAHSComponent
  },
  {
    path: 'cvform',
    component: CvformComponent
  },
  {
    path: 'cv',
    component: CvComponent
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ProductsRoutingModule { }
