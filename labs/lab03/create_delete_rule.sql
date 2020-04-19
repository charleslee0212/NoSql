CREATE RULE delete_venues AS ON DELETE TO venues DO INSTEAD
UPDATE venues
SET active = FALSE
WHERE venue_id = OLD.venue_id;
