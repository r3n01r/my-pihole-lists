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
INSERT INTO domainlist VALUES(375,3,'(\.|^)goboksehee\.net$',1,1734802594,1734802594,NULL);
INSERT INTO domainlist VALUES(376,3,'(\.|^)viibmmqc\.com$',1,1734802623,1734802623,NULL);
INSERT INTO domainlist VALUES(377,3,'(\.|^)1xlite-833615\.top$',1,1734802653,1734802653,NULL);
INSERT INTO domainlist VALUES(378,3,'(\.|^)veetaururemooh\.net$',1,1734803098,1734803098,NULL);
INSERT INTO domainlist VALUES(380,3,'(\.|^)zuhempih\.com$',1,1734803191,1734803191,NULL);
INSERT INTO domainlist VALUES(381,3,'(\.|^)lidosquey\.shop$',1,1737006364,1737006364,NULL);
INSERT INTO domainlist VALUES(382,3,'(\.|^)polybuzz\.ai$',1,1737292389,1737292389,NULL);
INSERT INTO domainlist VALUES(383,3,'(\.|^)durenolsalvor\.shop$',1,1737687809,1737687809,NULL);
INSERT INTO domainlist VALUES(384,3,'(\.|^)upset-rent\.com$',1,1737703396,1737703396,NULL);
INSERT INTO domainlist VALUES(385,3,'(\.|^)phahifoobsie\.net$',1,1738584617,1738584617,NULL);
INSERT INTO domainlist VALUES(386,3,'(\.|^)peweedroulrogh\.net$',1,1738837391,1738837392,NULL);
INSERT INTO domainlist VALUES(387,3,'(\.|^)foalaugrigoak\.net$',1,1738852521,1738852521,NULL);
INSERT INTO domainlist VALUES(388,3,'(\.|^)jowopaipouy\.com$',1,1740736474,1740736474,NULL);
INSERT INTO domainlist VALUES(389,3,'(\.|^)shoarsaiglep\.net$',1,1740737316,1740737316,NULL);
INSERT INTO domainlist VALUES(390,3,'(\.|^)hoalaicheey\.com$',1,1740738096,1740738096,NULL);
INSERT INTO domainlist VALUES(391,3,'(\.|^)aunserouphy\.com$',1,1742051550,1742051550,NULL);
INSERT INTO domainlist VALUES(392,3,'(\.|^)colefauwojow\.net$',1,1742054356,1742054356,NULL);
INSERT INTO domainlist VALUES(393,3,'(\.|^)heephapsechi\.com$',1,1742118186,1742118186,NULL);
INSERT INTO domainlist VALUES(394,3,'(\.|^)choozeemtaso\.com$',1,1742129826,1742129826,NULL);
INSERT INTO domainlist VALUES(395,3,'(\.|^)hisoartini\.com$',1,1742130587,1742130587,NULL);
INSERT INTO domainlist VALUES(396,3,'(\.|^)boanoustety\.com$',1,1742130678,1742130678,NULL);
INSERT INTO domainlist VALUES(397,3,'(\.|^)gussidsaizuhats\.net$',1,1742131899,1742131899,NULL);
INSERT INTO domainlist VALUES(398,3,'(\.|^)settlementstandingdread\.com$',1,1743682980,1743682980,NULL);
INSERT INTO domainlist VALUES(399,3,'(\.|^)resurrectionincomplete\.com$',1,1743694100,1743694100,NULL);
INSERT INTO domainlist VALUES(400,3,'(\.|^)gypsyimpel\.com$',1,1743694266,1743694266,NULL);
INSERT INTO domainlist VALUES(401,3,'(\.|^)outpagefitroot\.shop$',1,1743694307,1743694307,NULL);
INSERT INTO domainlist VALUES(402,3,'(\.|^)briefinedibleparson\.com$',1,1743694338,1743694338,NULL);
INSERT INTO domainlist VALUES(403,3,'(\.|^)wollybelayer\.shop$',1,1743694391,1743694391,NULL);
INSERT INTO domainlist VALUES(404,3,'(\.|^)adherencemineralgravely\.com$',1,1743694458,1743694458,NULL);
CREATE TABLE adlist
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    address TEXT NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT 1,
    date_added INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    date_modified INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    comment TEXT,
    date_updated INTEGER,
    number INTEGER NOT NULL DEFAULT 0,
    invalid_domains INTEGER NOT NULL DEFAULT 0,
    status INTEGER NOT NULL DEFAULT 0,
    abp_entries INTEGER NOT NULL DEFAULT 0,
    type INTEGER NOT NULL DEFAULT 0,
    UNIQUE(address, type)
);
INSERT INTO adlist VALUES(1,'https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts',1,1645531842,1703752975,'Default (Steven Black''s BlockList)',1760610011,79415,1,1,0,0);
INSERT INTO adlist VALUES(2,'http://sysctl.org/cameleon/hosts',1,1645532981,1645532981,NULL,1739651464,20561,0,2,0,0);
INSERT INTO adlist VALUES(3,'https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt',1,1645532981,1645532981,NULL,1739651465,34,0,2,0,0);
INSERT INTO adlist VALUES(4,'https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt',1,1645532981,1645532981,NULL,1739651465,2701,0,2,0,0);
INSERT INTO adlist VALUES(5,'https://dbl.oisd.nl/',0,1645532981,1704398307,NULL,1704397097,700657,0,3,0,0);
INSERT INTO adlist VALUES(6,'https://pgl.yoyo.org/adservers/serverlist.php?hostformat=rpz',0,1645532981,1703753009,'PGL Yoyo',1703752519,0,7630,2,0,0);
INSERT INTO adlist VALUES(7,'https://raw.githubusercontent.com/PolishFiltersTeam/KADhosts/master/KADhosts.txt',1,1645532981,1645532981,NULL,1760610016,54515,0,1,0,0);
INSERT INTO adlist VALUES(8,'https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Spam/hosts',1,1645532981,1645532981,NULL,1739651466,57,0,2,0,0);
INSERT INTO adlist VALUES(9,'https://v.firebog.net/hosts/static/w3kbl.txt',1,1645532981,1645532981,NULL,1739651467,351,0,2,0,0);
INSERT INTO adlist VALUES(10,'https://adaway.org/hosts.txt',1,1645532981,1645532981,NULL,1739651468,6540,0,2,0,0);
INSERT INTO adlist VALUES(11,'https://v.firebog.net/hosts/AdguardDNS.txt',1,1645532981,1645532981,NULL,1760610019,139906,0,1,0,0);
INSERT INTO adlist VALUES(12,'https://v.firebog.net/hosts/Admiral.txt',1,1645532981,1645532981,NULL,1739651469,943,0,2,0,0);
INSERT INTO adlist VALUES(13,'https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt',1,1645532981,1645532981,NULL,1739651470,42536,0,2,0,0);
INSERT INTO adlist VALUES(14,'https://v.firebog.net/hosts/Easylist.txt',1,1645532981,1645532981,NULL,1760610021,41591,2,1,0,0);
INSERT INTO adlist VALUES(15,'https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext',1,1645532981,1645532981,NULL,1760610025,3443,0,1,0,0);
INSERT INTO adlist VALUES(16,'https://raw.githubusercontent.com/FadeMind/hosts.extras/master/UncheckyAds/hosts',1,1645532981,1645532981,NULL,1739651477,9,0,2,0,0);
INSERT INTO adlist VALUES(17,'https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts',1,1645532981,1645532981,NULL,1760212156,19034,0,2,0,0);
INSERT INTO adlist VALUES(18,'https://v.firebog.net/hosts/Easyprivacy.txt',1,1645532981,1645532981,NULL,1760610027,42028,0,1,0,0);
INSERT INTO adlist VALUES(19,'https://v.firebog.net/hosts/Prigent-Ads.txt',1,1645532981,1645532981,NULL,1760610027,4270,0,1,0,0);
INSERT INTO adlist VALUES(20,'https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.2o7Net/hosts',1,1645532981,1645532981,NULL,1739651478,2030,0,2,0,0);
INSERT INTO adlist VALUES(21,'https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt',1,1645532981,1645532981,NULL,1739651478,347,0,2,0,0);
INSERT INTO adlist VALUES(22,'https://hostfiles.frogeye.fr/firstparty-trackers-hosts.txt',1,1645532981,1645532981,NULL,1760212160,30475,0,3,0,0);
INSERT INTO adlist VALUES(23,'https://raw.githubusercontent.com/DandelionSprout/adfilt/master/Alternate%20versions%20Anti-Malware%20List/AntiMalwareHosts.txt',1,1645532981,1645532981,NULL,1760212160,25834,0,2,0,0);
INSERT INTO adlist VALUES(24,'https://osint.digitalside.it/Threat-Intel/lists/latestdomains.txt',1,1645532981,1645532981,NULL,1739651482,133,0,3,0,0);
INSERT INTO adlist VALUES(25,'https://s3.amazonaws.com/lists.disconnect.me/simple_malvertising.txt',1,1645532981,1645532981,NULL,1739651483,2735,1,2,0,0);
INSERT INTO adlist VALUES(26,'https://v.firebog.net/hosts/Prigent-Crypto.txt',1,1645532981,1645532981,NULL,1760610044,16291,0,1,0,0);
INSERT INTO adlist VALUES(27,'https://bitbucket.org/ethanr/dns-blacklists/raw/8575c9f96e5b4a1308f2f12394abd86d0927a4a0/bad_lists/Mandiant_APT1_Report_Appendix_D.txt',1,1645532981,1645532981,NULL,1739651485,2046,0,2,0,0);
INSERT INTO adlist VALUES(28,'https://phishing.army/download/phishing_army_blocklist_extended.txt',1,1645532981,1702467540,'Phishing Army Blocklist Extended',1760610047,144518,0,1,0,0);
INSERT INTO adlist VALUES(29,'https://gitlab.com/quidsup/notrack-blocklists/raw/master/notrack-malware.txt',1,1645532981,1645532981,NULL,1758397778,149,0,2,0,0);
INSERT INTO adlist VALUES(30,'https://raw.githubusercontent.com/Spam404/lists/master/main-blacklist.txt',1,1645532981,1645532981,NULL,1758397778,8140,0,2,0,0);
INSERT INTO adlist VALUES(31,'https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Risk/hosts',1,1645532981,1645532981,NULL,1739651488,2189,0,2,0,0);
INSERT INTO adlist VALUES(32,'https://urlhaus.abuse.ch/downloads/hostfile/',1,1645532981,1645532981,NULL,1760610049,890,0,1,0,0);
INSERT INTO adlist VALUES(33,'https://zerodot1.gitlab.io/CoinBlockerLists/hosts_browser',1,1645532981,1645532981,NULL,1739651491,3556,0,3,0,0);
INSERT INTO adlist VALUES(34,'https://phishing.army/download/phishing_army_blocklist.txt',0,1702467526,1702467594,'Phishing Army Blocklist',NULL,0,0,0,0,0);
INSERT INTO adlist VALUES(35,'https://hosts.tweedge.net/malicious.txt',1,1703608534,1703753046,'Tweedge BlockList (acquired from Emerging Threats Blocklist)',1760610053,3093,0,1,0,0);
INSERT INTO adlist VALUES(36,'https://pgl.yoyo.org/adservers/serverlist.php?showintro=0;hostformat=hosts',1,1703753003,1703753003,'PGL Yoyo (updated URL)',1760610054,3443,96,1,0,0);
INSERT INTO adlist VALUES(37,'https://big.oisd.nl',1,1704398326,1704398508,'OISD (Updated URL)',1760610058,198855,0,1,198855,0);
INSERT INTO adlist VALUES(38,'https://v.firebog.net/hosts/RPiList-Malware.txt',1,1705013545,1705013545,'Acquired Recommendation from Firebog',1760610059,251079,0,1,251079,0);
INSERT INTO adlist VALUES(39,'https://v.firebog.net/hosts/RPiList-Phishing.txt',1,1705013545,1705013545,'Acquired Recommendation from Firebog',1760610065,876877,0,1,876877,0);
INSERT INTO adlist VALUES(40,'https://raw.githubusercontent.com/AssoEchap/stalkerware-indicators/master/generated/hosts',1,1705013545,1705013545,'Acquired Recommendation from Firebog',1759607395,919,0,2,0,0);
INSERT INTO adlist VALUES(41,'https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/tif.txt',1,1750230968,1750230968,'Threat Intelligence Feeds (Hagezi)',1760610071,832791,0,1,832791,0);
CREATE TABLE domainlist_by_group
(
    domainlist_id INTEGER NOT NULL REFERENCES domainlist (id) ON DELETE CASCADE,
    group_id INTEGER NOT NULL REFERENCES "group" (id) ON DELETE CASCADE,
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
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(32,375,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(33,376,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(34,377,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(35,378,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(36,380,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(37,381,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(38,382,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(39,383,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(40,384,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(41,385,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(42,386,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(43,387,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(44,388,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(45,389,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(46,390,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(47,391,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(48,392,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(49,393,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(50,394,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(51,395,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(52,396,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(53,397,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(54,398,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(55,399,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(56,400,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(57,401,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(58,402,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(59,403,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(60,404,0);
COMMIT;
