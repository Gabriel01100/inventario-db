

CREATE OR REPLACE FUNCTION update_modification_date()
RETURNS TRIGGER AS $$
BEGIN
    NEW.modification_date = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger sobre tabla productos
DROP TRIGGER IF EXISTS trigger_update_fecha ON productos;

CREATE TRIGGER trigger_update_fecha
BEFORE UPDATE ON productos
FOR EACH ROW
EXECUTE FUNCTION update_modification_date();
