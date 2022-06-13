# Contact Manager Requirements



## What is It


Contact Manager is web application, which helps to
organize your contacts, import and export them to use ones in your device.

Contacts can be imported and exported with next formats: VCF.

Contacs are stored in DB and contain some general details:

* Name (contact name, first name, last name)
* Any number of phones
    * Phone numbers have type (mobile, work, etc)
* Any number of e-mail addresses
* Other contaccts
* Address
* Comments
* Other (key-value)

**TODO**: think about generalize all contact types in single model.
Phone numbers, e-mail addresses, social networks contacts are in single model:
`{type, subtype, value}`.
For example: `[{"phone", "personal", "123123123"}, {"vk", null, "http://vk.com/123123"}]`.

"Other" contact data is stored in a key-value format.
It can be used to store some data, which is not supported by DB structure,
but can (and must) be imported and exported in external format, such as VCF.



## Technical Requirements


* Spring Boot
* Kotlin
* Gradle
* SQLite (mandatory), Postgres (optional)
