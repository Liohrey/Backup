import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CHTMComponent } from './chtm.component';

describe('CeahComponent', () => {
  let component: CHTMComponent;
  let fixture: ComponentFixture<CHTMComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CHTMComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CHTMComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
