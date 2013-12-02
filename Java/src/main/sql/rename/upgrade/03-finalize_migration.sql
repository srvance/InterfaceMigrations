USE test;

DROP TRIGGER ins_renamecol;

DROP TRIGGER upd_renamecol;

ALTER TABLE renamecol DROP COLUMN old;

ALTER TABLE renamecol
MODIFY new VARCHAR (128) NOT NULL;