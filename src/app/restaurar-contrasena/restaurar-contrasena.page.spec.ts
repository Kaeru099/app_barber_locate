import { ComponentFixture, TestBed } from '@angular/core/testing';
import { RestaurarContrasenaPage } from './restaurar-contrasena.page';

describe('RestaurarContrasenaPage', () => {
  let component: RestaurarContrasenaPage;
  let fixture: ComponentFixture<RestaurarContrasenaPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(RestaurarContrasenaPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
