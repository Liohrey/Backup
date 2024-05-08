import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AddSlideshowDialogComponent } from './add-slideshow-dialog.component';

describe('AddSlideshowDialogComponent', () => {
  let component: AddSlideshowDialogComponent;
  let fixture: ComponentFixture<AddSlideshowDialogComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [AddSlideshowDialogComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(AddSlideshowDialogComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
