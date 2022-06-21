import $ from "jquery"

console.log('1.0.0')
$('#version').html('1.0.0')

$.get('/api/contacts', data => {
    const contactsElement = $('#contacts');
    data.forEach(contact => {
        console.log(contact.name);
        let contactElement = $('<p>');
        contactElement.text(`${contact.name}: ${contact.primaryName} ${contact.middleName} ${contact.secondaryName}`);
        contactsElement.append(contactElement);
    });
});