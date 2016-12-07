DROP View if exists NS_WorksInsuranceView cascade;
DROP View if exists NS_ThemesView cascade;
DROP View if exists NS_SponsorExhibitionsView cascade;
DROP View if exists NS_WorkTransactionView cascade;
DROP View if exists NS_ExhibitionLocationsView cascade;
DROP View if exists NS_ExhibitionWorksView cascade;
DROP View if exists NS_WorkOwnersView cascade;
DROP View if exists NS_WorksMediumView cascade;
DROP View if exists NS_WorksView cascade;
DROP View if exists NS_OwnersView cascade;
DROP View if exists NS_LocationsView cascade;
DROP View if exists NS_ExhibitionsView cascade;
DROP View if exists NS_DoorsView cascade;
DROP View if exists NS_WorkLocationsView cascade;



-- Works  View
CREATE View NS_WorksView
  AS SELECT 
      wor_WorkCharID, 
      wor_WorkNumID,
      wor_DatabaseEntryMuseum, 
      wor_WorkDescription, 
      wor_WorkPhysicalProperty,
      wor_WorkClassification,
      wor_WorkCreator,
      wor_WorkCreationDate,
      wor_WorkBorrowable,
      wor_WorkGeographicRegionOfOrigin,
      wor_WorkFieldOfScience
   FROM NS_Works;

-- Work Mediums

CREATE View NS_WorksMediumView
  AS SELECT 
      wme_WorkCharID, 
      wme_WorkNumID,
      wme_DatabaseEntrymuseum, 
      wme_WorkMedium
   FROM NS_WorksMedium;

  
-- Location View
CREATE View NS_LocationsView
  AS SELECT 
      loc_LocationName,
      loc_BuildingName, 
      loc_IsTravellingExhibitionLocation, 
      loc_LocationSuggestedCapacityMin, 
      loc_LocationSuggestedCapacityMax, 
      loc_LocationMeasurementWidth, 
      loc_LocationMeasurementLength
  FROM NS_Locations;
  
-- Worklocations View
CREATE View NS_WorkLocationsView
   AS SELECT 
      wol_WorkCharID, 
      wol_WorkNumID,
      wol_WorkDatabaseEntryMuseum, 
      wol_LocationName,
      wol_MuseumName,
      wol_WorkTimeArrival,
      wol_WorkTimeDeparture
   FROM NS_WorkLocations; 

-- Exhibitions View
CREATE View NS_ExhibitionsView
  AS SELECT 
      exh_ExhibitName,
      exh_MuseumName,
      exh_ExhibitDateStart,
      exh_ExhibitDateEnd,
      exh_SecurityPersonName,
      exh_IsTravellingExhibition
  FROM NS_Exhibitions;
  
-- Doors View
CREATE View NS_DoorsView
  AS SELECT 
      dor_MuseumNameOrigin,
      dor_LocationNameOrigin,
      dor_MuseumNameDestination,
      dor_LocationNameDestination
  FROM NS_Doors;
  

-- ExhibitionLocations View
CREATE View NS_ExhibitionLocationsView
AS SELECT 
      elo_ExhibitName,
      elo_ExhibitDateStart,
      elo_LocationName,
      elo_MuseumOfLocation,
      elo_MuseumOfExhibition,
      elo_LocationDateStart,
      elo_LocationDateEnd
  FROM NS_ExhibitionLocations;
  
-- ExhibitionWorks View
CREATE View NS_ExhibitionWorksView
AS SELECT 
      exw_ExhibitName,
      exw_ExhibitDateStart,
      exw_MuseumOfExhibition,
      exw_WorkCharID,
      exw_WorkNumID,
      exw_WorkDataBaseEntryMuseum,
      exw_DateWorkAdded
  FROM NS_ExhibitionWorks;
  
-- Owners View
CREATE View NS_OwnersView
  AS SELECT 
      own_Name, 
      own_Email, 
      own_City,
      own_State, 
      own_Streetname, 
      own_BuildingNumber,
      own_isPartnerMuseum
  FROM NS_Owners;
    
-- WorkOwners View
CREATE View NS_WorkOwnersView
  AS SELECT 
      won_WorkCharID, 
      won_WorkNumID, 
      won_WorkDatabaseEntryLocation,
      won_OwnerName,
      won_OwnershipDateStart, 
      won_OwnershipDateEnd
  FROM NS_WorkOwners;
      
 -- WorkTransactions View
CREATE View NS_WorkTransactionView
  AS SELECT wtr_WorkCharID, 
      wtr_WorkNumID,
      wtr_WorkDatabaseEntryMuseum, 
      wtr_MuseumInvolved,
      wtr_Client, 
      wtr_TransactionType, 
      wtr_TransactionTime
  FROM NS_WorkTransaction;
    
-- Sponsors View
CREATE View NS_SponsorExhibitionsView
  AS SELECT 
      spe_SponsorName, 
      spe_ExhibitName, 
      spe_MuseumName, 
      spe_ExhibitDateStart, 
      spe_SponsorAmount
  FROM NS_SponsorExhibitions;
  
-- WorkThemes View
CREATE View NS_ThemesView
  AS SELECT 
      wth_WorkCharID,
      wth_WorkDatabaseEntryLocation,
      wth_Theme
  FROM NS_Themes;
  
-- WorksInsurance View
CREATE View NS_WorksInsuranceView
  AS SELECT 
      win_WorkCharID, 
      win_WorkNumID, 
      win_WorkDatabaseEntryLocation, 
      win_WorkInsureValue, 
      win_InsureDateStart, 
      win_InsureDateEnd
  FROM NS_WorksInsurance ;
  

