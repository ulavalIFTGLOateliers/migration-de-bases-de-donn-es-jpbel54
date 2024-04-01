
ALTER TABLE singer RENAME TO musician;


CREATE TABLE band
(bandName VARCHAR(50), creation YEAR, genre VARCHAR(50),
PRIMARY KEY (bandName));

INSERT INTO band (bandName, creation, genre) VALUES
('Crazy Duo', 2015, 'rock'),
('Luna', 2009, 'classical'),
('Mysterio', 2019, 'pop');

ALTER TABLE musician
ADD COLUMN role VARCHAR(50),
ADD COLUMN bandName VARCHAR(50);

UPDATE musician SET role = 'vocals', bandName = 'Crazy Duo' WHERE singerName = 'Alina';
UPDATE musician SET role = 'guitar', bandName = 'Mysterio' WHERE singerName = 'Mysterio';
UPDATE musician SET role = 'percussion', bandName = 'Crazy Duo' WHERE singerName = 'Rainbow';
UPDATE musician SET role = 'piano', bandName = 'Luna' WHERE singerName = 'Luna';

ALTER TABLE musician RENAME COLUMN singerName to musicianName;
