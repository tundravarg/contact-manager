package contactmanager.repositories


import contactmanager.entities.ContactEntity
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository


interface ContactRepository: CrudRepository<ContactEntity, Int> {

    @Query("FROM ContactEntity")
    fun getContacts(): List<ContactEntity>

}