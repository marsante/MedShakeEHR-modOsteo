-- Modifications des données de la bdd

UPDATE `system` SET `value`='v1.2.2' WHERE `groupe`='module' and `name`='osteo';

UPDATE `configuration` SET `cat`='Règlements' WHERE `name`='administratifSecteurHonoraires' AND `module`='osteo';