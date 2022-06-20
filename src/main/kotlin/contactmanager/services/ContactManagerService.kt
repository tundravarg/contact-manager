package contactmanager.services

import contactmanager.entities.ContactEntity
import contactmanager.repositories.ContactRepository
import org.springframework.stereotype.Service


@Service
class ContactManagerService(
    val contactsRepository: ContactRepository
) {

    fun getContacts(): List<ContactEntity> {
        val result = contactsRepository.getContacts()
        return result
    }
    
}