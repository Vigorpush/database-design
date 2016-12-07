insert into owners
select 
own_name,
own_email,
own_city,
own_state,
own_streetname,
own_buildingnumber,
own_ispartnermuseum,
ownphonenumber
from jiz457.ns_owners;




insert into locations
select 
loc_locationname,
loc_buildingname,
loc_istravellingexhibitionlocation,
loc_locationsuggestedcapacitymin,
loc_locationsuggestedcapacitymax,
loc_locationmeasurementwidth,
loc_locationmeasurementlength
from jiz457.ns_locations;


insert into doors
select 
dor_museumnameorigin,
dor_locationnameorigin,
dor_museumnamedestination,
dor_locationnamedestination
from jiz457.ns_doors;


insert into exhibitions
select 
exh_exhibitname,
exh_museumname,
exh_exhibitdatestart,
exh_exhibitdateend,
exh_description,
exh_securitypersonname,
exh_istravellingexhibition
from jiz457.ns_exhibitions;


insert into exhibitionlocations
select 
elo_exhibitname,
elo_exhibitdatestart,
elo_locationname,
elo_museumoflocation,
elo_museumofexhibition,
elo_locationdatestart,
elo_locationdateend
from jiz457.ns_exhibitionlocations;



insert into works
select 
wor_workcharid,
wor_worknumid,
wor_databaseentrymuseum,
wor_workname,
wor_workdescription,
wor_workphysicalproperty,
wor_workclassification,
wor_workcreator,
wor_workcreationdate,
wor_workborrowable,
wor_workgeographicregionoforigin,
wor_workcountryoforigin,
wor_workfieldofscience
from jiz457.ns_works;


insert into sponsorexhibitions
select 
spe_sponsorname,
spe_exhibitname,
spe_museumname,
spe_exhibitdatestart,
spe_sponsoramount
from jiz457.ns_sponsorexhibitions;



insert into themes
select 
wth_workcharid,
wth_worknumid,
wth_workdatabaseentrylocation,
wth_theme
from jiz457.ns_themes;


insert into workowners
select 
won_workcharid,
won_worknumid,
won_workdatabaseentrylocation,
won_ownername,
won_ownershipdatestart,
won_ownershipdateend
from jiz457.ns_workowners;


insert into worksmedium
select 
wme_workcharid,
wme_worknumid,
wme_databaseentrymuseum,
wme_workmedium
from jiz457.ns_worksmedium;


insert into exhibitionworks
select 
exw_exhibitname,
exw_exhibitdatestart,
exw_museumofexhibition,
exw_workcharid,
exw_worknumid,
exw_workdatabaseentrymuseum,
exw_dateworkadded,
exw_dateworkremoved
from jiz457.ns_exhibitionworks;



insert into worklocations
select 
wol_workcharid,
wol_worknumid,
wol_workdatabaseentrymuseum,
wol_locationname,
wol_museumname,
wol_worktimearrival,
wol_worktimedeparture
from jiz457.ns_worklocations;



insert into worksinsurance
select 
win_workcharid,
win_worknumid,
win_workdatabaseentrylocation,
win_workinsurevalue,
win_insuredatestart,
win_insuredateend
from jiz457.ns_worksinsurance;



insert into worktransaction
select 
wtr_workcharid,
wtr_worknumid,
wtr_workdatabaseentrymuseum,
wtr_museuminvolved,
wtr_client,
wtr_transactiontype,
wtr_transactiontime
from jiz457.ns_worktransaction;











