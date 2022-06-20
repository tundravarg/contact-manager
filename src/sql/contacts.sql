SELECT c.*, v.*
FROM "contacts" AS c
LEFT JOIN contact_values_link AS cvl ON cvl.contact_id = c.id
LEFT JOIN contact_values AS v ON v.id = cvl.value_id
ORDER BY c.name, v.type, v.subtype, v.value
;