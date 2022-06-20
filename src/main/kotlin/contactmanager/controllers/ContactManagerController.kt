package contactmanager.controllers


import contactmanager.entities.ContactEntity
import contactmanager.services.ContactManagerService
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController


@RestController
class ContactManagerController(
    val contactManagerService: ContactManagerService
) {

    @GetMapping
    fun test(): String {
        return "Hello!"
    }

    @GetMapping(path = ["/contacts"])
    fun getContacts(): List<ContactEntity> {
        return contactManagerService.getContacts()
    }

}