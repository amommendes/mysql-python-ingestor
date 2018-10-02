USE tubos_cognitivo;
CREATE TABLE tubos_cognitivo.bill (
    tube_assembly_id VARCHAR(255) NOT NULL,
	PRIMARY KEY(tube_assembly_id),
	component_id_1 VARCHAR(255) ,
	quantity_1 INTEGER,
	component_id_2 VARCHAR(255),
	quantity_2 INTEGER,
	component_id_3 VARCHAR(255) ,
	quantity_3 INTEGER,
	component_id_4 VARCHAR(255),
	quantity_4 INTEGER,
	component_id_5 VARCHAR(255),
	quantity_5 INTEGER,
	component_id_6 VARCHAR(255),
	quantity_6 INTEGER,
	component_id_7 VARCHAR(255),
	quantity_7 INTEGER,
	component_id_8 VARCHAR(255) ,
	quantity_8 INTEGER
);

CREATE TABLE tubos_cognitivo.price_quote (
    tube_assembly_id VARCHAR(255) NOT NULL,
	FOREIGN KEY (tube_assembly_id) REFERENCES tubos_cognitivo.bill(tube_assembly_id),
	supplier VARCHAR(255) NOT NULL,
	quote_date DATE,
	annual_usage NUMERIC,
	min_order_quantit NUMERIC,
	bracket_pricing VARCHAR(3),
	quantity NUMERIC ,
	cost float
);

CREATE TABLE tubos_cognitivo.components (
    component_id VARCHAR(255) NOT NULL ,
	PRIMARY KEY(component_id), 
	component_type_id VARCHAR(255) NOT NULL ,
	type VARCHAR(255) ,
	connection_type_id VARCHAR(255) ,
	outside_shape VARCHAR(255) ,
	base_type VARCHAR(255) ,
	height_over_tube NUMERIC ,
	bolt_pattern_long NUMERIC ,
	bolt_pattern_wide NUMERIC ,
	groove VARCHAR(3) ,
	base_diameter NUMERIC ,
	shoulder_diameter NUMERIC ,
	unique_feature VARCHAR(3) ,
	orientation VARCHAR(3) ,
	weight float );
