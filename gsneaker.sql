CREATE TABLE "USERNAME" (
	"email" varchar(50),
	"pass" varchar(256) NOT NULL,
	"firstName" varchar(256) NOT NULL,
	"lastName" varchar(256) NOT NULL,
	"address_province" varchar(256),
	"address_district" varchar(256),
	"address_ward" varchar(256),
	"address_no" varchar(256),
	"roleUser" varchar(256) NOT NULL,
	"methodFA" varchar(256),
	"verified" boolean DEFAULT FALSE,
	CONSTRAINT USERNAME_PK PRIMARY KEY("email")
);

CREATE TABLE "PRODUCTS" (
	"productID" INT,
	"image" VARCHAR(512),
    "name" VARCHAR(512),
    "description" VARCHAR(512),
    "price"	REAL,
    "color"	VARCHAR(512),
	CONSTRAINT PRODUCTS_PK PRIMARY KEY("productID")
);

CREATE TABLE "ORDERS" (
	"orderID" INT GENERATED ALWAYS AS IDENTITY,
	"customerID" VARCHAR(256),
	"totalPrice" REAL,
	CONSTRAINT ORDERS_PK PRIMARY KEY("orderID")
);

CREATE TABLE "DETAILORDERS" (
	"orderID" INT,
	"productID" INT,
	"quantity" INT,
	CONSTRAINT DETAILORDERS_PK PRIMARY KEY("orderID", "productID")
);

ALTER TABLE "DETAILORDERS"
ADD CONSTRAINT "FK_DETAILORDERS_ORDERS"
FOREIGN KEY ("orderID") 
REFERENCES "ORDERS" ("orderID");

ALTER TABLE "DETAILORDERS"
ADD CONSTRAINT "FK_DETAILORDERS_PRODUCTS"
FOREIGN KEY ("orderID") 
REFERENCES "PRODUCTS" ("productID");

ALTER TABLE "ORDERS"
ADD CONSTRAINT "FK_ORDERS_USERNAME"
FOREIGN KEY ("customerID") 
REFERENCES "USERNAME" ("email");

INSERT INTO "PRODUCTS" ("productID", "image", "name", "description", "price", "color") VALUES ('1', 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/air-zoom-pegasus-36-mens-running-shoe-wide-D24Mcz-removebg-preview.png', 'Nike Air Zoom Pegasus 36', 'The iconic Nike Air Zoom Pegasus 36 offers more cooling and mesh that targets breathability across high-heat areas. A slimmer heel collar and tongue reduce bulk, while exposed cables give you a snug fit at higher speeds.', 108.97, '#e1e7ed');
INSERT INTO "PRODUCTS" ("productID", "image", "name", "description", "price", "color") VALUES ('2', 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/air-zoom-pegasus-36-shield-mens-running-shoe-24FBGb__1_-removebg-preview.png', 'Nike Air Zoom Pegasus 36 Shield', 'The Nike Air Zoom Pegasus 36 Shield gets updated to conquer wet routes. A water-repellent upper combines with an outsole that helps create grip on wet surfaces, letting you run in confidence despite the weather.', 89.97, '#4D317F');
INSERT INTO "PRODUCTS" ("productID", "image", "name", "description", "price", "color") VALUES ('3', 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/cruzrone-unisex-shoe-T2rRwS-removebg-preview.png', 'Nike CruzrOne', 'Designed for steady, easy-paced movement, the Nike CruzrOne keeps you going. Its rocker-shaped sole and plush, lightweight cushioning let you move naturally and comfortably. The padded collar is lined with soft wool, adding luxury to every step, while mesh details let your foot breathe. There’s no finish line—there’s only you, one step after the next.', 100.97, '#E8D026');
INSERT INTO "PRODUCTS" ("productID", "image", "name", "description", "price", "color") VALUES ('4', 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/epic-react-flyknit-2-mens-running-shoe-2S0Cn1-removebg-preview.png', 'Nike Epic React Flyknit 2', 'The Nike Epic React Flyknit 2 takes a step up from its predecessor with smooth, lightweight performance and a bold look. An updated Flyknit upper conforms to your foot with a minimal, supportive design. Underfoot, durable Nike React technology defies the odds by being both soft and responsive, for comfort that lasts as long as you can run.', 89.97, '#FD584A');
INSERT INTO "PRODUCTS" ("productID", "image", "name", "description", "price", "color") VALUES ('5', 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/odyssey-react-flyknit-2-mens-running-shoe-T3VG7N-removebg-preview.png', 'Nike Odyssey React Flyknit 2', 'The Nike Odyssey React Flyknit 2 provides a strategic combination of lightweight Flyknit construction and synthetic material for support. Underfoot, Nike React cushioning delivers a soft, springy ride for a route that begs to be crushed.', 71.97, '#D4D7D6');
INSERT INTO "PRODUCTS" ("productID", "image", "name", "description", "price", "color") VALUES ('6', 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/react-infinity-run-flyknit-mens-running-shoe-RQ484B__2_-removebg-preview.png', 'Nike React Infinity Run Flyknit', 'A pioneer in the running shoe frontier honors the original pioneer of running culture with the Nike React Infinity Run Flyknit. Blue Ribbon Track Club-inspired details pay homage to the haven that was created before running was even popular. This running shoe is designed to help reduce injury and keep you on the run. More foam and improved upper details provide a secure and cushioned feel.', 160, '#F2F5F4');
INSERT INTO "PRODUCTS" ("productID", "image", "name", "description", "price", "color") VALUES ('7', 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/react-miler-mens-running-shoe-DgF6nr-removebg-preview.png', 'Nike React Miler', 'The Nike React Miler gives you trusted stability for miles with athlete-informed performance. Made for dependability on your long runs, its intuitive design offers a locked-in fit and a durable feel.', 130, '#22AFDC');
INSERT INTO "PRODUCTS" ("productID", "image", "name", "description", "price", "color") VALUES ('8', 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/renew-ride-mens-running-shoe-JkhdfR-removebg-preview.png', 'Nike Renew Ride', 'The Nike Renew Ride helps keep the committed runner moving with plush cushioning. Firm support at the outsole helps you maintain stability no matter the distance.', 60.97, '#B50320');
INSERT INTO "PRODUCTS" ("productID", "image", "name", "description", "price", "color") VALUES ('9', 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/vaporfly-4-flyknit-running-shoe-v7G3FB-removebg-preview.png', 'Nike Vaporfly 4% Flyknit', 'Built to meet the exacting needs of world-class marathoners, Nike Vaporfly 4% Flyknit is designed for record-breaking speed. The Flyknit upper delivers breathable support, while the responsive foam and full-length plate provide incredible energy return for all 26.2.', 187.97, '#3569A1');
INSERT INTO "PRODUCTS" ("productID", "image", "name", "description", "price", "color") VALUES ('10', 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/zoom-fly-3-premium-mens-running-shoe-XhzpPH-removebg-preview.png', 'Nike Zoom Fly 3 Premium', 'Inspired by the Vaporfly, the Nike Zoom Fly 3 Premium gives distance runners race-day comfort and durability. The power of a carbon fiber plate keeps you in the running mile after mile.', 160, '#54D4C9');