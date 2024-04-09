import { ComponentFixture, TestBed } from '@angular/core/testing';
import { AgendamientoPage } from './agendamiento.page';

describe('AgendamientoPage', () => {
  let component: AgendamientoPage;
  let fixture: ComponentFixture<AgendamientoPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(AgendamientoPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
