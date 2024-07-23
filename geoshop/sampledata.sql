
-- Demo user for the extract
-- Password is "5%G*1jA^BpJDiEpi"

-- Users
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (3, 'pbkdf2_sha256$390000$kkIank13o1Zxh1vCjYQuRH$ovoMv1xtB+bFvOgHV0kJ9b2hIgjTnzR2PZiOj+t9KUk=', '2024-07-16 11:46:20+00', false, 'extract', 'First name', 'Last name', 'extract@extract.com', false, true, '2024-07-16 08:43:08+00');
INSERT INTO auth_user_groups (user_id, group_id) SELECT u.id, g.id FROM auth_user u, auth_group g WHERE u.username = 'extract' AND g.name = 'extract';
INSERT INTO identity (first_name, last_name, street, street2, postcode, city, country, company_name, phone, is_public, subscribed, email, user_id) SELECT 'Extract I', 'Dentity', 'Street', '', '', '', '', '', '', true, false, 'testail@mailhog.com', u.id FROM auth_user u WHERE u.username = 'extract';

INSERT INTO document (id, name, link) VALUES (1, 'Demo document', 'https://katalog.geo.gr.ch/geoviewer/geoviewer.php?url=wms.geo.gr.ch/naturgefahrenkarte&layers=WMS_Naturgefahrenkarte&bbox=2768000,1135000,2775000,1139000');
INSERT INTO metadata (id, id_name, name, description_long, scale, geocat_link, legend_link, image_link, modified_date, copyright_id, modified_user_id, datasource, accessibility, data_last_update_date, genealogy, update_frequency, ech_category_id, geoportal_link, wms_link) VALUES (1, 'Demo document 1', 'Demo document 1', '', '', '', 'https://wms.geo.gr.ch/naturgefahrenkarte?version=1.3.0&service=WMS&request=GetLegendGraphic&LAYERTITLE=FALSE&Itemfontsize=10&sld_version=1.1.0&layer=Erfassungsbereiche_&format=image/png&STYLE=default&TRANSPARENT=true', 'https://www.gr.ch/DE/institutionen/verwaltung/diem/awn/PublishingImages/4_2_0_1_gk.jpg', '2024-06-26 09:21:13.955912+00', NULL, 3, 'https://wms.geo.gr.ch/naturgefahrenkarte', 'PUBLIC', '2024-06-26', '', '', 11, '', 'https://wms.geo.gr.ch/naturgefahrenkarte');
INSERT INTO metadata (id, id_name, name, description_long, scale, geocat_link, legend_link, image_link, modified_date, copyright_id, modified_user_id, datasource, accessibility, data_last_update_date, genealogy, update_frequency, ech_category_id, geoportal_link, wms_link) VALUES (2, 'Demo document 2', 'Demo document 2', 'Die Gewässerschutzkarte enthält die rechtsgültigen Informationen über die Gewässerschutzbereiche, Grundwasserschutzzonen, Standorte der Quellen und Grundwasserfassungen.', '', 'https://katalog.geo.gr.ch/gis-tools/gdds/inventar/detailinventar.php', 'https://edit.geo.gr.ch/mapserv_proxy?ogcserver=Kanton+Graub%C3%BCnden%2C+Gewaesserschutzkarte&cache_version=285c6863f32142fb8be42c867bcb0c96&FORMAT=image%2Fpng&TRANSPARENT=true&SERVICE=WMS&VERSION=1.1.1&REQUEST=GetLegendGraphic&LAYERTITLE=FALSE&Itemfontsize=10&LAYER=Grundwasserschutzzonen_rechtskraeftig&SCALE=99999.79999999997', 'https://katalog.geo.gr.ch/gis-tools/gdds/inventar/showImageFromBlob.php?sesid=am6ho6hlnoh6eujm7dg81u9r73&table=geodaten&id=1', '2024-07-05 07:31:47.555218+00', NULL, 3, 'http://map.geo.gr.ch/geoviewer/geoviewer.php?url=wms.geo.gr.ch/gewaesserschutz&layers=WMS_Gewaesserschutz&bbox=768000,135000,775000,139000', 'PUBLIC', NULL, '', '', 14, 'https://edit.geo.gr.ch/theme/Gewaesserschutz?lang=en&tree_groups=Gewaesserschutz.Basisinfo%2CGewaesserschutz.Grundwasserfassungen_und_Quellen_%2CGewaesserschutz.Grundwasserschutzzonen%2CGewaesserschutz.Gewaesserschutzbereiche%2CGewaesserschutz.Karstgebiete%2CGewaesserschutz.Amtliche_Vermessung&tree_group_layers_Gewaesserschutz.Basisinfo=Gewaesserschutz.Ortschaften&tree_group_layers_Gewaesserschutz.Grundwasserfassungen_und_Quellen_=Gewaesserschutz.Grundwasserfassungen_und_Quellen&tree_group_layers_Gewaesserschutz.Grundwasserschutzzonen=Gewaesserschutz.Grundwasserschutzzonen_rechtskraeftig%2CGewaesserschutz.Grundwasserschutzzonen_provisorisch%2CGewaesserschutz.Grundwasserschutzareal_rechtskraeftig%2CGewaesserschutz.Grundwasserschutzareal_provisorisch&tree_group_layers_Gewaesserschutz.Gewaesserschutzbereiche=Gewaesserschutz.Gewaesserschutzbereich_Ao%2CGewaesserschutz.Gewaesserschutzbereich_Au&tree_group_layers_Gewaesserschutz.Karstgebiete=Gewaesserschutz.Karst&tree_group_layers_Gewaesserschutz.Amtliche_Vermessung=Gewaesserschutz.Grundstuecksnummer%2CGewaesserschutz.Liegenschaften&baselayer_ref=blank&map_x=2758624&map_y=1167415&map_zoom=3', 'https://edit.geo.gr.ch/mapserv_proxy?ogcserver=Kanton+Graub%C3%BCnden%2C+Gewaesserschutzkarte&cache_version=285c6863f32142fb8be42c867bcb0c96&FORMAT=image%2Fpng&TRANSPARENT=true&SERVICE=WMS&VERSION=1.1.1&REQUEST=GetLegendGraphic&LAYERTITLE=FALSE&Itemfontsize=10&LAYER=Gewaesserschutzbereich_Au&SCALE=99999.79999999997');

INSERT INTO contact (id, first_name, last_name, email, street, street2, postcode, city, country, company_name, phone, belongs_to_id, sap_id, subscribed, is_active) VALUES (1, 'Demo contact', 'Demo contact', '', '', '', '', '', '', '', '', 3, NULL, false, true);

-- Products
INSERT INTO geoshop.data_format (id, name) VALUES (1, 'WMS');
INSERT INTO geoshop.data_format (id, name) VALUES (2, 'other data');

INSERT INTO pricing (id, name, pricing_type, base_fee_currency, base_fee, min_price_currency, min_price, max_price_currency, max_price, unit_price_currency, unit_price) VALUES (1, 'Free', 'FREE', 'CHF', NULL, 'CHF', NULL, 'CHF', NULL, 'CHF', NULL);

INSERT INTO product (id, label, "order", ts, group_id, metadata_id, pricing_id, thumbnail_link, provider_id, free_when_subscribed, geom, product_status) 
SELECT 1, 'Product 1', NULL, NULL, NULL, 1, 1, 'http://link', u.id, false, '01060000200808000001000000010300000001000000050000005FD6E219CB944541856D5BDBB66730415E80DD19CB944541A8CD5C5241D5334169B0B3C606F542419AE36A5241D5334173BEB6C606F542418CFD66DBB66730415FD6E219CB944541856D5BDBB6673041', 'PUBLISHED'
FROM auth_user u WHERE u.username = 'extract';

INSERT INTO product (id, label, "order", ts, group_id, metadata_id, pricing_id, thumbnail_link, provider_id, free_when_subscribed, geom, product_status) 
SELECT 2, 'Product 2', NULL, NULL, 2, 2, 1, 'http://link', u.id, false, '010600002008080000010000000103000000010000000500000067B3491ACB9445410A7367DCB667304146B1391ACB9445416C647D5341D53341B5C3ECC606F5424156A6A75341D53341D1EDF5C606F5424102238ADCB667304167B3491ACB9445410A7367DCB6673041', 'PUBLISHED'
FROM auth_user u WHERE u.username = 'extract';

INSERT INTO product_format (id, is_manual, data_format_id, product_id) VALUES (1, false, 1, 1);
INSERT INTO product_format (id, is_manual, data_format_id, product_id) VALUES (2, false, 2, 1);
INSERT INTO product_format (id, is_manual, data_format_id, product_id) VALUES (4, false, 1, 2);
INSERT INTO product_format (id, is_manual, data_format_id, product_id) VALUES (5, false, 2, 2);

-- Orders
INSERT INTO order_type (id, name) VALUES (1, 'Demo order type 1');
INSERT INTO order_type (id, name) VALUES (2, 'Demo order type 2');
