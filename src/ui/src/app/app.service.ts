import {Injectable} from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {Observable} from "rxjs";
import {Contact} from "./dto/contact";
import {URL_CONSTANTS} from "./url-constants";


@Injectable({
    providedIn: 'root'
})
export class AppService {

    constructor(
        private httpClient: HttpClient
    ) {}


    getContacts(): Observable<Contact[]> {
        return this.httpClient.get<Contact[]>(URL_CONSTANTS.GET_CONTACTS)
    }

}
