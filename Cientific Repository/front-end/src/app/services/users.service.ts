import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {environment} from '../../environments/environment';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class UsersService {

  constructor(private http:HttpClient) { }

  HttpUploadOptions = {
    headers: new HttpHeaders(
      {
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Headers': 'Content-Type',
      'Access-Control-Allow-Methods': 'GET,POST,OPTIONS,DELETE,PUT',
      'Content-Type': 'application/json',
    }
    ),
  };

  GetUser():Observable<any>{
    return this.http.get(`${environment.hostname}/ListarUser`);
  }
  PostUser():Observable<any>{
    return this.http.post(`${environment.hostname}/InsertUser`,JSON.stringify({"username":"patricio","userpassword":"123","email":"mail@mail.com","charge":"subjefe"}),this.HttpUploadOptions);

  }


}
