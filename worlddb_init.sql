CREATE TABLE Areas (
	AreaID SERIAL PRIMARY KEY,
	AreaName VARCHAR(100) NOT NULL,
	Description VARCHAR(255),
	Properties JSONB -- Status,Conditions, Desceiptions
);

CREATE TABLE Skills (
	SkillID SERIAL PRIMARY KEY,
	SkillName VARCHAR(100) NOT NULL,
	Description VARCHAR(255)
);

CREATE TABLE Items (
	ItemID SERIAL PRIMARY KEY,
	ItemName VARCHAR(25) NOT NULL,
	Description VARCHAR(255),
	ItemValue INT,
	ItemType VARCHAR(25) -- Make domain
);

CREATE TABLE Sources (
	SourceID SERIAL PRIMARY KEY,
	SourceName VARCHAR(100) NOT NULL,
	SourceType VARCHAR(100), -- Not domain
	Description VARCHAR(255),
	ReqSkill LONG REFERENCES Skills(SkillID),
	BaseTool LONG REFERENCES Items(ItemID),
	MinLevel INT,
	RespawnTimeSec DOUBLE,
	Properties JSONB -- Weakness Descriptions
);

