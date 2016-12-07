
/*
wtr_workcharid
wtr_worknumid
wtr_workdatabaseentrymuseum
wtr_museuminvolved
wtr_client
wtr_transactiontype
wtr_transactiontime*/

--loan
--potentialborrow -- now those thing is not happening 

/*
insert into test.ns_worktransaction
select 
t.conletter,
t.connumber,
w.wor_databaseentrymuseum,--this one should be Israel_Museum, needed to change this in works owner and works table
'Israel_Museum',
s.id_museumname,--client 
'Borrowed',
'2017-5-1'::date+ interval '12h'
from 
tblitemcondition t, tblidenification s, test.ns_works w
where
t.conkey='PB'
And
t.conletter= s.idletterkey
And
t.connumber=s.idnumberkey
And
t.conletter= w.wor_workcharid
And
t.connumber=w.wor_worknumid
;
insert into test.ns_worktransaction
select 
t.conletter,
t.connumber,
w.wor_databaseentrymuseum,--this one should be Israel_Museum, needed to change this in works owner and works table
'Israel_Museum',
s.id_museumname,--client 
'Borrowed',
'2017-5-1'::date+ interval '12h'
from 
tblitemcondition t, tblidenification s, test.ns_works w
where
t.conkey='PB'
And
t.conletter= s.idletterkey
And
t.connumber=s.idnumberkey
And
t.conletter= w.wor_workcharid
And
t.connumber=w.wor_worknumid
;
*/

--longterm
--start of long term Borrowed items
insert into test.ns_worktransaction
select 
t.conletter,
t.connumber,
w.wor_databaseentrymuseum,--this one should be Israel_Museum, needed to change this in works owner and works table
'Israel_Museum',
s.id_museumname,
'Loaned',
'2015-05-30'::date+ interval '12h'
from 
tblitemcondition t, tblidenification s, test.ns_works w
where
t.conkey='LB'
And
t.conletter= s.idletterkey
And
t.connumber=s.idnumberkey
And
t.conletter= w.wor_workcharid
And
t.connumber=w.wor_worknumid
AND 
s.id_museumname in  ('Bart Simpson', 'Mickey Mouse', 'Timon','Bugs Bunny')
;

insert into test.ns_worktransaction
select 
t.conletter,
t.connumber,
w.wor_databaseentrymuseum,--this one should be Israel_Museum, needed to change this in works owner and works table
s.id_museumname,
'Israel_Museum',
'Borrowed',
'2015-05-30'::date+ interval '12h'--manual into 
from 
tblitemcondition t, tblidenification s, test.ns_works w
where
t.conkey='LB'
And
t.conletter= s.idletterkey
And
t.connumber=s.idnumberkey
And
t.conletter= w.wor_workcharid
And
t.connumber=w.wor_worknumid
AND 
s.id_museumname in  ('Bart Simpson', 'Mickey Mouse', 'Timon','Bugs Bunny')
;

-- end of long term Borrowed items record





--Start of Purchanse items
-- wtr_workcharid
-- wtr_worknumid
-- wtr_workdatabaseentrymuseum
-- wtr_museuminvolved
-- wtr_client
-- wtr_transactiontype
-- wtr_transactiontime
insert into test.ns_worktransaction
select 
t.conletter,
t.connumber,
w.wor_databaseentrymuseum,--this one should be Israel_Museum, needed to change this in works owner and works table
'Israel_Museum',
'UNKNOW',
'Purchased',
'2016-10-25'::date+ interval '12h'--this is in assignment requirement
from 
tblitemcondition t, tblidenification s, test.ns_works w
where
t.conkey='P'
And
t.conletter= s.idletterkey
And
t.connumber=s.idnumberkey
And
t.conletter= w.wor_workcharid
And
t.connumber=w.wor_worknumid
;


insert into test.ns_worktransaction
select 
t.conletter,
t.connumber,
w.wor_databaseentrymuseum,--this one should be Israel_Museum, needed to change this in works owner and works table
'UNKNOW',
'Israel_Museum',
'Sold',
'2016-10-25'::date+ interval '12h'
from 
tblitemcondition t, tblidenification s, test.ns_works w
where
t.conkey='P'
And
t.conletter= s.idletterkey
And
t.connumber=s.idnumberkey
And
t.conletter= w.wor_workcharid
And
t.connumber=w.wor_worknumid
;
-- End of Purchanse items record 


-- Start of sold 3 items into other museum or other person, in this case, we sell to UNKNOW person 
-- update test.ns_works
-- set wor_databaseentrymuseum = 'Israel_Museum'
-- where wor_databaseentrymuseum = 'UNKNOW'
insert into test.ns_worktransaction
select 
t.conletter,
t.connumber,
w.wor_databaseentrymuseum,--this one should be Israel_Museum, needed to change this in works owner and works table
'Israel_Museum',
'UNKNOW',
'Sold',
'2016-10-21'::date+ interval '12h'
from 
tblitemcondition t, tblidenification s, test.ns_works w
where
t.conkey='SOD'
And
t.conletter= s.idletterkey
And
t.connumber=s.idnumberkey
And
t.conletter= w.wor_workcharid
And
t.connumber=w.wor_worknumid
;

insert into test.ns_worktransaction
select 
t.conletter,
t.connumber,
w.wor_databaseentrymuseum,--this one should be Israel_Museum, needed to change this in works owner and works table
'UNKNOW',
'Israel_Museum',
'Purchased',
'2016-10-21'::date+ interval '12h'
from 
tblitemcondition t, tblidenification s, test.ns_works w
where
t.conkey='SOD'
And
t.conletter= s.idletterkey
And
t.connumber=s.idnumberkey
And
t.conletter= w.wor_workcharid
And
t.connumber=w.wor_worknumid
;

--End of sold item transaction record