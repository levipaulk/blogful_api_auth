BEGIN;

TRUNCATE
  blogful_comments,
  blogful_articles,
  blogful_users
  RESTART IDENTITY CASCADE;

INSERT INTO blogful_users (user_name, full_name, nickname, password)
VALUES
  ('dunder', 'Dunder Mifflin', null, '$2a$12$dkVuak6OQ3l2Cr2MwfPTzuwaKIjSU06cshHJ6a2fHCJ.wLP/g9pdu'),
  ('b.deboop', 'Bodeep Deboop', 'Bo', '$2a$12$hbgTi1XvHR.jM/KWf/KLbuPpQggU0XkMZqv1ue.vajtVSQ13OVxo6'),
  ('c.bloggs', 'Charlie Bloggs', 'Charlie', '$2a$12$8h4mR.hzLBxRIS3eE7Cdcesd/AZyrT8wFgMSEvfSGxhKfQSYyAgly'),
  ('s.smith', 'Sam Smith', 'Sam', '$2a$12$fE0j9vlPH1vgebVrvTTOYeW6XU56vQjFHFzaN70LkL/IQSuAX8FH.'),
  ('lexlor', 'Alex Taylor', 'Lex', '$2a$12$0xe1XtxM7YT9MkyLW/EwUu4hpccXV9I8uAfQtKdfVXWbnaJbDlgha'),
  ('wippy', 'Ping Won In', 'Ping', '$2a$12$TbIKyI2qqTPiIuINP9vEzuuXi2xqkDnNHegfsLMY0U0KKt8lnd3vW');

INSERT INTO blogful_articles (title, style, author_id, content)
VALUES
  ('First post!', 'Interview', 1,
    'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus consequuntur deserunt commodi, nobis qui inventore corrupti iusto aliquid debitis unde non. Adipisci, pariatur. Molestiae, libero esse hic adipisci autem neque?'),
  ('Second post!', 'How-to', 2,
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum, exercitationem cupiditate dignissimos est perspiciatis, nobis commodi alias saepe atque facilis labore sequi deleniti. Sint, adipisci facere! Velit temporibus debitis rerum.'),
  ('Third post!', 'News', 3,
    'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, voluptate? Necessitatibus, reiciendis? Cupiditate totam laborum esse animi ratione ipsa dignissimos laboriosam eos similique cumque. Est nostrum esse porro id quaerat.'),
  ('Fourth post', 'How-to', 4,
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero, consequuntur. Cum quo ea vero, fugiat dolor labore harum aut reprehenderit totam dolores hic quaerat, est, quia similique! Aspernatur, quis nihil?'),
  ('Fifth post', 'News', 5,
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Amet soluta fugiat itaque recusandae rerum sed nobis. Excepturi voluptas nisi, labore officia, nobis repellat rem ab tempora, laboriosam odio reiciendis placeat?'),
  ('Sixth post', 'Listicle', 6,
    'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  ('Seventh post', 'Listicle', 1,
    'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed, voluptatum nam culpa minus dolore ex nisi recusandae autem ipsa assumenda doloribus itaque? Quos enim itaque error fuga quaerat nesciunt ut?'),
  ('Eigth post', 'News', 2,
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Consequatur sequi sint beatae obcaecati voluptas veniam amet adipisci perferendis quo illum, dignissimos aspernatur ratione iusto, culpa quam neque impedit atque doloribus!'),
  ('Ninth post', 'Story', 3,
    'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dignissimos architecto repellat, in amet soluta exercitationem perferendis eius perspiciatis praesentium voluptate nisi deleniti eaque? Rerum ea quisquam dolore, non error earum?'),
  ( 'Tenth post', 'How-to', 4,
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum molestiae accusamus veniam consectetur tempora, corporis obcaecati ad nisi asperiores tenetur, autem magnam. Iste, architecto obcaecati tenetur quidem voluptatum ipsa quam?');

INSERT INTO blogful_comments (
  text,
  article_id,
  user_id
) VALUES
  (
    'This post is amazing',
    1,
    2
  ),
  (
    'Yeh I agree it''s amazing',
    1,
    3
  ),
  (
    'I would go so far as to say it''s double amazing',
    1,
    4
  ),
  (
    'A-mazing!',
    1,
    5
  ),
  (
    'That''s some interesting lorems you raise',
    2,
    6
  ),
  (
    'Yeh totally I''d never thought about lorems like that before',
    2,
    1
  ),
  (
    'So you''re saying consectetur adipisicing elit?',
    2,
    3
  ),
  (
    'Sixth? You mean sith?!!',
    4,
    6
  ),
  (
    'What do you call an evil procrastinator? Darth Later! Hahahahaha!',
    4,
    4
  ),
  (
    'Ten ten ten ten ten ten ten!',
    10,
    3
  ),
  (
    'Iste, architecto obcaecati tenetur quidem voluptatum ipsa quam!!!',
    10,
    5
  ),
  (
    '5, 6, 7, 8! My boot-scootin'' baby is drivin'' me crazy...!',
    7,
    1
  ),
  (
    'My obsession from a western! My dance floor date',
    7,
    2
  ),
  (
    'My rodeo Romeo. A cowboy god from head to toe',
    7,
    3
  ),
  (
    'Wanna make you mine. Better get in line. 5, 6, 7, 8!',
    7,
    4
  ),
  (
    'Just a lonely comment',
    9,
    6
  ),
  (
    'Really? Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris??!',
    6,
    5
  ),
  (
    'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris for sure!!',
    6,
    1
  ),
  (
    'WOAH!!!!!',
    8,
    2
  ),
  (
    '°º¤ø,¸¸,ø¤º°`°º¤ø,¸,ø¤°º¤ø,¸¸,ø¤º°`°º¤ø,¸',
    8,
    4
  );

COMMIT;