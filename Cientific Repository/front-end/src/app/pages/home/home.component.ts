import { Component, OnInit } from '@angular/core';
import { User } from 'src/app/interfaces/User';
import { UsersService } from 'src/app/services/users.service';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  ListaUser=new Array<User>();

  constructor(private http:UsersService) {
  }

  
  ngOnInit(): void {
    // this.http.PostUser().subscribe(datos=>{
    //          console.log(datos);
    //     });
  }
}