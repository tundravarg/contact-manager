INSERT INTO "contacts" (
    "name", "primary_name", "secondary_name", "middle_name"
) VALUES
    ('Sergey', 'Sergey', 'Tumanov', 'Gennadyevich'),
    ('IvanP', 'Ivan', 'Petrov', 'Ignatyevich'),
    ('Director', 'Andrey', 'Repin', 'Mihailovich')
;


INSERT INTO contact_values (
    type, subtype, value
) VALUES
    ('PHONE', 'PERSONAL', '+79215576152'),
    ('EMAIL', 'PERSONAL', 'tumanser@gmail.com'),
    ('VK', NULL, 'https://vk.com/tumanser')
;

INSERT INTO contact_values_link (
    contact_id, value_id
) VALUES
    (
        (SELECT id FROM contacts WHERE name = 'Sergey'),
        (SELECT seq - 2 FROM sqlite_sequence WHERE name = 'contact_values')
    ),
    (
        (SELECT id FROM contacts WHERE name = 'Sergey'),
        (SELECT seq - 1 FROM sqlite_sequence WHERE name = 'contact_values')
    ),
    (
        (SELECT id FROM contacts WHERE name = 'Sergey'),
        (SELECT seq - 0 FROM sqlite_sequence WHERE name = 'contact_values')
    )
;

INSERT INTO contact_values (
    type, subtype, value
) VALUES
      ('PHONE', 'PERSONAL', '+1123456789'),
      ('PHONE', 'WORK', '+7123456789'),
      ('EMAIL', 'WORK', 'ivanp@gmail.com')
;

INSERT INTO contact_values_link (
    contact_id, value_id
) VALUES
      (
          (SELECT id FROM contacts WHERE name = 'IvanP'),
          (SELECT seq - 1 FROM sqlite_sequence WHERE name = 'contact_values')
      ),
      (
          (SELECT id FROM contacts WHERE name = 'IvanP'),
          (SELECT seq - 0 FROM sqlite_sequence WHERE name = 'contact_values')
      )
;