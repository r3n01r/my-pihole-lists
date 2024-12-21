/* WARNING: Script requires that SQLITE_DBCONFIG_DEFENSIVE be disabled */
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
DROP TABLE IF EXISTS 'domainlist_by_group';
DROP TABLE IF EXISTS 'group';
DROP TABLE IF EXISTS 'domainlist';
DROP TABLE IF EXISTS 'adlist';
CREATE TABLE IF NOT EXISTS "group"
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    enabled BOOLEAN NOT NULL DEFAULT 1,
    name TEXT UNIQUE NOT NULL,
    date_added INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    date_modified INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    description TEXT
);
INSERT INTO "group" VALUES(0,1,'Default',1645531842,1645531842,'The default group');
CREATE TABLE domainlist
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type INTEGER NOT NULL DEFAULT 0,
    domain TEXT NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT 1,
    date_added INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    date_modified INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    comment TEXT,
    UNIQUE(domain, type)
);
INSERT INTO domainlist VALUES(1,0,'s.youtube.com',1,1645532946,1645863402,NULL);
INSERT INTO domainlist VALUES(2,1,'browser.sentry-cdn.com',1,1645532955,1645532955,NULL);
INSERT INTO domainlist VALUES(3,0,'gpm.samsungqbe.com',1,1645734810,1645734810,NULL);
INSERT INTO domainlist VALUES(4,3,'(\.|^)josephantecedentsick\.com$',1,1645734818,1645734856,NULL);
INSERT INTO domainlist VALUES(5,3,'(\.|^)imperturbablechoreinterrogation\.com$',1,1645734823,1645734856,NULL);
INSERT INTO domainlist VALUES(6,3,'(\.|^)envelopeheadache\.com$',1,1645734832,1645734856,NULL);
INSERT INTO domainlist VALUES(7,3,'(\.|^)germanexpecting\.com$',1,1645734843,1645734856,NULL);
INSERT INTO domainlist VALUES(8,3,'(\.|^)couriersticky\.com$',1,1645734843,1645734856,NULL);
INSERT INTO domainlist VALUES(9,3,'(\.|^)itchytidying\.com$',1,1645734856,1645734856,NULL);
INSERT INTO domainlist VALUES(10,3,'(\.|^)defiantinfluencedtrustworthy\.com$',1,1645734856,1645734856,NULL);
INSERT INTO domainlist VALUES(11,3,'(\.|^)specialtywoollenactively\.com$',1,1645734856,1645734856,NULL);
INSERT INTO domainlist VALUES(12,3,'(^|\.)destationfiverpools\.info$',1,1645734856,1645734856,NULL);
INSERT INTO domainlist VALUES(13,3,'(^|\.)foundprofi\.com$',1,1645734856,1645734856,NULL);
INSERT INTO domainlist VALUES(14,3,'(^|\.)twndo77864\.com$',1,1645734856,1645734856,NULL);
INSERT INTO domainlist VALUES(15,3,'(^|\.)ogrfi3uyt7\.com$',1,1645734856,1645734856,NULL);
INSERT INTO domainlist VALUES(16,3,'(^|\.)6moxhf9rmm\.com$',1,1645734856,1645734856,NULL);
INSERT INTO domainlist VALUES(17,3,'(^|\.)press-here-to-continue\.com$',1,1645734856,1645734856,NULL);
INSERT INTO domainlist VALUES(18,3,'(^|\.)llahnch259\.com$',1,1645734856,1645734856,NULL);
INSERT INTO domainlist VALUES(19,3,'(^|\.)vltwox7zl7h1wv\.com$',1,1645734856,1645734856,NULL);
INSERT INTO domainlist VALUES(20,3,'(^|\.)grnhdh81\.com$',1,1645734856,1645734856,NULL);
INSERT INTO domainlist VALUES(21,3,'(^|\.)pr0pgutf0hp089\.com$',1,1645734856,1645734856,NULL);
INSERT INTO domainlist VALUES(22,3,'(^|\.)whicontests\.world$',1,1645734856,1645734856,NULL);
INSERT INTO domainlist VALUES(366,3,'(^|\.)wk4x5rdtoz2tn0\.com$',1,1645988038,1645988038,NULL);
INSERT INTO domainlist VALUES(367,0,'bifrost-api.hotstar.com',1,1676627251,1703751770,'Disney+? (If blocked D+ shows "no internet connection")');
INSERT INTO domainlist VALUES(368,3,'(\.|^)oyn\.at$',1,1703750924,1703750924,'Scam / Phishing');
INSERT INTO domainlist VALUES(369,3,'(\.|^)phlink\.center$',1,1703751085,1703751085,'Scam / Phishing');
INSERT INTO domainlist VALUES(370,3,'(\.|^)wbze\.de$',1,1703751122,1703751122,'Scam / Phishing');
INSERT INTO domainlist VALUES(371,3,'(\.|^)rdrct\.guru$',1,1703751276,1703751276,'Scam / Phishing');
INSERT INTO domainlist VALUES(372,3,'(\.|^)fg222\.space$',1,1703751572,1703751572,'Phishing?');
INSERT INTO domainlist VALUES(373,3,'(\.|^)phlinks\.center$',1,1704278691,1704278691,'Scam / Phishing');
INSERT INTO domainlist VALUES(374,3,'(\.|^)shorten\.ee$',1,1704834337,1704834337,'Scam / Phishing');
CREATE TABLE adlist
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    address TEXT UNIQUE NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT 1,
    date_added INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    date_modified INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    comment TEXT,
    date_updated INTEGER,
    number INTEGER NOT NULL DEFAULT 0,
    invalid_domains INTEGER NOT NULL DEFAULT 0,
    status INTEGER NOT NULL DEFAULT 0
);
INSERT INTO adlist VALUES(1,'https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts',1,1645531842,1703752975,'Default (Steven Black''s BlockList)',1734767366,121787,1,3);
INSERT INTO adlist VALUES(2,'http://sysctl.org/cameleon/hosts',1,1645532981,1645532981,NULL,1734767366,20561,0,3);
INSERT INTO adlist VALUES(3,'https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt',1,1645532981,1645532981,NULL,1734767366,34,0,3);
INSERT INTO adlist VALUES(4,'https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt',1,1645532981,1645532981,NULL,1734767366,2701,0,3);
INSERT INTO adlist VALUES(5,'https://dbl.oisd.nl/',0,1645532981,1704398307,NULL,1704397097,700657,0,3);
INSERT INTO adlist VALUES(6,'https://pgl.yoyo.org/adservers/serverlist.php?hostformat=rpz',0,1645532981,1703753009,'PGL Yoyo',1703752519,0,7630,2);
INSERT INTO adlist VALUES(7,'https://raw.githubusercontent.com/PolishFiltersTeam/KADhosts/master/KADhosts.txt',1,1645532981,1645532981,NULL,1734767367,83289,0,3);
INSERT INTO adlist VALUES(8,'https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Spam/hosts',1,1645532981,1645532981,NULL,1734767367,57,0,3);
INSERT INTO adlist VALUES(9,'https://v.firebog.net/hosts/static/w3kbl.txt',1,1645532981,1645532981,NULL,1734767367,351,0,3);
INSERT INTO adlist VALUES(10,'https://adaway.org/hosts.txt',1,1645532981,1645532981,NULL,1734767367,6540,0,3);
INSERT INTO adlist VALUES(11,'https://v.firebog.net/hosts/AdguardDNS.txt',1,1645532981,1645532981,NULL,1734767367,56867,0,3);
INSERT INTO adlist VALUES(12,'https://v.firebog.net/hosts/Admiral.txt',1,1645532981,1645532981,NULL,1734767367,964,0,3);
INSERT INTO adlist VALUES(13,'https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt',1,1645532981,1645532981,NULL,1734767367,42536,0,3);
INSERT INTO adlist VALUES(14,'https://v.firebog.net/hosts/Easylist.txt',1,1645532981,1645532981,NULL,1734767367,29156,0,3);
INSERT INTO adlist VALUES(15,'https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext',1,1645532981,1645532981,NULL,1734767367,3542,0,3);
INSERT INTO adlist VALUES(16,'https://raw.githubusercontent.com/FadeMind/hosts.extras/master/UncheckyAds/hosts',1,1645532981,1645532981,NULL,1734767368,9,0,3);
INSERT INTO adlist VALUES(17,'https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts',1,1645532981,1645532981,NULL,1734767368,20921,0,3);
INSERT INTO adlist VALUES(18,'https://v.firebog.net/hosts/Easyprivacy.txt',1,1645532981,1645532981,NULL,1734767368,39374,0,3);
INSERT INTO adlist VALUES(19,'https://v.firebog.net/hosts/Prigent-Ads.txt',1,1645532981,1645532981,NULL,1734767368,3734,0,3);
INSERT INTO adlist VALUES(20,'https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.2o7Net/hosts',1,1645532981,1645532981,NULL,1734767368,2030,0,3);
INSERT INTO adlist VALUES(21,'https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt',1,1645532981,1645532981,NULL,1734767368,347,0,3);
INSERT INTO adlist VALUES(22,'https://hostfiles.frogeye.fr/firstparty-trackers-hosts.txt',1,1645532981,1645532981,NULL,1734767368,14190,0,3);
INSERT INTO adlist VALUES(23,'https://raw.githubusercontent.com/DandelionSprout/adfilt/master/Alternate%20versions%20Anti-Malware%20List/AntiMalwareHosts.txt',1,1645532981,1645532981,NULL,1734767368,21207,8,3);
INSERT INTO adlist VALUES(24,'https://osint.digitalside.it/Threat-Intel/lists/latestdomains.txt',1,1645532981,1645532981,NULL,1734767368,133,0,3);
INSERT INTO adlist VALUES(25,'https://s3.amazonaws.com/lists.disconnect.me/simple_malvertising.txt',1,1645532981,1645532981,NULL,1734767368,2735,1,3);
INSERT INTO adlist VALUES(26,'https://v.firebog.net/hosts/Prigent-Crypto.txt',1,1645532981,1645532981,NULL,1734767368,16282,0,3);
INSERT INTO adlist VALUES(27,'https://bitbucket.org/ethanr/dns-blacklists/raw/8575c9f96e5b4a1308f2f12394abd86d0927a4a0/bad_lists/Mandiant_APT1_Report_Appendix_D.txt',1,1645532981,1645532981,NULL,1734767368,2046,0,3);
INSERT INTO adlist VALUES(28,'https://phishing.army/download/phishing_army_blocklist_extended.txt',1,1645532981,1702467540,'Phishing Army Blocklist Extended',1734767369,258195,0,3);
INSERT INTO adlist VALUES(29,'https://gitlab.com/quidsup/notrack-blocklists/raw/master/notrack-malware.txt',1,1645532981,1645532981,NULL,1734767369,172,0,3);
INSERT INTO adlist VALUES(30,'https://raw.githubusercontent.com/Spam404/lists/master/main-blacklist.txt',1,1645532981,1645532981,NULL,1734767369,8141,0,3);
INSERT INTO adlist VALUES(31,'https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Risk/hosts',1,1645532981,1645532981,NULL,1734767369,2189,0,3);
INSERT INTO adlist VALUES(32,'https://urlhaus.abuse.ch/downloads/hostfile/',1,1645532981,1645532981,NULL,1734767369,284,0,3);
INSERT INTO adlist VALUES(33,'https://zerodot1.gitlab.io/CoinBlockerLists/hosts_browser',1,1645532981,1645532981,NULL,1734767369,3556,0,3);
INSERT INTO adlist VALUES(34,'https://phishing.army/download/phishing_army_blocklist.txt',0,1702467526,1702467594,'Phishing Army Blocklist',NULL,0,0,0);
INSERT INTO adlist VALUES(35,'https://hosts.tweedge.net/malicious.txt',1,1703608534,1703753046,'Tweedge BlockList (acquired from Emerging Threats Blocklist)',1734767369,2952,0,3);
INSERT INTO adlist VALUES(36,'https://pgl.yoyo.org/adservers/serverlist.php?showintro=0;hostformat=hosts',1,1703753003,1703753003,'PGL Yoyo (updated URL)',1734767369,3542,14,3);
INSERT INTO adlist VALUES(37,'https://big.oisd.nl',1,1704398326,1704398508,'OISD (Updated URL)',1734767370,0,0,3);
INSERT INTO adlist VALUES(38,'https://v.firebog.net/hosts/RPiList-Malware.txt',1,1705013545,1705013545,'Acquired Recommendation from Firebog',1734767370,0,0,3);
INSERT INTO adlist VALUES(39,'https://v.firebog.net/hosts/RPiList-Phishing.txt',1,1705013545,1705013545,'Acquired Recommendation from Firebog',1734767371,0,0,3);
INSERT INTO adlist VALUES(40,'https://raw.githubusercontent.com/AssoEchap/stalkerware-indicators/master/generated/hosts',1,1705013545,1705013545,'Acquired Recommendation from Firebog',1734767371,913,0,3);
CREATE TABLE domainlist_by_group
(
    domainlist_id INTEGER NOT NULL REFERENCES domainlist (id),
    group_id INTEGER NOT NULL REFERENCES "group" (id),
    PRIMARY KEY (domainlist_id, group_id)
);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(1,1,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(2,2,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(3,3,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(4,4,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(5,5,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(6,6,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(7,7,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(8,8,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(9,9,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(10,10,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(11,11,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(12,12,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(13,13,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(14,14,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(15,15,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(16,16,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(17,17,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(18,18,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(19,19,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(20,20,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(21,21,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(22,22,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(23,366,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(24,368,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(25,369,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(26,370,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(27,371,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(28,372,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(29,367,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(30,373,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(31,374,0);
COMMIT;
