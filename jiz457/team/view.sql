
-- Creating view
-- Team 08


-- doors
drop view if exists doorview cascade;
create view doorview
as
select 
dormuseumnameorigin,
dorlocationnameorigin,
dormuseumnamedestination,
dorlocationnamedestination
from 
doors
;

-- exhibitionlocations
drop view if exists exhibitionlocationsview cascade;
create view exhibitionlocationsview 
as
select 
eloexhibitname,
eloexhibitdatestart,
elolocationname,
elomuseumoflocation,
elomuseumofexhibition,
elolocationdatestart,
elolocationdateend
from 
exhibitionlocations
;

-- exhibitions
drop view if exists exhibitionsview cascade;
create view exhibitionsview 
as
select 
exhexhibitname,
exhmuseumname,
exhexhibitdatestart,
exhexhibitdateend,
exhexhibitdescription,
exhsecuritypersonname,
exhistravellingexhibition
from 
exhibitions
;


-- exhibitionworks
drop view if exists exhibitionworksview cascade;
create view exhibitionworksview
as
select 
exwexhibitname,
exwexhibitdatestart,
exwmuseumofexhibition,
exwworkcharid,
exwworknumid,
exwworkdatabaseentrymuseum,
exwdateworkadded,
exwdateworkremoved
from 
exhibitionworks
;


-- locations
drop view if exists locationsview cascade;
create view locationsview
as
select 
loclocationname,
locbuildingname,
locistravellingexhibitionlocation,
loclocationsuggestedcapacitymin,
loclocationsuggestedcapacitymax,
loclocationmeasurementwidth,
loclocationmeasurementlength
from 
locations
;


-- owners
drop view if exists ownersview cascade;
create view ownersview
as
select 
ownname,
ownemail,
owncity,
ownstate,
ownstreetname,
ownbuildingnumber,
ownispartnermuseum,
ownphonenumber
from 
owners
;


-- sponsorexhibitions
drop view if exists sponsorexhibitionsview cascade;
create view sponsorexhibitionsview
as
select 
spesponsorname,
speexhibitname,
spemuseumname,
speexhibitdatestart,
spesponsoramount
from 
sponsorexhibitions
;


-- themes
drop view if exists themesview cascade;
create view themesview
as
select 
wthworkcharid,
wthworknumid,
wthworkdatabaseentrylocation,
wththeme
from 
themes
;
-- worklocations
drop view if exists worklocationsview cascade;
create view worklocationsview
as
select 
wolworkcharid,
wolworknumid,
wolworkdatabaseentrymuseum,
wollocationname,
wolmuseumname,
wolworktimearrival,
wolworktimedeparture
from 
worklocations
;
-- workowners
drop view if exists workownersview cascade;
create view workownersview
as
select 
wonworkcharid,
wonworknumid,
wonworkdatabaseentrylocation,
wonownername,
wonownershipdatestart,
wonownershipdateend
from 
workowners
;
-- works
drop view if exists worksview cascade;
create view worksview
as
select 
worworkcharid,
worworknumid,
wordatabaseentrymuseum,
worworkname,
worworkdescription,
worworkphysicalproperty,
worworkclassification,
worworkcreator,
worworkcreationdate,
worworkborrowable,
worworkgeographicregionoforigin,
worworkcountryoforigin,
worworkfieldofscience,
worworkcreationtimeperiod
from 
works
;
-- worksinsurance
drop view if exists worksinsuranceview cascade;
create view worksinsuranceview
as
select 
winworkcharid,
winworknumid,
winworkdatabaseentrylocation,
winworkinsurevalue,
wininsuredatestart,
wininsuredateend
from 
worksinsurance
;
-- worksmedium
drop view if exists worksmediumview cascade;
create view worksmediumview
as
select 
wmeworkcharid,
wmeworknumid,
wmedatabaseentrymuseum,
wmeworkmedium
from 
worksmedium
;
-- worktransaction
drop view if exists worktransactionview cascade;
create view worktransactionview
as
select 
wtrworkcharid,
wtrworknumid,
wtrworkdatabaseentrymuseum,
wtrmuseuminvolved,
wtrclient,
wtrtransactiontype,
wtrtransactiontime,
worktransaction
from 
worktransaction
;