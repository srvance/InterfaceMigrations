USE test;

DROP TRIGGER upd_renamecol;
DROP TRIGGER ins_renamecol;

ALTER TABLE renamecol DROP COLUMN new;

ALTER TABLE renamecol
MODIFY old VARCHAR (128) NOT NULL;