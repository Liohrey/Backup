import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CCSComponent } from './ccs.component';

describe('CCSComponent', () => {
  let component: CCSComponent
  let fixture: ComponentFixture<CCSComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CCSComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CCSComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
