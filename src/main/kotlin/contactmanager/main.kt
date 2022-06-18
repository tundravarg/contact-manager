package contactmanager


import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication


fun main(args: Array<String>) {
    runApplication<ContactManagerApplication>(*args)
}


@SpringBootApplication
open class ContactManagerApplication