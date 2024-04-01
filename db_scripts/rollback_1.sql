ALTER TABLE musician RENAME TO singer;


DROP TABLE band;


ALTER TABLE singer
DROP COLUMN role, DROP COLUMN bandName;



ALTER TABLE singer RENAME COLUMN musicianName to singerName;