/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(250),
    date_of_birth  DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL
);

ALTER TABLE animals ADD COLUMN species varchar(100);

-- Add owners table
CREATE TABLE owners (
    id BIGSERIAL PRIMARY KEY,
    full_name VARCHAR(500),
    age INT
);

-- Add species table
CREATE TABLE species (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(200)
);

-- Add vets table
CREATE TABLE vets (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(250),
    date_of_graduation DATE,
    age INT
);

CREATE TABLE specializations (
    species_id BIGINT REFERENCES species(id),
    vets_id BIGINT REFERENCES vets(id)
);


CREATE TABLE visits (
    animals_id INT,
    vets_id INT
);


ALTER TABLE animals ADD PRIMARY KEY (id);
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD species_id BIGINT REFERENCES species(id);
ALTER TABLE animals ADD owner_id BIGINT REFERENCES owners(id);

