-- atila_Modifiers
-- Author: sb
-- DateCreated: 5/10/2020 9:19:25 PM
--------------------------------------------------------------

--սʱ������λ����
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
("TRAIT_LEADER_WENMINGHUIMIE", "SHENGCHAN_JIASU_INWAR");

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
("SHENGCHAN_JIASU_INWAR", "MODIFIER_PLAYER_CITIES_ADJUST_UNIT_PRODUCTION_MODIFIER", 0, 0, 0, "Atila_PLAYER_IN_WAR", NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("SHENGCHAN_JIASU_INWAR", "Amount", 100);

-- Single Conditions

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
("Atila_PLAYER_IN_WAR", "REQUIREMENT_PLAYER_IS_AT_WAR");

-- Conditions Group

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
("Atila_PLAYER_IN_WAR", "REQUIREMENTSET_TEST_ALL");

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
("Atila_PLAYER_IN_WAR", "Atila_PLAYER_IN_WAR");


--�����������10��

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
("TRAIT_LEADER_WENMINGHUIMIE", "Atila_MODIFIER_CHENGSHI");

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
("Atila_MODIFIER_CHENGSHI", "MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER", 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("Atila_MODIFIER_CHENGSHI", "ModifierId", "Atila_CHENGSHI");

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
("Atila_CHENGSHI", "MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH", 0, 0, 0, NULL, "SIEGE_LASER_STRENGTH_REQUIREMENTS");

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("Atila_CHENGSHI", "Amount", 10);

--û����ս����

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
("TRAIT_LEADER_WENMINGHUIMIE", "Atila_YANZHAN");

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
("Atila_YANZHAN", "MODIFIER_PLAYER_ADJUST_WAR_WEARINESS", 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("Atila_YANZHAN", "Amount", -100), 
("Atila_YANZHAN", "Overall", "true");

-- ��λ���+4--testt?---Ϊʲô�ڶ�����ʼ�����������Ծ�ʧЧ���������˶�����--����, Modifiers�Ķ�ÿ�ζ�Ҫ���µ�, ����
--INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
--("TRAIT_LEADER_WENMINGHUIMIE", "MODIFIER_FATE_EMIYA_UNITS_ATTACK_RANGE");?
--INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
--("MODIFIER_FATE_EMIYA_UNITS_ATTACK_RANGE", "MODIFIER_PLAYER_UNITS_ADJUST_ATTACK_RANGE", 0, 0, 0, NULL, NULL);?
--INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
--("MODIFIER_FATE_EMIYA_UNITS_ATTACK_RANGE", "Amount", 4);?