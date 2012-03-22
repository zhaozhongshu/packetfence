--
-- Alter table structure for email_activation
--

ALTER TABLE email_activation
  ADD `type` varchar(60) default NULL
;

-- set all previously created entries to the guest type
-- as it was the only supported type at the time
UPDATE email_activation SET type = 'guest';
