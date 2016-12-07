-- Auther jiz457
-- Evaluation Environment 
-- Windows + putty / dbvisualizer 
-- Linux + Command line / dbvisualizer



-- Start of Evaluation
-- doors
select
dormuseumnameorigin,
dorlocationnameorigin,
dormuseumnamedestination,
dorlocationnamedestination
from
doors
where
dormuseumnameorigin='Israel_Museum'
or 
dormuseumnamedestination = 'Israel_Museum'
;


-- exhibitionlocations

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
where
elomuseumofexhibition='Israel_Museum'
;
-- exhibitions

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
where
exhmuseumname='Israel_Museum'
;
-- exhibitionworks
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
where
exwmuseumofexhibition ='Israel_Museum'
or 
exwworkdatabaseentrymuseum = 'Israel_Museum'
;

-- locations

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
where
locbuildingname ='Israel_Museum'
;

-- owners
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
where
ownname ='Israel_Museum'
;

-- sponsorexhibitions
select
spesponsorname,
speexhibitname,
spemuseumname,
speexhibitdatestart,
spesponsoramount,
sponsorexhibitions
from
sponsorexhibitions
where
spesponsorname ='Bill'
or 
spesponsorname ='Zang,Tim'
;

-- themes
select
wthworkcharid,
wthworknumid,
wthworkdatabaseentrylocation,
wththeme
from
themes
where
wthworkdatabaseentrylocation ='Israel_Museum'
;

-- worklocations
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
where
wolworkdatabaseentrymuseum ='Israel_Museum'
;


-- workowners
select
wonworkcharid,
wonworknumid,
wonworkdatabaseentrylocation,
wonownername,
wonownershipdatestart,
wonownershipdateend
from
workowners
where
wonworkdatabaseentrylocation ='Israel_Museum'
;

-- works
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
where
wordatabaseentrymuseum ='Israel_Museum'
;

-- worksinsurance
select
winworkcharid,
winworknumid,
winworkdatabaseentrylocation,
winworkinsurevalue,
wininsuredatestart,
wininsuredateend
from
worksinsurance
where
winworkdatabaseentrylocation ='Israel_Museum'
;

-- worksmedium
select
wmeworkcharid,
wmeworknumid,
wmedatabaseentrymuseum,
wmeworkmedium
from
worksmedium
where
wmedatabaseentrymuseum ='Israel_Museum'
;

-- worktransaction