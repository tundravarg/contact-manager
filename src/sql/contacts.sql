---- Enable FKs
PRAGMA foreign_keys = ON;


---- Select Contacts

SELECT * -- c.*, v.*
FROM "contacts" AS c
LEFT JOIN contact_values_link AS cvl ON cvl.contact_id = c.id
LEFT JOIN contact_values AS v ON v.id = cvl.value_id
ORDER BY c.name, v.type, v.subtype, v.value
;


---- Find and remove duplicates

WITH
    vcount AS (
        SELECT *, count(id) AS c, max(id) AS maxid
        FROM contact_values
        GROUP BY type, subtype, value
        HAVING c > 1
    ),
    todel AS (
        SELECT v.id
        FROM contact_values AS v
        JOIN vcount ON
            coalesce(vcount.type, '--NULL--') = coalesce(v.type, '--NULL--')
            AND coalesce(vcount.subtype, '--NULL--') = coalesce(v.subtype, '--NULL--')
            AND coalesce(vcount.value, '--NULL--') = coalesce(v.value, '--NULL--')
        WHERE v.id != vcount.maxid
        ORDER BY v.type, v.subtype, v.value
    )
-- SELECT * FROM todel
-- DELETE FROM contact_values_link WHERE value_id IN todel
DELETE FROM contact_values WHERE id IN todel
;


---- Find and remove broken links

WITH
    todel AS (
        SELECT cvl.*
        FROM contact_values_link cvl
                 LEFT JOIN contact_values v ON v.id = cvl.value_id
        WHERE v.id IS NULL
    )
SELECT * FROM todel
-- DELETE FROM contact_values_link WHERE (contact_id, value_id) IN todel
;
