USE test;

ALTER TABLE renamecol
ADD old VARCHAR (128) NOT NULL DEFAULT '--DEFAULT--';

ALTER TABLE renamecol
MODIFY new VARCHAR (128) NOT NULL DEFAULT '--DEFAULT--';

UPDATE renamecol SET old = new;

delimiter //

CREATE TRIGGER ins_renamecol BEFORE INSERT ON renamecol
FOR EACH ROW
  BEGIN
    IF NEW.old = '--DEFAULT--' THEN
      SET NEW.old = NEW.new;
    ELSEIF NEW.new = '--DEFAULT--' THEN
      SET NEW.new = NEW.old;
    END IF;
  END;//

CREATE TRIGGER upd_renamecol BEFORE UPDATE ON renamecol
FOR EACH ROW
  BEGIN
    IF OLD.old <> NEW.old THEN
      SET NEW.new = NEW.old;
    ELSEIF OLD.new <> NEW.new THEN
      SET NEW.old = NEW.new;
    END IF;
  END;//

delimiter ;