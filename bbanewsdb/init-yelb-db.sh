#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE yelbdatabase;
    \connect yelbdatabase;
	CREATE TABLE restaurants (
    	name        char(30),
    	count       integer,
    	PRIMARY KEY (name)
	);
	INSERT INTO restaurants (name, count) VALUES ('pfizer', 0);
	INSERT INTO restaurants (name, count) VALUES ('sputnik', 0);
	INSERT INTO restaurants (name, count) VALUES ('covishield', 0);
	INSERT INTO restaurants (name, count) VALUES ('covaxin', 0);
EOSQL

