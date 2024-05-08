import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CBAComponent } from './cba.component';

describe('CeahComponent', () => {
  let component: CBAComponent;
  let fixture: ComponentFixture<CBAComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CBAComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CBAComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
