--
-- code pour la création des tables
--

CREATE TABLE Montre ( 
id_montre uuid default uuid_generate_v4(), 
ecran varchar, 
bracelet_sup varchar, 
bracelet_inf varchar, 
boitier_sup varchar, 
boitier_inf varchar, 
commande bool, 
id_materiaux uuid, 
id_user uuid , 
PRIMARY KEY (id_montre), 
FOREIGN KEY (id_materiaux) REFERENCES materiaux (id_materiaux),
FOREIGN KEY (id_user) REFERENCES auth.users (id) 
);

CREATE TABLE Matériaux ( 
id_materiaux uuid default uuid_generate_v4(), 
libelle varchar, 
url varchar, 
PRIMARY KEY (id_materiaux) 
);

--
-- code pour la création des vues
--
CREATE VIEW allMateriaux as
SELECT *
FROM "Matériaux";

create VIEW allcuir as
select "Montre".*
from "Matériaux", "Montre"
where "Matériaux".id_materiaux = "Montre".id_materiaux
and "Matériaux"."libelle" = 'Cuir';

create VIEW allacier as
select "Montre".*
from "Matériaux", "Montre"
where "Matériaux".id_materiaux = "Montre".id_materiaux
and "Matériaux"."libelle" = 'Acier';

create VIEW allcaoutchouc as
select "Montre".*
from "Matériaux", "Montre"
where "Matériaux".id_materiaux = "Montre".id_materiaux
and "Matériaux"."libelle" = 'Caoutchouc';



--
-- code pour la création des policies
--
Matériaux :

CREATE POLICY "Enable read access for all users" ON "public"."Matériaux"
AS PERMISSIVE FOR SELECT
TO public
USING (true)

Montre : 

CREATE POLICY "Enable insert for authenticated users only" ON "public"."Montre"
AS PERMISSIVE FOR INSERT
TO authenticated

WITH CHECK (true)


CREATE POLICY "Enable read access for all users" ON "public"."Montre"
AS PERMISSIVE FOR SELECT
TO public
USING (true)


CREATE POLICY "Enable update for users based on email" ON "public"."Montre"
AS PERMISSIVE FOR UPDATE
TO public
USING ((uid() = id_user))
WITH CHECK ((uid() IN ( SELECT "Montre_1".id_user FROM "Montre" "Montre_1")))
