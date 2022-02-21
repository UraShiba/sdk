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