import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CeahComponent } from './ceah.component';

describe('CeahComponent', () => {
  let component: CeahComponent;
  let fixture: ComponentFixture<CeahComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CeahComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CeahComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
