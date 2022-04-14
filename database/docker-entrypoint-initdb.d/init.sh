set -e
psql -U admin admin << EOSQL
CREATE TABLE user_info(
  user_id int NOT NULL,
  user_name text NOT NULL,
  login_name text NOT NULL,
  pass text NOT NULL,
  CONSTRAINT pk_user PRIMARY KEY (user_id)
);

EOSQL

psql -U admin admin << EOSQL
CREATE TABLE chat_message
(
message_id int NOT NULL primary key,
from_user_id int NOT NULL references user_info(user_id),
to_user_id int NOT NULL references user_info(user_id),
message_text NOT NULL text,
sent_datetime NOT NULL text
);

EOSQL