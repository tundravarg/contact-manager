import {AfterViewInit, Component, OnInit} from '@angular/core';
import {AppService} from "../app.service";
import {Contact} from "../dto/contact";

@Component({
    selector: 'app-contacts-list',
    templateUrl: './contacts-list.component.html'
})
export class ContactsListComponent implements OnInit, AfterViewInit {

    contacts?: Contact[];


    constructor(
        private appService: AppService
    ) { }

    ngOnInit(): void {
    }

    ngAfterViewInit() {
        this.loadData();
    }

    private loadData(): void {
        this.appService.getContacts().subscribe(contacts => {
            this.contacts = contacts;
        });
    }

}
