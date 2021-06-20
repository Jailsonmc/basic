import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AddHelloWorldComponent } from './components/add-hello-world/add-hello-world.component';
import { HelloWorldDetailsComponent } from './components/hello-world-details/hello-world-details.component';
import { HelloWorldListComponent } from './components/hello-world-list/hello-world-list.component';

const routes: Routes = [
  {path: '', redirectTo: 'hello-worlds', pathMatch: 'full'},
  {path: 'hello-worlds', component: HelloWorldListComponent},
  {path: 'hello-worlds/:id', component: HelloWorldDetailsComponent},
  {path: 'add', component: AddHelloWorldComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
