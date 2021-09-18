SELECT AddGeometryColumn('geoms', 'the_geom', 25830, 'MULTIPOLYGON', 2 );

Trigger sup. ha

      BEGIN
        IF (TG_OP = 'INSERT') THEN
          NEW.supha := area(NEW.the_geom)/10000;
        ELSIF (TG_OP = 'UPDATE') THEN
          IF NOT (NEW.the_geom ~= OLD.the_geom) THEN
            NEW.supha := area(NEW.the_geom)/10000;
          END IF;
        END IF;
      RETURN NEW;
      END;
