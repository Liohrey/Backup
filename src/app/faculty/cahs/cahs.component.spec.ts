import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CAHSComponent } from './cahs.component';

describe('cahscomponent', () => {
  let component: CAHSComponent;
  let fixture: ComponentFixture<CAHSComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CAHSComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CAHSComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
