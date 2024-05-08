import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ProductsRoutingModule } from './faculty-routing.module';
import { FacultyComponent } from './faculty.component';
import { CCSComponent } from './ccs/ccs.component';
import { CvformComponent } from './cvform/cvform.component';
import { CvComponent } from './cv/cv.component';



@NgModule({
  declarations: [
    FacultyComponent,
    CCSComponent,
    CvformComponent,
    CvComponent,
  ],
  imports: [
    CommonModule,
    ProductsRoutingModule
  ]
})
export class ProductsModule { }
