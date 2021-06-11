UPDATE `system` SET `value`='v0.2.0' WHERE `groupe`='module' and `name`='osteo';

ALTER TABLE `actes` ADD `active` ENUM('oui','non') NOT NULL DEFAULT 'oui' AFTER `creationDate`;


