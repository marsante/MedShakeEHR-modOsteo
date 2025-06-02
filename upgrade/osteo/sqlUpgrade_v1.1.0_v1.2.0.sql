-- Modifications des données de la bdd

UPDATE `system` SET `value`='v1.2.0' WHERE `groupe`='module' and `name`='osteo';

-- Suppression de la configuration 'administratifSecteurHonoraires
DELETE FROM `configuration` WHERE `name` = 'administratifSecteurHonoraires' AND `module` = 'osteo';
