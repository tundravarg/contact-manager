package contactmanager.rest


import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController


@RestController
class CMController {

    @GetMapping
    fun test(): String {
        return "Hello!"
    }

}