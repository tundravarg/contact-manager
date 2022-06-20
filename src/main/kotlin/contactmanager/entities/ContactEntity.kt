package contactmanager.entities

import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.Table


@Entity
@Table(name ="contacts")
class ContactEntity {

    @Id
    @Column(name = "id")
    var id: Int? = null

    @Column(name = "name")
    var name: String? = null

    var primaryName: String? = null
    var secondaryName: String? = null
    var middleName: String? = null

}