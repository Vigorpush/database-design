-- Auther jiz457
-- Evaluation Environment 
-- Windows + putty / dbvisualizer 
-- Linux + Command line / dbvisualizer



-- Start of Evaluation
-- Evaluation Owner table
select
own_name,
own_email,
own_city,
own_state,
own_streetname,
own_buildingnumber,
own_ispartnermuseum,
ownphonenumber
from
test.ns_owners;

select
own_streetname,
own_buildingnumber,
own_ispartnermuseum
from
test.ns_owners;


select
count (own_email)
from
test.ns_owners;

--Evaluation Locations
select
loc_locationname,
loc_buildingname,
loc_istravellingexhibitionlocation,
loc_locationsuggestedcapacitymin,
loc_locationsuggestedcapacitymax,
loc_locationmeasurementwidth,
loc_locationmeasurementlength
from 
test.ns_locations;

select
loc_istravellingexhibitionlocation
from 
test.ns_locations
where loc_istravellingexhibitionlocation = true
;



--Evaluation door
select
dor_museumnameorigin,
dor_locationnameorigin,
dor_museumnamedestination,
dor_locationnamedestination
from 
test.ns_doors;


--Evaluation ns_exhibitionlocations
select
elo_exhibitname,
elo_exhibitdatestart,
elo_locationname,
elo_museumoflocation,
elo_museumofexhibition,
elo_locationdatestart,
elo_locationdateend
from
test.ns_exhibitionlocations;


select
count (
elo_exhibitname)
from
test.ns_exhibitionlocations;




select
count (
elo_exhibitname)
from
test.ns_exhibitionlocations
where 
elo_exhibitname = 'TOP NOTCHED show'
;

select
exh_exhibitname,
exh_museumname,
exh_exhibitdatestart,
exh_exhibitdateend,
exh_securitypersonname,
exh_istravellingexhibition,
exh_description
from
test.ns_exhibitions;



select
exw_exhibitname,
exw_exhibitdatestart,
exw_museumofexhibition,
exw_workcharid,
exw_worknumid,
exw_workdatabaseentrymuseum,
exw_dateworkadded,
exw_dateworkremoved
from
test.ns_exhibitionworks;


select
spe_sponsorname,
spe_exhibitname,
spe_museumname,
spe_exhibitdatestart,
spe_sponsoramount
from
test.ns_sponsorexhibitions;



select
wth_workcharid,
wth_worknumid,
wth_workdatabaseentrylocation,
wth_theme
from
test.ns_themes;

select
wol_workcharid,
wol_worknumid,
wol_workdatabaseentrymuseum,
wol_locationname,
wol_museumname,
wol_worktimearrival,
wol_worktimedeparture
from
test.ns_worklocations;


select
won_workcharid,
won_worknumid,
won_workdatabaseentrylocation,
won_ownername,
won_ownershipdatestart,
won_ownershipdateend
from
test.ns_workowners;


--Evaluation test.ns_works
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
from
test.ns_works;


select
wor_workphysicalproperty,
wor_workclassification
from
test.ns_works;

select
wor_workgeographicregionoforigin,
wor_workcountryoforigin,
wor_workfieldofscience
from
test.ns_works;

-- Evaluation test.ns_worksinsurance
select
win_workcharid,
win_worknumid,
win_workdatabaseentrylocation,
win_workinsurevalue,
win_insuredatestart,
win_insuredateend
from
test.ns_worksinsurance;



-- Evaluation test.ns_worksmedium
select
wme_workcharid,
wme_worknumid,
wme_databaseentrymuseum,
wme_workmedium
from
test.ns_worksmedium;

select
wme_databaseentrymuseum
from
test.ns_worksmedium;

-- Evaluation test.ns_worktransaction
select
wtr_workcharid,
wtr_worknumid,
wtr_workdatabaseentrymuseum,
wtr_museuminvolved,
wtr_client,
wtr_transactiontype,
wtr_transactiontime
from
test.ns_worktransaction;


select
count (distinct wtr_transactiontype)
from
test.ns_worktransaction;

select
wtr_transactiontype
from
test.ns_worktransaction;



select
count ( wtr_transactiontype)
from
test.ns_worktransaction
where
wtr_transactiontype = 'Loaned'
;



select
count ( wtr_transactiontype)
from
test.ns_worktransaction
where
wtr_transactiontype = 'Sold'
;



select
count ( wtr_transactiontype)
from
test.ns_worktransaction
where
wtr_transactiontype = 'Borrowed'
;



select
count ( wtr_transactiontype)
from
test.ns_worktransaction
where
wtr_transactiontype = 'Purchased'
;

-- End of Evaluation