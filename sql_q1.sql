USE physicsparticle;
CREATE TABLE IF NOT EXISTS higgs (
    label TINYINT,
    feature1 DOUBLE,
    feature2 DOUBLE,
    feature3 DOUBLE,
    feature4 DOUBLE,
    feature5 DOUBLE,
    feature6 DOUBLE,
    feature7 DOUBLE,
    feature8 DOUBLE,
    feature9 DOUBLE,
    feature10 DOUBLE,
    feature11 DOUBLE,
    feature12 DOUBLE,
    feature13 DOUBLE,
    feature14 DOUBLE,
    feature15 DOUBLE,
    feature16 DOUBLE,
    feature17 DOUBLE,
    feature18 DOUBLE,
    feature19 DOUBLE,
    feature20 DOUBLE,
    feature21 DOUBLE,
    feature22 DOUBLE,
    feature23 DOUBLE,
    feature24 DOUBLE,
    feature25 DOUBLE,
    feature26 DOUBLE,
    feature27 DOUBLE,
    feature28 DOUBLE
);
SET GLOBAL local_infile = 1;
SHOW VARIABLES LIKE 'local_infile';
LOAD DATA LOCAL INFILE 'D:/archive (2)/HIGGS.csv'
INTO TABLE higgs
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(
    label,
    feature1,
    feature2,
    feature3,
    feature4,
    feature5,
    feature6,
    feature7,
    feature8,
    feature9,
    feature10,
    feature11,
    feature12,
    feature13,
    feature14,
    feature15,
    feature16,
    feature17,
    feature18,
    feature19,
    feature20,
    feature21,
    feature22,
    feature23,
    feature24,
    feature25,
    feature26,
    feature27,
    feature28
);
SELECT COUNT(*) AS total_rows
FROM higgs;
SHOW VARIABLES LIKE 'local_infile';
LOAD DATA LOCAL INFILE 'D:/archive (2)/HIGGS.csv'
INTO TABLE higgs
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';
SELECT COUNT(*) FROM higgs;
SHOW WARNINGS;
SELECT COUNT(*) AS total_rows
FROM higgs;
SHOW VARIABLES LIKE 'local_infile';
SELECT @@secure_file_priv;