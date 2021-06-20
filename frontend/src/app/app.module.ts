import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { AddHelloWorldComponent } from './components/add-hello-world/add-hello-world.component';
import { HelloWorldDetailsComponent } from './components/hello-world-details/hello-world-details.component';
import { HelloWorldListComponent } from './components/hello-world-list/hello-world-list.component';

@NgModule({
  declarations: [
    AppComponent,
    AddHelloWorldComponent,
    HelloWorldDetailsComponent,
    HelloWorldListComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
