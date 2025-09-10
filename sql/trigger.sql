CREATE OR REPLACE FUNCTION update_date_modification()
RETURNS TRIGGER AS $$
BEGIN
    NEW.modification_date = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_update_fecha
BEFORE UPDATE ON productos
FOR EACH ROW
EXECUTE FUNCTION update_date_modification();
