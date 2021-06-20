import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { HelloWorld } from '../models/HelloWorld.model';
import { Observable } from 'rxjs';

const baseUrl = 'http://localhost:8080/backend';

@Injectable({
  providedIn: 'root'
})
export class HelloWorldService {

  constructor(private http: HttpClient) { }

  getAll(): Observable<HelloWorld[]> {
    return this.http.get<HelloWorld[]>(`${baseUrl}/helloworlds`);
  }

  get(id: any): Observable<any> {
    return this.http.get(`${baseUrl}/helloworld/${id}`);
  }

  create(data: any): Observable<any> {
    return this.http.post(`${baseUrl}/helloworld`, data);
  }

  update(id: any, data: any): Observable<any> {
    return this.http.put(`${baseUrl}/helloworld/${id}`, data);
  }

  delete(id: any): Observable<any> {
    return this.http.delete(`${baseUrl}/helloworld/${id}`);
  }


}
