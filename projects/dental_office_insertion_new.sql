USE [DentalOffice]
GO
SET IDENTITY_INSERT [dbo].[Office.Cancelations] ON 

INSERT [dbo].[Office.Cancelations] ([Cancellation_ID], [Hours_prior_2_cancelation], [penalty]) VALUES (1, 47, 50)
INSERT [dbo].[Office.Cancelations] ([Cancellation_ID], [Hours_prior_2_cancelation], [penalty]) VALUES (2, 46, 50)
INSERT [dbo].[Office.Cancelations] ([Cancellation_ID], [Hours_prior_2_cancelation], [penalty]) VALUES (3, 40, 50)
INSERT [dbo].[Office.Cancelations] ([Cancellation_ID], [Hours_prior_2_cancelation], [penalty]) VALUES (4, 35, 80)
INSERT [dbo].[Office.Cancelations] ([Cancellation_ID], [Hours_prior_2_cancelation], [penalty]) VALUES (5, 29, 90)
INSERT [dbo].[Office.Cancelations] ([Cancellation_ID], [Hours_prior_2_cancelation], [penalty]) VALUES (6, 10, 80)
INSERT [dbo].[Office.Cancelations] ([Cancellation_ID], [Hours_prior_2_cancelation], [penalty]) VALUES (7, 56, 0)
INSERT [dbo].[Office.Cancelations] ([Cancellation_ID], [Hours_prior_2_cancelation], [penalty]) VALUES (8, 70, 0)
INSERT [dbo].[Office.Cancelations] ([Cancellation_ID], [Hours_prior_2_cancelation], [penalty]) VALUES (9, 60, 0)
INSERT [dbo].[Office.Cancelations] ([Cancellation_ID], [Hours_prior_2_cancelation], [penalty]) VALUES (10, 54, 0)
SET IDENTITY_INSERT [dbo].[Office.Cancelations] OFF
GO
INSERT [dbo].[Records.ZipCode_LK] ([ZipCode], [City], [State]) VALUES (N'01122', N'SanJose                  ', N'CA')
INSERT [dbo].[Records.ZipCode_LK] ([ZipCode], [City], [State]) VALUES (N'01123', N'Miami                    ', N'FL')
INSERT [dbo].[Records.ZipCode_LK] ([ZipCode], [City], [State]) VALUES (N'01124', N'Arlington                ', N'TX')
INSERT [dbo].[Records.ZipCode_LK] ([ZipCode], [City], [State]) VALUES (N'02120', N'Attleboro                ', N'MA')
INSERT [dbo].[Records.ZipCode_LK] ([ZipCode], [City], [State]) VALUES (N'02121', N'Boston                   ', N'MA')
INSERT [dbo].[Records.ZipCode_LK] ([ZipCode], [City], [State]) VALUES (N'02123', N'Dallas                   ', N'TX')
INSERT [dbo].[Records.ZipCode_LK] ([ZipCode], [City], [State]) VALUES (N'02125', N'HydePark                 ', N'MA')
INSERT [dbo].[Records.ZipCode_LK] ([ZipCode], [City], [State]) VALUES (N'02126', N'Waltham                  ', N'MA')
INSERT [dbo].[Records.ZipCode_LK] ([ZipCode], [City], [State]) VALUES (N'02129', N'SanDiego                 ', N'CA')
INSERT [dbo].[Records.ZipCode_LK] ([ZipCode], [City], [State]) VALUES (N'02221', N'Austin                   ', N'TX')
GO
SET IDENTITY_INSERT [dbo].[Office.Locations] ON 

INSERT [dbo].[Office.Locations] ([Location_ID], [St_address], [City], [State], [Phone], [Email], [emergency_number], [Emergency_contact], [ZipCode]) VALUES (1, N'72 HydePark', N'HydePark', N'CA', 372771772, N'k.sharma@dundermifflin.com', 121212, N'Kunind', N'01123')
INSERT [dbo].[Office.Locations] ([Location_ID], [St_address], [City], [State], [Phone], [Email], [emergency_number], [Emergency_contact], [ZipCode]) VALUES (2, N'82 Newbury', N'Boston', N'MA', 1232567892, N'p.jani@dundermifflin.com', 1234221, N'Parth', N'01122')
INSERT [dbo].[Office.Locations] ([Location_ID], [St_address], [City], [State], [Phone], [Email], [emergency_number], [Emergency_contact], [ZipCode]) VALUES (3, N'707 Boylston', N'Attleboro', N'FL', 1212367893, N's.hud@dundermifflin.com', 1004562, N'Stan', N'01122')
INSERT [dbo].[Office.Locations] ([Location_ID], [St_address], [City], [State], [Phone], [Email], [emergency_number], [Emergency_contact], [ZipCode]) VALUES (4, N'808 Fenway', N'Boston', N'NJ', 1212567894, N'j.lav@dundermifflin.com', 9234563, N'Jan', N'02120')
INSERT [dbo].[Office.Locations] ([Location_ID], [St_address], [City], [State], [Phone], [Email], [emergency_number], [Emergency_contact], [ZipCode]) VALUES (5, N'907 Anderson', N'Scranton', N'PA', 1234507895, N'r.ander@dundermifflin.com', 1304564, N'Roy', N'02221')
INSERT [dbo].[Office.Locations] ([Location_ID], [St_address], [City], [State], [Phone], [Email], [emergency_number], [Emergency_contact], [ZipCode]) VALUES (6, N'303 Jersey Heights', N'Jersey city', N'NJ', 1209567896, N't.parker@dundermifflin.com', 1994565, N'Todd', N'01122')
INSERT [dbo].[Office.Locations] ([Location_ID], [St_address], [City], [State], [Phone], [Email], [emergency_number], [Emergency_contact], [ZipCode]) VALUES (7, N'090 Gardner Street', N'New York', N'NY', 1277567897, N'r.how@dundermifflin.com', 1230966, N'Ryan', N'01123')
INSERT [dbo].[Office.Locations] ([Location_ID], [St_address], [City], [State], [Phone], [Email], [emergency_number], [Emergency_contact], [ZipCode]) VALUES (8, N'070 Bond street', N'Alte', N'NH', 1234876898, N'k.kapoor@dundermifflin.com', 1239867, N'Kel', N'02121')
INSERT [dbo].[Office.Locations] ([Location_ID], [St_address], [City], [State], [Phone], [Email], [emergency_number], [Emergency_contact], [ZipCode]) VALUES (9, N'210 Tremont street', N'Boston', N'MA', 1222567888, N'k.malon@dundermifflin.com', 1209568, N'Kevin', N'01123')
INSERT [dbo].[Office.Locations] ([Location_ID], [St_address], [City], [State], [Phone], [Email], [emergency_number], [Emergency_contact], [ZipCode]) VALUES (10, N'1 Tremont street', N'Boston', N'MA', 1234400888, N'm.rogers@dundermifflin.com', 21123, N'Mitta', N'02120')
SET IDENTITY_INSERT [dbo].[Office.Locations] OFF
GO
SET IDENTITY_INSERT [dbo].[Office.Rooms] ON 

INSERT [dbo].[Office.Rooms] ([Room_ID], [Room_num], [Room_locationID], [Room_type]) VALUES (1, 2, 1, N'meeting')
INSERT [dbo].[Office.Rooms] ([Room_ID], [Room_num], [Room_locationID], [Room_type]) VALUES (2, 14, 1, N'waiting room')
INSERT [dbo].[Office.Rooms] ([Room_ID], [Room_num], [Room_locationID], [Room_type]) VALUES (3, 56, 3, N'orthopedic')
INSERT [dbo].[Office.Rooms] ([Room_ID], [Room_num], [Room_locationID], [Room_type]) VALUES (4, 5, 4, N'reception')
INSERT [dbo].[Office.Rooms] ([Room_ID], [Room_num], [Room_locationID], [Room_type]) VALUES (5, 34, 8, N'storage')
INSERT [dbo].[Office.Rooms] ([Room_ID], [Room_num], [Room_locationID], [Room_type]) VALUES (6, 11, 2, N'waiting room')
INSERT [dbo].[Office.Rooms] ([Room_ID], [Room_num], [Room_locationID], [Room_type]) VALUES (7, 12, 2, N'meeting')
INSERT [dbo].[Office.Rooms] ([Room_ID], [Room_num], [Room_locationID], [Room_type]) VALUES (8, 1, 9, N'ot')
INSERT [dbo].[Office.Rooms] ([Room_ID], [Room_num], [Room_locationID], [Room_type]) VALUES (9, 9, 5, N'ot')
INSERT [dbo].[Office.Rooms] ([Room_ID], [Room_num], [Room_locationID], [Room_type]) VALUES (10, 7, 5, N'meeting')
SET IDENTITY_INSERT [dbo].[Office.Rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[Records.Dentists] ON 

INSERT [dbo].[Records.Dentists] ([Den_ID], [FName], [LName], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (1, N'Kunind', N'Sharma', N'DrDental', N'72 HydePark', N'HydePark', N'CA', 372771772, N'k.sharma@dundermifflin.com', 121212, N'01123')
INSERT [dbo].[Records.Dentists] ([Den_ID], [FName], [LName], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (2, N'Parth', N'Jani', N'Dr.Mifflin', N'82 Newbury', N'Boston', N'MA', 1232567892, N'p.jani@dundermifflin.com', 1234221, N'01122')
INSERT [dbo].[Records.Dentists] ([Den_ID], [FName], [LName], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (3, N'Stan', N'Hud', N'DocMifflin', N'707 Boylston', N'Attleboro', N'FL', 1212367893, N's.hud@dundermifflin.com', 1004562, N'01122')
INSERT [dbo].[Records.Dentists] ([Den_ID], [FName], [LName], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (4, N'Jan', N'Lav', N'DrDocMiff', N'808 Fenway', N'Boston', N'NJ', 1212567894, N'j.lav@dundermifflin.com', 9234563, N'02120')
INSERT [dbo].[Records.Dentists] ([Den_ID], [FName], [LName], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (5, N'Roy', N'Ander', N'DrFflin', N'907 Anderson', N'Scranton', N'PA', 1234507895, N'r.ander@dundermifflin.com', 1304564, N'02221')
INSERT [dbo].[Records.Dentists] ([Den_ID], [FName], [LName], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (6, N'Todd', N'Parker', N'DrDMiffin', N'303 Jersey Heights', N'Jersey city', N'NJ', 1209567896, N't.parker@dundermifflin.com', 1994565, N'01122')
INSERT [dbo].[Records.Dentists] ([Den_ID], [FName], [LName], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (7, N'Ryan', N'How', N'DunderMn', N'090 Gardner Street', N'New York', N'NY', 1277567897, N'r.how@dundermifflin.com', 1230966, N'01123')
INSERT [dbo].[Records.Dentists] ([Den_ID], [FName], [LName], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (8, N'Kel', N'Kapoor', N'Dunderlin', N'070 Bond street', N'Alte', N'NH', 1234876898, N'k.kapoor@dundermifflin.com', 1239867, N'02121')
INSERT [dbo].[Records.Dentists] ([Den_ID], [FName], [LName], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (9, N'Kevin', N'Malon', N'Dunderflin', N'210 Tremont street', N'Boston', N'MA', 1222567888, N'k.malon@dundermifflin.com', 1209568, N'01123')
INSERT [dbo].[Records.Dentists] ([Den_ID], [FName], [LName], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (10, N'Mitta', N'Rogers', N'Warehouse', N'1 Tremont street', N'Boston', N'MA', 1234400888, N'm.rogers@dundermifflin.com', 21123, N'02120')
SET IDENTITY_INSERT [dbo].[Records.Dentists] OFF
GO
SET IDENTITY_INSERT [dbo].[Records.Pharmacy] ON 

INSERT [dbo].[Records.Pharmacy] ([Pharmacy_ID], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (1, N'DrDental', N'72 HydePark', N'HydePark', N'CA', N'372771772', N'k.sharma@dundermifflin.com', 121212, N'01123')
INSERT [dbo].[Records.Pharmacy] ([Pharmacy_ID], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (2, N'Dr.Mifflin', N'82 Newbury', N'Boston', N'MA', N'1232567892', N'p.jani@dundermifflin.com', 1234221, N'01122')
INSERT [dbo].[Records.Pharmacy] ([Pharmacy_ID], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (3, N'DocMifflin', N'707 Boylston', N'Attleboro', N'FL', N'1212367893', N's.hud@dundermifflin.com', 1004562, N'01122')
INSERT [dbo].[Records.Pharmacy] ([Pharmacy_ID], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (4, N'DrDocMiff', N'808 Fenway', N'Boston', N'NJ', N'1212567894', N'j.lav@dundermifflin.com', 9234563, N'02120')
INSERT [dbo].[Records.Pharmacy] ([Pharmacy_ID], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (5, N'DrFflin', N'907 Anderson', N'Scranton', N'PA', N'1234507895', N'r.ander@dundermifflin.com', 1304564, N'02221')
INSERT [dbo].[Records.Pharmacy] ([Pharmacy_ID], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (6, N'DrDMiffin', N'303 Jersey Heights', N'Jersey city', N'NJ', N'1209567896', N't.parker@dundermifflin.com', 1994565, N'01122')
INSERT [dbo].[Records.Pharmacy] ([Pharmacy_ID], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (7, N'DunderMn', N'090 Gardner Street', N'New York', N'NY', N'1277567897', N'r.how@dundermifflin.com', 1230966, N'01123')
INSERT [dbo].[Records.Pharmacy] ([Pharmacy_ID], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (8, N'Dunderlin', N'070 Bond street', N'Alte', N'NH', N'1234876898', N'k.kapoor@dundermifflin.com', 1239867, N'02121')
INSERT [dbo].[Records.Pharmacy] ([Pharmacy_ID], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (9, N'Dunderflin', N'210 Tremont street', N'Boston', N'MA', N'1222567888', N'k.malon@dundermifflin.com', 1209568, N'01123')
INSERT [dbo].[Records.Pharmacy] ([Pharmacy_ID], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (10, N'Warehouse', N'1 Tremont street', N'Boston', N'MA', N'1234400888', N'm.rogers@dundermifflin.com', 21123, N'02120')
SET IDENTITY_INSERT [dbo].[Records.Pharmacy] OFF
GO
SET IDENTITY_INSERT [dbo].[Records.Physicians] ON 

INSERT [dbo].[Records.Physicians] ([Phys_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (1, N'Pam', N'Beesly', N'DunderMifflin', N'112 Roxbury', N'Boston', N'MA', 1234567890, N'p.beesly@dundermifflin.com', 123456, N'02120')
INSERT [dbo].[Records.Physicians] ([Phys_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (2, N'Jim', N'Halpert', N'Dunder', N'112 HydePark', N'HydePark', N'CA', 1234567891, N'j.halpert@dundermifflin.com', 123457, N'02121')
INSERT [dbo].[Records.Physicians] ([Phys_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (3, N'Dwight', N'Schrute', N'Mifflin', N'322 Newbury', N'Boston', N'CA', 1234567892, N'd.schrute@dundermifflin.com', 1234561, N'02221')
INSERT [dbo].[Records.Physicians] ([Phys_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (4, N'Stanley', N'Hudson', N'DrMifflin', N'77 Boylston', N'Attleboro', N'FL', 1234567893, N's.hudson@dundermifflin.com', 1234562, N'01122')
INSERT [dbo].[Records.Physicians] ([Phys_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (5, N'Jan', N'Lavinson', N'DrMiff', N'88 Fenway', N'Boston', N'NJ', 1234567894, N'j.lavinson@dundermifflin.com', 1234563, N'01123')
INSERT [dbo].[Records.Physicians] ([Phys_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (6, N'Roy', N'Anderson', N'Drflin', N'97 Anderson', N'Scranton', N'PA', 1234567895, N'r.anderson@dundermifflin.com', 1234564, N'02121')
INSERT [dbo].[Records.Physicians] ([Phys_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (7, N'Todd', N'Packer', N'DrMiffin', N'33 Jersey Heights', N'Jersey city', N'NJ', 1234567896, N't.packer@dundermifflin.com', 1234565, N'02120')
INSERT [dbo].[Records.Physicians] ([Phys_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (8, N'Ryan', N'Howard', N'DunderM', N'009 Gardner Street', N'New York', N'NY', 1234567897, N'r.howard@dundermifflin.com', 1234566, N'02221')
INSERT [dbo].[Records.Physicians] ([Phys_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (10, N'Kevin', N'Malone', N'Dunderflin', N'0021 Tremont street', N'Boston', N'MA', 1234567888, N'k.malone@dundermifflin.com', 1234568, N'01123')
INSERT [dbo].[Records.Physicians] ([Phys_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (11, N'Kelly', N'Kapoor', N'Dunderlin', N'007 Bond street', N'Alte', N'NH', 1234567898, N'k.kapoor@dundermifflin.com', 1234567, N'02121')
SET IDENTITY_INSERT [dbo].[Records.Physicians] OFF
GO
SET IDENTITY_INSERT [dbo].[Patient.personal_info] ON 

INSERT [dbo].[Patient.personal_info] ([Patient_ID], [Seco_den_id], [FName], [LName], [DOB], [Phone_num], [Email], [Guardian_contact_name], [Guardian_contact_num], [Emergency_contact_name], [Emergency_contact_num], [Emergency_contact_rel], [Prim_den_ID], [Prim_phys_ID], [Prim_phar_ID], [Date_last_visit], [Is_allergic], [Is_consented], [Preferred_den_location_ID]) VALUES (1, 2, N'Amy', N'Santiago', CAST(N'1989-10-23' AS Date), 225673432, N'amy@gmail.com', N'Scully', 65221890, N'Raymond', 44267834, N'Dad', 1, 5, 8, CAST(N'2021-11-03' AS Date), 1, 1, 3)
INSERT [dbo].[Patient.personal_info] ([Patient_ID], [Seco_den_id], [FName], [LName], [DOB], [Phone_num], [Email], [Guardian_contact_name], [Guardian_contact_num], [Emergency_contact_name], [Emergency_contact_num], [Emergency_contact_rel], [Prim_den_ID], [Prim_phys_ID], [Prim_phar_ID], [Date_last_visit], [Is_allergic], [Is_consented], [Preferred_den_location_ID]) VALUES (2, 4, N'Amy', N'Santiago', CAST(N'1989-10-23' AS Date), 225673432, N'amy@gmail.com', N'Scully', 65221890, N'Raymond', 44267834, N'Dad', 1, 5, 8, CAST(N'2021-11-03' AS Date), 1, 1, 3)
INSERT [dbo].[Patient.personal_info] ([Patient_ID], [Seco_den_id], [FName], [LName], [DOB], [Phone_num], [Email], [Guardian_contact_name], [Guardian_contact_num], [Emergency_contact_name], [Emergency_contact_num], [Emergency_contact_rel], [Prim_den_ID], [Prim_phys_ID], [Prim_phar_ID], [Date_last_visit], [Is_allergic], [Is_consented], [Preferred_den_location_ID]) VALUES (3, 4, N'Am', N'S', CAST(N'1990-10-23' AS Date), 225673432, N'amy@gmail.com', N'', 0, N'Raymond', 44267834, N'Dad', 1, 5, 8, CAST(N'2021-11-03' AS Date), 1, 1, 3)
INSERT [dbo].[Patient.personal_info] ([Patient_ID], [Seco_den_id], [FName], [LName], [DOB], [Phone_num], [Email], [Guardian_contact_name], [Guardian_contact_num], [Emergency_contact_name], [Emergency_contact_num], [Emergency_contact_rel], [Prim_den_ID], [Prim_phys_ID], [Prim_phar_ID], [Date_last_visit], [Is_allergic], [Is_consented], [Preferred_den_location_ID]) VALUES (4, 1, N'Amyy', N'San', CAST(N'1989-04-03' AS Date), 225673432, N'amy@gmail.com', N'Scully', 65221890, N'Raymond', 44267834, N'Dad', 1, 5, 8, CAST(N'2021-11-03' AS Date), 1, 1, 3)
INSERT [dbo].[Patient.personal_info] ([Patient_ID], [Seco_den_id], [FName], [LName], [DOB], [Phone_num], [Email], [Guardian_contact_name], [Guardian_contact_num], [Emergency_contact_name], [Emergency_contact_num], [Emergency_contact_rel], [Prim_den_ID], [Prim_phys_ID], [Prim_phar_ID], [Date_last_visit], [Is_allergic], [Is_consented], [Preferred_den_location_ID]) VALUES (5, 2, N'A', N'Santi', CAST(N'1989-10-02' AS Date), 225673432, N'amy@gmail.com', N'Scully', 65221890, N'Raymond', 44267834, N'Dad', 1, 5, 8, CAST(N'2021-11-03' AS Date), 1, 1, 3)
INSERT [dbo].[Patient.personal_info] ([Patient_ID], [Seco_den_id], [FName], [LName], [DOB], [Phone_num], [Email], [Guardian_contact_name], [Guardian_contact_num], [Emergency_contact_name], [Emergency_contact_num], [Emergency_contact_rel], [Prim_den_ID], [Prim_phys_ID], [Prim_phar_ID], [Date_last_visit], [Is_allergic], [Is_consented], [Preferred_den_location_ID]) VALUES (6, 7, N'y', N'ago', CAST(N'1978-11-11' AS Date), 225673432, N'amy@gmail.com', N'Scully', 65221890, N'Raymond', 44267834, N'Dad', 1, 5, 8, CAST(N'2021-11-03' AS Date), 1, 1, 3)
INSERT [dbo].[Patient.personal_info] ([Patient_ID], [Seco_den_id], [FName], [LName], [DOB], [Phone_num], [Email], [Guardian_contact_name], [Guardian_contact_num], [Emergency_contact_name], [Emergency_contact_num], [Emergency_contact_rel], [Prim_den_ID], [Prim_phys_ID], [Prim_phar_ID], [Date_last_visit], [Is_allergic], [Is_consented], [Preferred_den_location_ID]) VALUES (7, 8, N'my', N'Santia', CAST(N'1999-11-13' AS Date), 225673432, N'amy@gmail.com', N'', 0, N'Raymond', 44267834, N'Dad', 1, 5, 8, CAST(N'2021-11-03' AS Date), 1, 1, 3)
INSERT [dbo].[Patient.personal_info] ([Patient_ID], [Seco_den_id], [FName], [LName], [DOB], [Phone_num], [Email], [Guardian_contact_name], [Guardian_contact_num], [Emergency_contact_name], [Emergency_contact_num], [Emergency_contact_rel], [Prim_den_ID], [Prim_phys_ID], [Prim_phar_ID], [Date_last_visit], [Is_allergic], [Is_consented], [Preferred_den_location_ID]) VALUES (8, 5, N'm', N'Santiag', CAST(N'1990-10-16' AS Date), 225673432, N'amy@gmail.com', N'Scully', 65221890, N'Raymond', 44267834, N'Dad', 1, 5, 8, CAST(N'2021-11-03' AS Date), 1, 1, 3)
INSERT [dbo].[Patient.personal_info] ([Patient_ID], [Seco_den_id], [FName], [LName], [DOB], [Phone_num], [Email], [Guardian_contact_name], [Guardian_contact_num], [Emergency_contact_name], [Emergency_contact_num], [Emergency_contact_rel], [Prim_den_ID], [Prim_phys_ID], [Prim_phar_ID], [Date_last_visit], [Is_allergic], [Is_consented], [Preferred_den_location_ID]) VALUES (9, 5, N'Amy', N'Santiagoo', CAST(N'1970-10-23' AS Date), 225673432, N'amy@gmail.com', N'Scully', 65221890, N'Raymond', 44267834, N'Dad', 1, 5, 8, CAST(N'2021-11-03' AS Date), 1, 1, 3)
INSERT [dbo].[Patient.personal_info] ([Patient_ID], [Seco_den_id], [FName], [LName], [DOB], [Phone_num], [Email], [Guardian_contact_name], [Guardian_contact_num], [Emergency_contact_name], [Emergency_contact_num], [Emergency_contact_rel], [Prim_den_ID], [Prim_phys_ID], [Prim_phar_ID], [Date_last_visit], [Is_allergic], [Is_consented], [Preferred_den_location_ID]) VALUES (10, 3, N'Amy', N'Sa', CAST(N'1989-10-23' AS Date), 225673432, N'amy@gmail.com', N'Scully', 65221890, N'Raymond', 44267834, N'Dad', 1, 5, 8, CAST(N'2021-11-03' AS Date), 1, 1, 3)
SET IDENTITY_INSERT [dbo].[Patient.personal_info] OFF
GO
SET IDENTITY_INSERT [dbo].[Provider.Specializations] ON 

INSERT [dbo].[Provider.Specializations] ([Specialization_ID], [Specialization_name]) VALUES (1, N'Endodontist')
INSERT [dbo].[Provider.Specializations] ([Specialization_ID], [Specialization_name]) VALUES (2, N'Orthodontist')
INSERT [dbo].[Provider.Specializations] ([Specialization_ID], [Specialization_name]) VALUES (3, N'Prosthodontics')
INSERT [dbo].[Provider.Specializations] ([Specialization_ID], [Specialization_name]) VALUES (4, N'Periodontics')
INSERT [dbo].[Provider.Specializations] ([Specialization_ID], [Specialization_name]) VALUES (5, N'Biodontics')
INSERT [dbo].[Provider.Specializations] ([Specialization_ID], [Specialization_name]) VALUES (6, N'Calculus')
INSERT [dbo].[Provider.Specializations] ([Specialization_ID], [Specialization_name]) VALUES (7, N'Bruxism')
INSERT [dbo].[Provider.Specializations] ([Specialization_ID], [Specialization_name]) VALUES (8, N'Occlusion')
INSERT [dbo].[Provider.Specializations] ([Specialization_ID], [Specialization_name]) VALUES (9, N'Teledentistry')
INSERT [dbo].[Provider.Specializations] ([Specialization_ID], [Specialization_name]) VALUES (10, N'Xerostomia')
SET IDENTITY_INSERT [dbo].[Provider.Specializations] OFF
GO
SET IDENTITY_INSERT [dbo].[Records.Hygenists] ON 

INSERT [dbo].[Records.Hygenists] ([Hyg_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (1, N'Kunind', N'Sharma', N'DrDental', N'72 HydePark', N'HydePark', N'CA', 372771772, N'k.sharma@dundermifflin.com', 121212, N'01123')
INSERT [dbo].[Records.Hygenists] ([Hyg_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (2, N'Parth', N'Jani', N'Dr.Mifflin', N'82 Newbury', N'Boston', N'MA', 1232567892, N'p.jani@dundermifflin.com', 1234221, N'01122')
INSERT [dbo].[Records.Hygenists] ([Hyg_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (3, N'Stan', N'Hud', N'DocMifflin', N'707 Boylston', N'Attleboro', N'FL', 1212367893, N's.hud@dundermifflin.com', 1004562, N'01122')
INSERT [dbo].[Records.Hygenists] ([Hyg_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (4, N'Jan', N'Lav', N'DrDocMiff', N'808 Fenway', N'Boston', N'NJ', 1212567894, N'j.lav@dundermifflin.com', 9234563, N'02120')
INSERT [dbo].[Records.Hygenists] ([Hyg_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (5, N'Roy', N'Ander', N'DrFflin', N'907 Anderson', N'Scranton', N'PA', 1234507895, N'r.ander@dundermifflin.com', 1304564, N'02221')
INSERT [dbo].[Records.Hygenists] ([Hyg_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (6, N'Todd', N'Parker', N'DrDMiffin', N'303 Jersey Heights', N'Jersey city', N'NJ', 1209567896, N't.parker@dundermifflin.com', 1994565, N'01122')
INSERT [dbo].[Records.Hygenists] ([Hyg_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (7, N'Ryan', N'How', N'DunderMn', N'090 Gardner Street', N'New York', N'NY', 1277567897, N'r.how@dundermifflin.com', 1230966, N'01123')
INSERT [dbo].[Records.Hygenists] ([Hyg_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (8, N'Kel', N'Kapoor', N'Dunderlin', N'070 Bond street', N'Alte', N'NH', 1234876898, N'k.kapoor@dundermifflin.com', 1239867, N'02121')
INSERT [dbo].[Records.Hygenists] ([Hyg_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (9, N'Kevin', N'Malon', N'Dunderflin', N'210 Tremont street', N'Boston', N'MA', 1222567888, N'k.malon@dundermifflin.com', 1209568, N'01123')
INSERT [dbo].[Records.Hygenists] ([Hyg_ID], [Fname], [Lname], [Office_name], [St_address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (10, N'Mitta', N'Rogers', N'Warehouse', N'1 Tremont street', N'Boston', N'MA', 1234400888, N'm.rogers@dundermifflin.com', 21123, N'02120')
SET IDENTITY_INSERT [dbo].[Records.Hygenists] OFF
GO
SET IDENTITY_INSERT [dbo].[Provider.employee] ON 

INSERT [dbo].[Provider.employee] ([Emp_ID], [Den_ID], [Hyg_ID], [Location_ID], [Fname], [Lname], [Job_title], [Typical_avail_start], [Typical_avail_end], [Specialization_ID], [Phone_number]) VALUES (1, 4, 1, 2, N'Jake', N'Peralta', N'Receptionist', 7, 11, 2, 234112567)
INSERT [dbo].[Provider.employee] ([Emp_ID], [Den_ID], [Hyg_ID], [Location_ID], [Fname], [Lname], [Job_title], [Typical_avail_start], [Typical_avail_end], [Specialization_ID], [Phone_number]) VALUES (2, 1, 2, 7, N'Jakcob', N'Peralta', N'Dentist', 17, 21, 5, 234112567)
INSERT [dbo].[Provider.employee] ([Emp_ID], [Den_ID], [Hyg_ID], [Location_ID], [Fname], [Lname], [Job_title], [Typical_avail_start], [Typical_avail_end], [Specialization_ID], [Phone_number]) VALUES (3, 6, 2, 7, N'Joe', N'Peralta', N'Receptionist', 7, 14, 9, 234112567)
INSERT [dbo].[Provider.employee] ([Emp_ID], [Den_ID], [Hyg_ID], [Location_ID], [Fname], [Lname], [Job_title], [Typical_avail_start], [Typical_avail_end], [Specialization_ID], [Phone_number]) VALUES (4, 7, 1, 8, N'Jhonny', N'Peralta', N'Dentist', 17, 24, 2, 234112567)
INSERT [dbo].[Provider.employee] ([Emp_ID], [Den_ID], [Hyg_ID], [Location_ID], [Fname], [Lname], [Job_title], [Typical_avail_start], [Typical_avail_end], [Specialization_ID], [Phone_number]) VALUES (5, 2, 6, 9, N'J', N'Peralta', N'Receptionist', 2, 6, 4, 234112567)
INSERT [dbo].[Provider.employee] ([Emp_ID], [Den_ID], [Hyg_ID], [Location_ID], [Fname], [Lname], [Job_title], [Typical_avail_start], [Typical_avail_end], [Specialization_ID], [Phone_number]) VALUES (6, 2, 8, 5, N'Josh', N'Peralta', N'Dentist', 7, 11, 9, 234112567)
INSERT [dbo].[Provider.employee] ([Emp_ID], [Den_ID], [Hyg_ID], [Location_ID], [Fname], [Lname], [Job_title], [Typical_avail_start], [Typical_avail_end], [Specialization_ID], [Phone_number]) VALUES (7, 4, 9, 4, N'JJ', N'Peralta', N'Receptionist', 8, 12, 8, 234112567)
INSERT [dbo].[Provider.employee] ([Emp_ID], [Den_ID], [Hyg_ID], [Location_ID], [Fname], [Lname], [Job_title], [Typical_avail_start], [Typical_avail_end], [Specialization_ID], [Phone_number]) VALUES (8, 5, 4, 6, N'Jk', N'Peralta', N'Dentist', 7, 11, 2, 234112567)
INSERT [dbo].[Provider.employee] ([Emp_ID], [Den_ID], [Hyg_ID], [Location_ID], [Fname], [Lname], [Job_title], [Typical_avail_start], [Typical_avail_end], [Specialization_ID], [Phone_number]) VALUES (9, 6, 4, 3, N'JM', N'Peralta', N'Receptionist', 7, 11, 3, 234112567)
INSERT [dbo].[Provider.employee] ([Emp_ID], [Den_ID], [Hyg_ID], [Location_ID], [Fname], [Lname], [Job_title], [Typical_avail_start], [Typical_avail_end], [Specialization_ID], [Phone_number]) VALUES (10, 9, 3, 2, N'Ja', N'Peralta', N'Nurse', 7, 21, 4, 234112567)
SET IDENTITY_INSERT [dbo].[Provider.employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Records.Scans] ON 

INSERT [dbo].[Records.Scans] ([Scan_ID], [Patient_ID], [Scan_Name], [scan_link], [Upload_date]) VALUES (1, 1, N'insurance', N'www.ourserver.com/file02', CAST(N'2001-10-10' AS Date))
INSERT [dbo].[Records.Scans] ([Scan_ID], [Patient_ID], [Scan_Name], [scan_link], [Upload_date]) VALUES (2, 2, N'insurance', N'www.ourserver.com/file12', CAST(N'2001-10-10' AS Date))
INSERT [dbo].[Records.Scans] ([Scan_ID], [Patient_ID], [Scan_Name], [scan_link], [Upload_date]) VALUES (3, 3, N'insurance', N'www.ourserver.com/file33', CAST(N'2001-10-11' AS Date))
INSERT [dbo].[Records.Scans] ([Scan_ID], [Patient_ID], [Scan_Name], [scan_link], [Upload_date]) VALUES (4, 4, N'insurance', N'www.ourserver.com/file11', CAST(N'2001-10-12' AS Date))
INSERT [dbo].[Records.Scans] ([Scan_ID], [Patient_ID], [Scan_Name], [scan_link], [Upload_date]) VALUES (5, 5, N'insurance', N'www.ourserver.com/file334', CAST(N'2001-10-08' AS Date))
INSERT [dbo].[Records.Scans] ([Scan_ID], [Patient_ID], [Scan_Name], [scan_link], [Upload_date]) VALUES (6, 3, N'insurance', N'www.ourserver.com/file012', CAST(N'2001-10-11' AS Date))
INSERT [dbo].[Records.Scans] ([Scan_ID], [Patient_ID], [Scan_Name], [scan_link], [Upload_date]) VALUES (7, 6, N'insurance', N'www.ourserver.com/file043', CAST(N'2001-10-12' AS Date))
INSERT [dbo].[Records.Scans] ([Scan_ID], [Patient_ID], [Scan_Name], [scan_link], [Upload_date]) VALUES (8, 7, N'insurance', N'www.ourserver.com/file039', CAST(N'2004-10-10' AS Date))
INSERT [dbo].[Records.Scans] ([Scan_ID], [Patient_ID], [Scan_Name], [scan_link], [Upload_date]) VALUES (9, 8, N'insurance', N'www.ourserver.com/file030', CAST(N'2003-10-11' AS Date))
INSERT [dbo].[Records.Scans] ([Scan_ID], [Patient_ID], [Scan_Name], [scan_link], [Upload_date]) VALUES (10, 3, N'insurance', N'www.ourserver.com/file0322', CAST(N'2002-10-09' AS Date))
INSERT [dbo].[Records.Scans] ([Scan_ID], [Patient_ID], [Scan_Name], [scan_link], [Upload_date]) VALUES (11, 4, N'insurance', N'www.ourserver.com/file0312', CAST(N'2002-10-07' AS Date))
SET IDENTITY_INSERT [dbo].[Records.Scans] OFF
GO
SET IDENTITY_INSERT [dbo].[Records.Teeth] ON 

INSERT [dbo].[Records.Teeth] ([Teeth_ID], [Teeth_num], [Teeth_name]) VALUES (1, 1, N'Molar')
INSERT [dbo].[Records.Teeth] ([Teeth_ID], [Teeth_num], [Teeth_name]) VALUES (2, 2, N'F_Molar')
INSERT [dbo].[Records.Teeth] ([Teeth_ID], [Teeth_num], [Teeth_name]) VALUES (3, 3, N'S_Molar')
INSERT [dbo].[Records.Teeth] ([Teeth_ID], [Teeth_num], [Teeth_name]) VALUES (4, 4, N'Premolar')
INSERT [dbo].[Records.Teeth] ([Teeth_ID], [Teeth_num], [Teeth_name]) VALUES (5, 5, N'Canine')
INSERT [dbo].[Records.Teeth] ([Teeth_ID], [Teeth_num], [Teeth_name]) VALUES (6, 6, N'Incisors')
INSERT [dbo].[Records.Teeth] ([Teeth_ID], [Teeth_num], [Teeth_name]) VALUES (7, 7, N'F_premolar')
INSERT [dbo].[Records.Teeth] ([Teeth_ID], [Teeth_num], [Teeth_name]) VALUES (8, 8, N'S_premolar')
INSERT [dbo].[Records.Teeth] ([Teeth_ID], [Teeth_num], [Teeth_name]) VALUES (9, 9, N'T_Molar')
INSERT [dbo].[Records.Teeth] ([Teeth_ID], [Teeth_num], [Teeth_name]) VALUES (10, 10, N'T_premolar')
SET IDENTITY_INSERT [dbo].[Records.Teeth] OFF
GO
SET IDENTITY_INSERT [dbo].[Office.Appointment] ON 

INSERT [dbo].[Office.Appointment] ([Appt_ID], [Patient_ID], [Prim_Emp_ID], [Secondary_emp_ID], [Room_ID], [Apt_type], [Appt_Date], [Appt_start_time], [Appt_end_time], [Appt_teeth_ID], [Scan_ID], [Appt_result], [Cancellation_ID], [Total_cost], [Insurance_pays], [Patient_pays]) VALUES (3, 1, 1, 2, 4, N'Consultation', CAST(N'2020-09-09' AS Date), 9, 10, 2, 4, N'', 5, 50, 25, 25)
INSERT [dbo].[Office.Appointment] ([Appt_ID], [Patient_ID], [Prim_Emp_ID], [Secondary_emp_ID], [Room_ID], [Apt_type], [Appt_Date], [Appt_start_time], [Appt_end_time], [Appt_teeth_ID], [Scan_ID], [Appt_result], [Cancellation_ID], [Total_cost], [Insurance_pays], [Patient_pays]) VALUES (4, 1, 1, 2, 4, N'Consultation', CAST(N'2020-09-08' AS Date), 9, 10, 2, 4, N'', 5, 50, 25, 25)
INSERT [dbo].[Office.Appointment] ([Appt_ID], [Patient_ID], [Prim_Emp_ID], [Secondary_emp_ID], [Room_ID], [Apt_type], [Appt_Date], [Appt_start_time], [Appt_end_time], [Appt_teeth_ID], [Scan_ID], [Appt_result], [Cancellation_ID], [Total_cost], [Insurance_pays], [Patient_pays]) VALUES (5, 2, 3, 2, 4, N'Consultation', CAST(N'2020-09-07' AS Date), 9, 10, 2, 4, N'', 5, 50, 25, 25)
INSERT [dbo].[Office.Appointment] ([Appt_ID], [Patient_ID], [Prim_Emp_ID], [Secondary_emp_ID], [Room_ID], [Apt_type], [Appt_Date], [Appt_start_time], [Appt_end_time], [Appt_teeth_ID], [Scan_ID], [Appt_result], [Cancellation_ID], [Total_cost], [Insurance_pays], [Patient_pays]) VALUES (6, 4, 5, 2, 4, N'Consultation', CAST(N'2020-09-06' AS Date), 9, 10, 2, 4, N'', 5, 50, 25, 25)
INSERT [dbo].[Office.Appointment] ([Appt_ID], [Patient_ID], [Prim_Emp_ID], [Secondary_emp_ID], [Room_ID], [Apt_type], [Appt_Date], [Appt_start_time], [Appt_end_time], [Appt_teeth_ID], [Scan_ID], [Appt_result], [Cancellation_ID], [Total_cost], [Insurance_pays], [Patient_pays]) VALUES (7, 1, 1, 2, 4, N'Consultation', CAST(N'2020-09-04' AS Date), 9, 10, 2, 4, N'', 5, 50, 25, 25)
INSERT [dbo].[Office.Appointment] ([Appt_ID], [Patient_ID], [Prim_Emp_ID], [Secondary_emp_ID], [Room_ID], [Apt_type], [Appt_Date], [Appt_start_time], [Appt_end_time], [Appt_teeth_ID], [Scan_ID], [Appt_result], [Cancellation_ID], [Total_cost], [Insurance_pays], [Patient_pays]) VALUES (8, 1, 1, 2, 4, N'Consultation', CAST(N'2020-09-03' AS Date), 9, 10, 2, 4, N'', 5, 50, 25, 25)
INSERT [dbo].[Office.Appointment] ([Appt_ID], [Patient_ID], [Prim_Emp_ID], [Secondary_emp_ID], [Room_ID], [Apt_type], [Appt_Date], [Appt_start_time], [Appt_end_time], [Appt_teeth_ID], [Scan_ID], [Appt_result], [Cancellation_ID], [Total_cost], [Insurance_pays], [Patient_pays]) VALUES (9, 1, 1, 2, 4, N'Surgery', CAST(N'2020-09-09' AS Date), 2, 10, 2, 4, N'', 5, 50, 25, 25)
INSERT [dbo].[Office.Appointment] ([Appt_ID], [Patient_ID], [Prim_Emp_ID], [Secondary_emp_ID], [Room_ID], [Apt_type], [Appt_Date], [Appt_start_time], [Appt_end_time], [Appt_teeth_ID], [Scan_ID], [Appt_result], [Cancellation_ID], [Total_cost], [Insurance_pays], [Patient_pays]) VALUES (10, 1, 1, 2, 4, N'Surgery', CAST(N'2020-09-01' AS Date), 9, 10, 2, 4, N'', 5, 50, 25, 25)
INSERT [dbo].[Office.Appointment] ([Appt_ID], [Patient_ID], [Prim_Emp_ID], [Secondary_emp_ID], [Room_ID], [Apt_type], [Appt_Date], [Appt_start_time], [Appt_end_time], [Appt_teeth_ID], [Scan_ID], [Appt_result], [Cancellation_ID], [Total_cost], [Insurance_pays], [Patient_pays]) VALUES (11, 1, 1, 2, 4, N'Surgery', CAST(N'2020-08-08' AS Date), 9, 10, 2, 4, N'', 5, 50, 25, 25)
INSERT [dbo].[Office.Appointment] ([Appt_ID], [Patient_ID], [Prim_Emp_ID], [Secondary_emp_ID], [Room_ID], [Apt_type], [Appt_Date], [Appt_start_time], [Appt_end_time], [Appt_teeth_ID], [Scan_ID], [Appt_result], [Cancellation_ID], [Total_cost], [Insurance_pays], [Patient_pays]) VALUES (12, 1, 1, 2, 4, N'Surgery', CAST(N'2020-08-09' AS Date), 9, 10, 2, 4, N'', 5, 50, 25, 25)
INSERT [dbo].[Office.Appointment] ([Appt_ID], [Patient_ID], [Prim_Emp_ID], [Secondary_emp_ID], [Room_ID], [Apt_type], [Appt_Date], [Appt_start_time], [Appt_end_time], [Appt_teeth_ID], [Scan_ID], [Appt_result], [Cancellation_ID], [Total_cost], [Insurance_pays], [Patient_pays]) VALUES (13, 1, 1, 2, 4, N'Surgery', CAST(N'2020-03-09' AS Date), 9, 10, 2, 4, N'', 5, 50, 25, 25)
SET IDENTITY_INSERT [dbo].[Office.Appointment] OFF
GO
SET IDENTITY_INSERT [dbo].[Records.Medications] ON 

INSERT [dbo].[Records.Medications] ([Med_ID], [Medication_name]) VALUES (1, N'Advil')
INSERT [dbo].[Records.Medications] ([Med_ID], [Medication_name]) VALUES (2, N'Ibuprofen')
INSERT [dbo].[Records.Medications] ([Med_ID], [Medication_name]) VALUES (3, N'Aspirin')
INSERT [dbo].[Records.Medications] ([Med_ID], [Medication_name]) VALUES (4, N'Glucagon')
INSERT [dbo].[Records.Medications] ([Med_ID], [Medication_name]) VALUES (5, N'Penicillin')
INSERT [dbo].[Records.Medications] ([Med_ID], [Medication_name]) VALUES (6, N'Amoxicillin')
INSERT [dbo].[Records.Medications] ([Med_ID], [Medication_name]) VALUES (7, N'Cephalexin')
INSERT [dbo].[Records.Medications] ([Med_ID], [Medication_name]) VALUES (8, N'Clindamycin')
INSERT [dbo].[Records.Medications] ([Med_ID], [Medication_name]) VALUES (9, N'Azithromycin')
INSERT [dbo].[Records.Medications] ([Med_ID], [Medication_name]) VALUES (10, N'Smile Gel')
SET IDENTITY_INSERT [dbo].[Records.Medications] OFF
GO
INSERT [dbo].[Patient.pharm_history] ([Patient_ID], [Prescribed_Med_ID], [Prescription_strength(mg)], [prescribed_by_ID], [Prescribed_by_name], [Prescribed_location_ID], [Prescribed_pharmacy_ID]) VALUES (1, 4, 500, 2, N'Dr. Jeet', 7, 2)
INSERT [dbo].[Patient.pharm_history] ([Patient_ID], [Prescribed_Med_ID], [Prescription_strength(mg)], [prescribed_by_ID], [Prescribed_by_name], [Prescribed_location_ID], [Prescribed_pharmacy_ID]) VALUES (1, 3, 100, 2, N'Dr. Jeet', 7, 2)
INSERT [dbo].[Patient.pharm_history] ([Patient_ID], [Prescribed_Med_ID], [Prescription_strength(mg)], [prescribed_by_ID], [Prescribed_by_name], [Prescribed_location_ID], [Prescribed_pharmacy_ID]) VALUES (2, 4, 100, 2, N'Dr. Jeet', 7, 2)
INSERT [dbo].[Patient.pharm_history] ([Patient_ID], [Prescribed_Med_ID], [Prescription_strength(mg)], [prescribed_by_ID], [Prescribed_by_name], [Prescribed_location_ID], [Prescribed_pharmacy_ID]) VALUES (4, 8, 250, 2, N'Dr. Jeet', 7, 2)
INSERT [dbo].[Patient.pharm_history] ([Patient_ID], [Prescribed_Med_ID], [Prescription_strength(mg)], [prescribed_by_ID], [Prescribed_by_name], [Prescribed_location_ID], [Prescribed_pharmacy_ID]) VALUES (6, 4, 5, 2, N'Dr. Jeet', 7, 2)
INSERT [dbo].[Patient.pharm_history] ([Patient_ID], [Prescribed_Med_ID], [Prescription_strength(mg)], [prescribed_by_ID], [Prescribed_by_name], [Prescribed_location_ID], [Prescribed_pharmacy_ID]) VALUES (7, 3, 100, 2, N'Dr. Jeet', 7, 2)
INSERT [dbo].[Patient.pharm_history] ([Patient_ID], [Prescribed_Med_ID], [Prescription_strength(mg)], [prescribed_by_ID], [Prescribed_by_name], [Prescribed_location_ID], [Prescribed_pharmacy_ID]) VALUES (9, 6, 100, 2, N'Dr. Jeet', 7, 2)
INSERT [dbo].[Patient.pharm_history] ([Patient_ID], [Prescribed_Med_ID], [Prescription_strength(mg)], [prescribed_by_ID], [Prescribed_by_name], [Prescribed_location_ID], [Prescribed_pharmacy_ID]) VALUES (5, 4, 100, 2, N'Dr. Jeet', 7, 2)
INSERT [dbo].[Patient.pharm_history] ([Patient_ID], [Prescribed_Med_ID], [Prescription_strength(mg)], [prescribed_by_ID], [Prescribed_by_name], [Prescribed_location_ID], [Prescribed_pharmacy_ID]) VALUES (8, 2, 100, 2, N'Dr. Jeet', 7, 2)
GO
INSERT [dbo].[Office.Employee_availability] ([Emp_ID], [Date], [Start_time], [End_time], [Available], [In_room_ID]) VALUES (2, CAST(N'2021-12-15' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:15:00' AS Time), 0, 4)
INSERT [dbo].[Office.Employee_availability] ([Emp_ID], [Date], [Start_time], [End_time], [Available], [In_room_ID]) VALUES (1, CAST(N'2021-12-11' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:15:00' AS Time), 0, 4)
INSERT [dbo].[Office.Employee_availability] ([Emp_ID], [Date], [Start_time], [End_time], [Available], [In_room_ID]) VALUES (1, CAST(N'2021-12-12' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:15:00' AS Time), 1, 1)
INSERT [dbo].[Office.Employee_availability] ([Emp_ID], [Date], [Start_time], [End_time], [Available], [In_room_ID]) VALUES (4, CAST(N'2021-12-03' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:15:00' AS Time), 0, 2)
INSERT [dbo].[Office.Employee_availability] ([Emp_ID], [Date], [Start_time], [End_time], [Available], [In_room_ID]) VALUES (3, CAST(N'2021-12-09' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:15:00' AS Time), 1, 4)
INSERT [dbo].[Office.Employee_availability] ([Emp_ID], [Date], [Start_time], [End_time], [Available], [In_room_ID]) VALUES (2, CAST(N'2021-12-13' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:15:00' AS Time), 1, 3)
INSERT [dbo].[Office.Employee_availability] ([Emp_ID], [Date], [Start_time], [End_time], [Available], [In_room_ID]) VALUES (5, CAST(N'2021-12-14' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:15:00' AS Time), 0, 4)
INSERT [dbo].[Office.Employee_availability] ([Emp_ID], [Date], [Start_time], [End_time], [Available], [In_room_ID]) VALUES (3, CAST(N'2021-12-10' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:15:00' AS Time), 0, 8)
INSERT [dbo].[Office.Employee_availability] ([Emp_ID], [Date], [Start_time], [End_time], [Available], [In_room_ID]) VALUES (2, CAST(N'2021-12-05' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:15:00' AS Time), 0, 4)
INSERT [dbo].[Office.Employee_availability] ([Emp_ID], [Date], [Start_time], [End_time], [Available], [In_room_ID]) VALUES (1, CAST(N'2021-12-04' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:15:00' AS Time), 1, 5)
GO
SET IDENTITY_INSERT [dbo].[Office.Equipment] ON 

INSERT [dbo].[Office.Equipment] ([Equip_ID], [Equipment_name], [Equipment_RoomID]) VALUES (1, N'gloves', 3)
INSERT [dbo].[Office.Equipment] ([Equip_ID], [Equipment_name], [Equipment_RoomID]) VALUES (2, N'gloves', 1)
INSERT [dbo].[Office.Equipment] ([Equip_ID], [Equipment_name], [Equipment_RoomID]) VALUES (3, N'gloves', 4)
INSERT [dbo].[Office.Equipment] ([Equip_ID], [Equipment_name], [Equipment_RoomID]) VALUES (4, N'gloves', 4)
INSERT [dbo].[Office.Equipment] ([Equip_ID], [Equipment_name], [Equipment_RoomID]) VALUES (5, N'gloves', 2)
INSERT [dbo].[Office.Equipment] ([Equip_ID], [Equipment_name], [Equipment_RoomID]) VALUES (6, N'gloves', 6)
INSERT [dbo].[Office.Equipment] ([Equip_ID], [Equipment_name], [Equipment_RoomID]) VALUES (7, N'gloves', 5)
INSERT [dbo].[Office.Equipment] ([Equip_ID], [Equipment_name], [Equipment_RoomID]) VALUES (8, N'gloves', 8)
INSERT [dbo].[Office.Equipment] ([Equip_ID], [Equipment_name], [Equipment_RoomID]) VALUES (9, N'gloves', 7)
INSERT [dbo].[Office.Equipment] ([Equip_ID], [Equipment_name], [Equipment_RoomID]) VALUES (10, N'gloves', 6)
SET IDENTITY_INSERT [dbo].[Office.Equipment] OFF
GO
INSERT [dbo].[Office.Room_Availability] ([Room_ID], [Date], [Start_time], [End_time], [Available], [Booked_by_prim_emp_ID]) VALUES (1, CAST(N'2021-12-11' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time), 0, 4)
INSERT [dbo].[Office.Room_Availability] ([Room_ID], [Date], [Start_time], [End_time], [Available], [Booked_by_prim_emp_ID]) VALUES (3, CAST(N'2021-12-11' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time), 0, 4)
INSERT [dbo].[Office.Room_Availability] ([Room_ID], [Date], [Start_time], [End_time], [Available], [Booked_by_prim_emp_ID]) VALUES (2, CAST(N'2021-12-11' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time), 0, 4)
INSERT [dbo].[Office.Room_Availability] ([Room_ID], [Date], [Start_time], [End_time], [Available], [Booked_by_prim_emp_ID]) VALUES (4, CAST(N'2021-12-11' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time), 0, 4)
INSERT [dbo].[Office.Room_Availability] ([Room_ID], [Date], [Start_time], [End_time], [Available], [Booked_by_prim_emp_ID]) VALUES (7, CAST(N'2021-12-11' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time), 0, 4)
INSERT [dbo].[Office.Room_Availability] ([Room_ID], [Date], [Start_time], [End_time], [Available], [Booked_by_prim_emp_ID]) VALUES (5, CAST(N'2021-12-11' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time), 0, 4)
INSERT [dbo].[Office.Room_Availability] ([Room_ID], [Date], [Start_time], [End_time], [Available], [Booked_by_prim_emp_ID]) VALUES (8, CAST(N'2021-12-11' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time), 0, 4)
INSERT [dbo].[Office.Room_Availability] ([Room_ID], [Date], [Start_time], [End_time], [Available], [Booked_by_prim_emp_ID]) VALUES (9, CAST(N'2021-12-11' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time), 0, 4)
INSERT [dbo].[Office.Room_Availability] ([Room_ID], [Date], [Start_time], [End_time], [Available], [Booked_by_prim_emp_ID]) VALUES (1, CAST(N'2021-12-15' AS Date), CAST(N'12:00:00' AS Time), CAST(N'18:00:00' AS Time), 1, 4)
GO
SET IDENTITY_INSERT [dbo].[Records.Allergies] ON 

INSERT [dbo].[Records.Allergies] ([Allergy_ID], [Allergy_name]) VALUES (1, N'Peanut')
INSERT [dbo].[Records.Allergies] ([Allergy_ID], [Allergy_name]) VALUES (2, N'Shellfish')
INSERT [dbo].[Records.Allergies] ([Allergy_ID], [Allergy_name]) VALUES (3, N'Gluten')
INSERT [dbo].[Records.Allergies] ([Allergy_ID], [Allergy_name]) VALUES (4, N'Fish')
INSERT [dbo].[Records.Allergies] ([Allergy_ID], [Allergy_name]) VALUES (5, N'Mustard')
INSERT [dbo].[Records.Allergies] ([Allergy_ID], [Allergy_name]) VALUES (6, N'Celery')
INSERT [dbo].[Records.Allergies] ([Allergy_ID], [Allergy_name]) VALUES (7, N'Sesame')
INSERT [dbo].[Records.Allergies] ([Allergy_ID], [Allergy_name]) VALUES (8, N'Nuts')
INSERT [dbo].[Records.Allergies] ([Allergy_ID], [Allergy_name]) VALUES (9, N'Lupin')
INSERT [dbo].[Records.Allergies] ([Allergy_ID], [Allergy_name]) VALUES (10, N'Milk')
SET IDENTITY_INSERT [dbo].[Records.Allergies] OFF
GO
INSERT [dbo].[Patient.allergies] ([Patient_ID], [isAllergic], [Allergy_ID], [Date_of_entry]) VALUES (1, 1, 1, CAST(N'2000-10-03' AS Date))
INSERT [dbo].[Patient.allergies] ([Patient_ID], [isAllergic], [Allergy_ID], [Date_of_entry]) VALUES (2, 0, 5, CAST(N'2001-10-05' AS Date))
INSERT [dbo].[Patient.allergies] ([Patient_ID], [isAllergic], [Allergy_ID], [Date_of_entry]) VALUES (4, 1, 8, CAST(N'2002-10-06' AS Date))
INSERT [dbo].[Patient.allergies] ([Patient_ID], [isAllergic], [Allergy_ID], [Date_of_entry]) VALUES (6, 1, 4, CAST(N'2004-10-06' AS Date))
INSERT [dbo].[Patient.allergies] ([Patient_ID], [isAllergic], [Allergy_ID], [Date_of_entry]) VALUES (3, 0, 3, CAST(N'2005-10-04' AS Date))
INSERT [dbo].[Patient.allergies] ([Patient_ID], [isAllergic], [Allergy_ID], [Date_of_entry]) VALUES (5, 0, 2, CAST(N'2008-10-05' AS Date))
INSERT [dbo].[Patient.allergies] ([Patient_ID], [isAllergic], [Allergy_ID], [Date_of_entry]) VALUES (8, 1, 8, CAST(N'2010-10-08' AS Date))
INSERT [dbo].[Patient.allergies] ([Patient_ID], [isAllergic], [Allergy_ID], [Date_of_entry]) VALUES (2, 0, 5, CAST(N'2012-10-04' AS Date))
INSERT [dbo].[Patient.allergies] ([Patient_ID], [isAllergic], [Allergy_ID], [Date_of_entry]) VALUES (5, 1, 4, CAST(N'2008-10-02' AS Date))
INSERT [dbo].[Patient.allergies] ([Patient_ID], [isAllergic], [Allergy_ID], [Date_of_entry]) VALUES (3, 1, 3, CAST(N'2009-10-01' AS Date))
GO
INSERT [dbo].[Patient.consent_forms] ([Patient_ID], [consented_personal_info], [consented_Scan_ID], [cancellation_scan_ID], [insurance_Scan_ID], [Date_of_entry]) VALUES (1, 1, 1, 1, 4, CAST(N'2021-12-14' AS Date))
INSERT [dbo].[Patient.consent_forms] ([Patient_ID], [consented_personal_info], [consented_Scan_ID], [cancellation_scan_ID], [insurance_Scan_ID], [Date_of_entry]) VALUES (2, 1, 2, 2, 2, CAST(N'2021-12-13' AS Date))
INSERT [dbo].[Patient.consent_forms] ([Patient_ID], [consented_personal_info], [consented_Scan_ID], [cancellation_scan_ID], [insurance_Scan_ID], [Date_of_entry]) VALUES (3, 0, 4, 1, 1, CAST(N'2021-12-15' AS Date))
INSERT [dbo].[Patient.consent_forms] ([Patient_ID], [consented_personal_info], [consented_Scan_ID], [cancellation_scan_ID], [insurance_Scan_ID], [Date_of_entry]) VALUES (3, 0, 1, 1, 4, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Patient.consent_forms] ([Patient_ID], [consented_personal_info], [consented_Scan_ID], [cancellation_scan_ID], [insurance_Scan_ID], [Date_of_entry]) VALUES (4, 0, 5, 1, 1, CAST(N'2021-12-11' AS Date))
INSERT [dbo].[Patient.consent_forms] ([Patient_ID], [consented_personal_info], [consented_Scan_ID], [cancellation_scan_ID], [insurance_Scan_ID], [Date_of_entry]) VALUES (6, 1, 1, 1, 1, CAST(N'2021-12-09' AS Date))
INSERT [dbo].[Patient.consent_forms] ([Patient_ID], [consented_personal_info], [consented_Scan_ID], [cancellation_scan_ID], [insurance_Scan_ID], [Date_of_entry]) VALUES (6, 1, 7, 1, 4, CAST(N'2021-12-08' AS Date))
INSERT [dbo].[Patient.consent_forms] ([Patient_ID], [consented_personal_info], [consented_Scan_ID], [cancellation_scan_ID], [insurance_Scan_ID], [Date_of_entry]) VALUES (5, 0, 8, 1, 1, CAST(N'2021-12-07' AS Date))
INSERT [dbo].[Patient.consent_forms] ([Patient_ID], [consented_personal_info], [consented_Scan_ID], [cancellation_scan_ID], [insurance_Scan_ID], [Date_of_entry]) VALUES (7, 1, 3, 1, 1, CAST(N'2021-12-06' AS Date))
INSERT [dbo].[Patient.consent_forms] ([Patient_ID], [consented_personal_info], [consented_Scan_ID], [cancellation_scan_ID], [insurance_Scan_ID], [Date_of_entry]) VALUES (2, 0, 4, 1, 4, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Patient.COVID_info] ([Patient_ID], [Fever], [difficulty_breathing], [travel_14_days], [contact_with_possible_COVID_patient], [pain], [date_of_entry]) VALUES (1, 1, 0, 0, 1, 0, CAST(N'2008-09-03' AS Date))
INSERT [dbo].[Patient.COVID_info] ([Patient_ID], [Fever], [difficulty_breathing], [travel_14_days], [contact_with_possible_COVID_patient], [pain], [date_of_entry]) VALUES (3, 1, 1, 1, 0, 1, CAST(N'2007-09-02' AS Date))
INSERT [dbo].[Patient.COVID_info] ([Patient_ID], [Fever], [difficulty_breathing], [travel_14_days], [contact_with_possible_COVID_patient], [pain], [date_of_entry]) VALUES (5, 0, 1, 1, 0, 1, CAST(N'2007-05-01' AS Date))
INSERT [dbo].[Patient.COVID_info] ([Patient_ID], [Fever], [difficulty_breathing], [travel_14_days], [contact_with_possible_COVID_patient], [pain], [date_of_entry]) VALUES (6, 0, 0, 1, 0, 1, CAST(N'2007-09-07' AS Date))
INSERT [dbo].[Patient.COVID_info] ([Patient_ID], [Fever], [difficulty_breathing], [travel_14_days], [contact_with_possible_COVID_patient], [pain], [date_of_entry]) VALUES (2, 0, 0, 0, 0, 0, CAST(N'2006-04-05' AS Date))
INSERT [dbo].[Patient.COVID_info] ([Patient_ID], [Fever], [difficulty_breathing], [travel_14_days], [contact_with_possible_COVID_patient], [pain], [date_of_entry]) VALUES (7, 1, 0, 1, 1, 1, CAST(N'2008-09-04' AS Date))
INSERT [dbo].[Patient.COVID_info] ([Patient_ID], [Fever], [difficulty_breathing], [travel_14_days], [contact_with_possible_COVID_patient], [pain], [date_of_entry]) VALUES (8, 1, 1, 1, 0, 1, CAST(N'2004-03-05' AS Date))
INSERT [dbo].[Patient.COVID_info] ([Patient_ID], [Fever], [difficulty_breathing], [travel_14_days], [contact_with_possible_COVID_patient], [pain], [date_of_entry]) VALUES (4, 1, 0, 1, 0, 1, CAST(N'2003-09-02' AS Date))
INSERT [dbo].[Patient.COVID_info] ([Patient_ID], [Fever], [difficulty_breathing], [travel_14_days], [contact_with_possible_COVID_patient], [pain], [date_of_entry]) VALUES (6, 0, 0, 0, 0, 0, CAST(N'2007-08-08' AS Date))
INSERT [dbo].[Patient.COVID_info] ([Patient_ID], [Fever], [difficulty_breathing], [travel_14_days], [contact_with_possible_COVID_patient], [pain], [date_of_entry]) VALUES (2, 1, 1, 1, 1, 1, CAST(N'2000-09-09' AS Date))
INSERT [dbo].[Patient.COVID_info] ([Patient_ID], [Fever], [difficulty_breathing], [travel_14_days], [contact_with_possible_COVID_patient], [pain], [date_of_entry]) VALUES (5, 1, 0, 1, 0, 1, CAST(N'2001-09-07' AS Date))
GO
INSERT [dbo].[Patient.detailed_dental_history] ([Patient_ID], [dental_carries_teeth_ID], [missing_teeth_ID], [none_restorable_teeth_ID], [unerupted_teeth_ID], [developmental_disturbed_teeth_ID], [Stained_teeth_ID], [Remarks], [Date_of_entry]) VALUES (1, 1, 1, 1, 4, 2, 3, N'5', CAST(N'2021-12-14' AS Date))
INSERT [dbo].[Patient.detailed_dental_history] ([Patient_ID], [dental_carries_teeth_ID], [missing_teeth_ID], [none_restorable_teeth_ID], [unerupted_teeth_ID], [developmental_disturbed_teeth_ID], [Stained_teeth_ID], [Remarks], [Date_of_entry]) VALUES (2, 4, 4, 1, 4, 2, 3, N'5', CAST(N'2021-12-14' AS Date))
INSERT [dbo].[Patient.detailed_dental_history] ([Patient_ID], [dental_carries_teeth_ID], [missing_teeth_ID], [none_restorable_teeth_ID], [unerupted_teeth_ID], [developmental_disturbed_teeth_ID], [Stained_teeth_ID], [Remarks], [Date_of_entry]) VALUES (3, 5, 3, 1, 4, 2, 3, N'5', CAST(N'2021-12-14' AS Date))
INSERT [dbo].[Patient.detailed_dental_history] ([Patient_ID], [dental_carries_teeth_ID], [missing_teeth_ID], [none_restorable_teeth_ID], [unerupted_teeth_ID], [developmental_disturbed_teeth_ID], [Stained_teeth_ID], [Remarks], [Date_of_entry]) VALUES (4, 1, 5, 1, 4, 2, 3, N'5', CAST(N'2021-12-14' AS Date))
INSERT [dbo].[Patient.detailed_dental_history] ([Patient_ID], [dental_carries_teeth_ID], [missing_teeth_ID], [none_restorable_teeth_ID], [unerupted_teeth_ID], [developmental_disturbed_teeth_ID], [Stained_teeth_ID], [Remarks], [Date_of_entry]) VALUES (1, 6, 2, 1, 4, 2, 3, N'5', CAST(N'2021-12-14' AS Date))
INSERT [dbo].[Patient.detailed_dental_history] ([Patient_ID], [dental_carries_teeth_ID], [missing_teeth_ID], [none_restorable_teeth_ID], [unerupted_teeth_ID], [developmental_disturbed_teeth_ID], [Stained_teeth_ID], [Remarks], [Date_of_entry]) VALUES (1, 1, 5, 1, 4, 2, 3, N'5', CAST(N'2021-12-14' AS Date))
INSERT [dbo].[Patient.detailed_dental_history] ([Patient_ID], [dental_carries_teeth_ID], [missing_teeth_ID], [none_restorable_teeth_ID], [unerupted_teeth_ID], [developmental_disturbed_teeth_ID], [Stained_teeth_ID], [Remarks], [Date_of_entry]) VALUES (5, 3, 5, 1, 4, 2, 3, N'5', CAST(N'2021-12-14' AS Date))
INSERT [dbo].[Patient.detailed_dental_history] ([Patient_ID], [dental_carries_teeth_ID], [missing_teeth_ID], [none_restorable_teeth_ID], [unerupted_teeth_ID], [developmental_disturbed_teeth_ID], [Stained_teeth_ID], [Remarks], [Date_of_entry]) VALUES (6, 1, 3, 1, 4, 2, 3, N'5', CAST(N'2021-12-14' AS Date))
INSERT [dbo].[Patient.detailed_dental_history] ([Patient_ID], [dental_carries_teeth_ID], [missing_teeth_ID], [none_restorable_teeth_ID], [unerupted_teeth_ID], [developmental_disturbed_teeth_ID], [Stained_teeth_ID], [Remarks], [Date_of_entry]) VALUES (8, 7, 6, 1, 4, 2, 3, N'5', CAST(N'2021-12-14' AS Date))
INSERT [dbo].[Patient.detailed_dental_history] ([Patient_ID], [dental_carries_teeth_ID], [missing_teeth_ID], [none_restorable_teeth_ID], [unerupted_teeth_ID], [developmental_disturbed_teeth_ID], [Stained_teeth_ID], [Remarks], [Date_of_entry]) VALUES (3, 5, 8, 1, 4, 2, 3, N'5', CAST(N'2021-12-14' AS Date))
INSERT [dbo].[Patient.detailed_dental_history] ([Patient_ID], [dental_carries_teeth_ID], [missing_teeth_ID], [none_restorable_teeth_ID], [unerupted_teeth_ID], [developmental_disturbed_teeth_ID], [Stained_teeth_ID], [Remarks], [Date_of_entry]) VALUES (5, 3, 7, 1, 4, 2, 3, N'5', CAST(N'2021-12-14' AS Date))
GO
INSERT [dbo].[Patient.general_dental_history] ([Patient_ID], [nervous_during_dental], [unfavourable_dental_experience], [past_dental_complications], [other_comments], [Date_of_entry]) VALUES (1, 0, 1, 0, N'pain', CAST(N'2006-12-09' AS Date))
INSERT [dbo].[Patient.general_dental_history] ([Patient_ID], [nervous_during_dental], [unfavourable_dental_experience], [past_dental_complications], [other_comments], [Date_of_entry]) VALUES (2, 0, 1, 0, N'toothache', CAST(N'2009-12-09' AS Date))
INSERT [dbo].[Patient.general_dental_history] ([Patient_ID], [nervous_during_dental], [unfavourable_dental_experience], [past_dental_complications], [other_comments], [Date_of_entry]) VALUES (3, 0, 1, 1, N'nervousness', CAST(N'2001-12-09' AS Date))
INSERT [dbo].[Patient.general_dental_history] ([Patient_ID], [nervous_during_dental], [unfavourable_dental_experience], [past_dental_complications], [other_comments], [Date_of_entry]) VALUES (4, 1, 0, 0, N'fear', CAST(N'2002-12-09' AS Date))
INSERT [dbo].[Patient.general_dental_history] ([Patient_ID], [nervous_during_dental], [unfavourable_dental_experience], [past_dental_complications], [other_comments], [Date_of_entry]) VALUES (5, 0, 1, 0, N'pain', CAST(N'2006-12-09' AS Date))
INSERT [dbo].[Patient.general_dental_history] ([Patient_ID], [nervous_during_dental], [unfavourable_dental_experience], [past_dental_complications], [other_comments], [Date_of_entry]) VALUES (6, 1, 1, 1, N'phobia', CAST(N'2007-12-09' AS Date))
INSERT [dbo].[Patient.general_dental_history] ([Patient_ID], [nervous_during_dental], [unfavourable_dental_experience], [past_dental_complications], [other_comments], [Date_of_entry]) VALUES (7, 0, 0, 0, N'pain', CAST(N'2005-12-09' AS Date))
INSERT [dbo].[Patient.general_dental_history] ([Patient_ID], [nervous_during_dental], [unfavourable_dental_experience], [past_dental_complications], [other_comments], [Date_of_entry]) VALUES (8, 1, 1, 0, N'toothache', CAST(N'2017-12-09' AS Date))
INSERT [dbo].[Patient.general_dental_history] ([Patient_ID], [nervous_during_dental], [unfavourable_dental_experience], [past_dental_complications], [other_comments], [Date_of_entry]) VALUES (1, 0, 1, 0, N'pain', CAST(N'2010-12-09' AS Date))
INSERT [dbo].[Patient.general_dental_history] ([Patient_ID], [nervous_during_dental], [unfavourable_dental_experience], [past_dental_complications], [other_comments], [Date_of_entry]) VALUES (2, 1, 1, 1, N'phobia', CAST(N'2009-12-09' AS Date))
INSERT [dbo].[Patient.general_dental_history] ([Patient_ID], [nervous_during_dental], [unfavourable_dental_experience], [past_dental_complications], [other_comments], [Date_of_entry]) VALUES (4, 0, 0, 1, N'pain', CAST(N'2008-12-09' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Records.Insurance] ON 

INSERT [dbo].[Records.Insurance] ([Insurance_ID], [Company], [Plan_name], [St_Address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (1, N'Alpha', N'PPO', N'72 HydePark', N'HydePark', N'CA', 372771772, N'k.sharma@dundermifflin.com', 121212, N'01123')
INSERT [dbo].[Records.Insurance] ([Insurance_ID], [Company], [Plan_name], [St_Address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (2, N'Beta', N'P', N'172 HydePa', N'Ahmedabad', N'MA', 372771772, N'k.sharma@dundermifflin.com', 121212, N'01123')
INSERT [dbo].[Records.Insurance] ([Insurance_ID], [Company], [Plan_name], [St_Address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (3, N'Gama', N'PP', N'721 Hyder', N'London', N'UK', 372771772, N'k.sharma@dundermifflin.com', 121212, N'01123')
INSERT [dbo].[Records.Insurance] ([Insurance_ID], [Company], [Plan_name], [St_Address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (4, N'Tera', N'PPOP', N'27 Park', N'Paris', N'IT', 372771772, N'k.sharma@dundermifflin.com', 121212, N'01123')
INSERT [dbo].[Records.Insurance] ([Insurance_ID], [Company], [Plan_name], [St_Address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (5, N'Giga', N'POP', N'272 Alphonso', N'Toronto', N'CA', 372771772, N'k.sharma@dundermifflin.com', 121212, N'01123')
INSERT [dbo].[Records.Insurance] ([Insurance_ID], [Company], [Plan_name], [St_Address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (6, N'Mega', N'OPO', N'723 Sadhuvasvani', N'SanJose', N'CA', 372771772, N'k.sharma@dundermifflin.com', 121212, N'01123')
INSERT [dbo].[Records.Insurance] ([Insurance_ID], [Company], [Plan_name], [St_Address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (7, N'Kilo', N'OP', N'712 Sindhubhawan', N'SanFransico', N'CA', 372771772, N'k.sharma@dundermifflin.com', 121212, N'01123')
INSERT [dbo].[Records.Insurance] ([Insurance_ID], [Company], [Plan_name], [St_Address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (8, N'Hecto', N'OO', N'752 Prahladnagar', N'SanDiego', N'CA', 372771772, N'k.sharma@dundermifflin.com', 121212, N'01123')
INSERT [dbo].[Records.Insurance] ([Insurance_ID], [Company], [Plan_name], [St_Address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (9, N'Deci', N'OPOP', N'726 University st', N'Chicago', N'IL', 372771772, N'k.sharma@dundermifflin.com', 121212, N'01123')
INSERT [dbo].[Records.Insurance] ([Insurance_ID], [Company], [Plan_name], [St_Address], [City], [State], [Phone], [Email], [Fax_number], [ZipCode]) VALUES (10, N'Centi', N'OOP', N'720 Kalawad', N'Berlin', N'GE', 372771772, N'k.sharma@dundermifflin.com', 121212, N'01123')
SET IDENTITY_INSERT [dbo].[Records.Insurance] OFF
GO
INSERT [dbo].[Patient.insurance] ([Patient_ID], [Prim_insurance_ID], [Prim_subscriber_name], [Prim_group_num], [Prim_certificate_num], [Prim_relationship_to_insured], [Prim_start_date], [Seco_insurance_ID], [Seco_subscriber_name], [Seco_group_num], [Seco_certificate_num], [Seco_relationship_to_insured], [Seco_start_date], [Tert_insurance_ID], [Tert_subscriber_name], [Tert_group_num], [Tert_certificate_num], [Tert_relationship_to_insured], [Tert_start_date], [Quat_insurance_ID], [Quat_subscriber_name], [Quat_group_num], [Quat_certificate_num], [Quat_relationship_to_insured], [Quat_start_date]) VALUES (1, 3, N'A', 123, 123, N'DAD', CAST(N'1990-10-10' AS Date), 2, N'AA', 123, 123, N'DAD', CAST(N'1980-09-09' AS Date), 3, N'AAA', 123, 123, N'DAD', CAST(N'1890-08-08' AS Date), 4, N'AAAA', 123, 123, N'DAD', CAST(N'1990-10-11' AS Date))
INSERT [dbo].[Patient.insurance] ([Patient_ID], [Prim_insurance_ID], [Prim_subscriber_name], [Prim_group_num], [Prim_certificate_num], [Prim_relationship_to_insured], [Prim_start_date], [Seco_insurance_ID], [Seco_subscriber_name], [Seco_group_num], [Seco_certificate_num], [Seco_relationship_to_insured], [Seco_start_date], [Tert_insurance_ID], [Tert_subscriber_name], [Tert_group_num], [Tert_certificate_num], [Tert_relationship_to_insured], [Tert_start_date], [Quat_insurance_ID], [Quat_subscriber_name], [Quat_group_num], [Quat_certificate_num], [Quat_relationship_to_insured], [Quat_start_date]) VALUES (1, 2, N'B', 1234, 12312, N'MOM', CAST(N'1991-10-10' AS Date), 3, N'BA', 123, 123, N'DAD', CAST(N'1980-09-09' AS Date), 3, N'AAA', 123, 123, N'DAD', CAST(N'1890-08-08' AS Date), 4, N'AAAA', 123, 123, N'DAD', CAST(N'1990-10-11' AS Date))
INSERT [dbo].[Patient.insurance] ([Patient_ID], [Prim_insurance_ID], [Prim_subscriber_name], [Prim_group_num], [Prim_certificate_num], [Prim_relationship_to_insured], [Prim_start_date], [Seco_insurance_ID], [Seco_subscriber_name], [Seco_group_num], [Seco_certificate_num], [Seco_relationship_to_insured], [Seco_start_date], [Tert_insurance_ID], [Tert_subscriber_name], [Tert_group_num], [Tert_certificate_num], [Tert_relationship_to_insured], [Tert_start_date], [Quat_insurance_ID], [Quat_subscriber_name], [Quat_group_num], [Quat_certificate_num], [Quat_relationship_to_insured], [Quat_start_date]) VALUES (2, 4, N'C', 1235, 12311, N'DAD', CAST(N'1992-10-10' AS Date), 4, N'BA', 123, 123, N'DAD', CAST(N'1980-09-09' AS Date), 3, N'AAA', 123, 123, N'DAD', CAST(N'1890-08-08' AS Date), 4, N'AAAA', 123, 123, N'DAD', CAST(N'1990-10-11' AS Date))
INSERT [dbo].[Patient.insurance] ([Patient_ID], [Prim_insurance_ID], [Prim_subscriber_name], [Prim_group_num], [Prim_certificate_num], [Prim_relationship_to_insured], [Prim_start_date], [Seco_insurance_ID], [Seco_subscriber_name], [Seco_group_num], [Seco_certificate_num], [Seco_relationship_to_insured], [Seco_start_date], [Tert_insurance_ID], [Tert_subscriber_name], [Tert_group_num], [Tert_certificate_num], [Tert_relationship_to_insured], [Tert_start_date], [Quat_insurance_ID], [Quat_subscriber_name], [Quat_group_num], [Quat_certificate_num], [Quat_relationship_to_insured], [Quat_start_date]) VALUES (3, 5, N'D', 1236, 12310, N'MOM', CAST(N'1994-10-10' AS Date), 6, N'BA', 123, 123, N'DAD', CAST(N'1980-09-09' AS Date), 3, N'AAA', 123, 123, N'DAD', CAST(N'1890-08-08' AS Date), 4, N'AAAA', 123, 123, N'DAD', CAST(N'1990-10-11' AS Date))
INSERT [dbo].[Patient.insurance] ([Patient_ID], [Prim_insurance_ID], [Prim_subscriber_name], [Prim_group_num], [Prim_certificate_num], [Prim_relationship_to_insured], [Prim_start_date], [Seco_insurance_ID], [Seco_subscriber_name], [Seco_group_num], [Seco_certificate_num], [Seco_relationship_to_insured], [Seco_start_date], [Tert_insurance_ID], [Tert_subscriber_name], [Tert_group_num], [Tert_certificate_num], [Tert_relationship_to_insured], [Tert_start_date], [Quat_insurance_ID], [Quat_subscriber_name], [Quat_group_num], [Quat_certificate_num], [Quat_relationship_to_insured], [Quat_start_date]) VALUES (4, 1, N'E', 1237, 12309, N'SON', CAST(N'1999-10-10' AS Date), 6, N'CA', 123, 123, N'DAD', CAST(N'1980-09-09' AS Date), 3, N'AAA', 123, 123, N'DAD', CAST(N'1890-08-08' AS Date), 4, N'AAAA', 123, 123, N'DAD', CAST(N'1990-10-11' AS Date))
INSERT [dbo].[Patient.insurance] ([Patient_ID], [Prim_insurance_ID], [Prim_subscriber_name], [Prim_group_num], [Prim_certificate_num], [Prim_relationship_to_insured], [Prim_start_date], [Seco_insurance_ID], [Seco_subscriber_name], [Seco_group_num], [Seco_certificate_num], [Seco_relationship_to_insured], [Seco_start_date], [Tert_insurance_ID], [Tert_subscriber_name], [Tert_group_num], [Tert_certificate_num], [Tert_relationship_to_insured], [Tert_start_date], [Quat_insurance_ID], [Quat_subscriber_name], [Quat_group_num], [Quat_certificate_num], [Quat_relationship_to_insured], [Quat_start_date]) VALUES (2, 6, N'F', 1238, 12308, N'MOM', CAST(N'1998-10-10' AS Date), 4, N'vA', 123, 123, N'DAD', CAST(N'1980-09-09' AS Date), 3, N'AAA', 123, 123, N'DAD', CAST(N'1890-08-08' AS Date), 4, N'AAAA', 123, 123, N'DAD', CAST(N'1990-10-11' AS Date))
INSERT [dbo].[Patient.insurance] ([Patient_ID], [Prim_insurance_ID], [Prim_subscriber_name], [Prim_group_num], [Prim_certificate_num], [Prim_relationship_to_insured], [Prim_start_date], [Seco_insurance_ID], [Seco_subscriber_name], [Seco_group_num], [Seco_certificate_num], [Seco_relationship_to_insured], [Seco_start_date], [Tert_insurance_ID], [Tert_subscriber_name], [Tert_group_num], [Tert_certificate_num], [Tert_relationship_to_insured], [Tert_start_date], [Quat_insurance_ID], [Quat_subscriber_name], [Quat_group_num], [Quat_certificate_num], [Quat_relationship_to_insured], [Quat_start_date]) VALUES (3, 5, N'G', 1239, 12307, N'DAD', CAST(N'1996-10-10' AS Date), 6, N'dA', 123, 123, N'DAD', CAST(N'1980-09-09' AS Date), 3, N'AAA', 123, 123, N'DAD', CAST(N'1890-08-08' AS Date), 4, N'AAAA', 123, 123, N'DAD', CAST(N'1990-10-11' AS Date))
INSERT [dbo].[Patient.insurance] ([Patient_ID], [Prim_insurance_ID], [Prim_subscriber_name], [Prim_group_num], [Prim_certificate_num], [Prim_relationship_to_insured], [Prim_start_date], [Seco_insurance_ID], [Seco_subscriber_name], [Seco_group_num], [Seco_certificate_num], [Seco_relationship_to_insured], [Seco_start_date], [Tert_insurance_ID], [Tert_subscriber_name], [Tert_group_num], [Tert_certificate_num], [Tert_relationship_to_insured], [Tert_start_date], [Quat_insurance_ID], [Quat_subscriber_name], [Quat_group_num], [Quat_certificate_num], [Quat_relationship_to_insured], [Quat_start_date]) VALUES (4, 7, N'Z', 1230, 1212, N'SON', CAST(N'1997-10-10' AS Date), 3, N'FA', 123, 123, N'DAD', CAST(N'1980-09-09' AS Date), 3, N'AAA', 123, 123, N'DAD', CAST(N'1890-08-08' AS Date), 4, N'AAAA', 123, 123, N'DAD', CAST(N'1990-10-11' AS Date))
INSERT [dbo].[Patient.insurance] ([Patient_ID], [Prim_insurance_ID], [Prim_subscriber_name], [Prim_group_num], [Prim_certificate_num], [Prim_relationship_to_insured], [Prim_start_date], [Seco_insurance_ID], [Seco_subscriber_name], [Seco_group_num], [Seco_certificate_num], [Seco_relationship_to_insured], [Seco_start_date], [Tert_insurance_ID], [Tert_subscriber_name], [Tert_group_num], [Tert_certificate_num], [Tert_relationship_to_insured], [Tert_start_date], [Quat_insurance_ID], [Quat_subscriber_name], [Quat_group_num], [Quat_certificate_num], [Quat_relationship_to_insured], [Quat_start_date]) VALUES (5, 3, N'X', 1231, 12344, N'FRIEND', CAST(N'1998-10-10' AS Date), 7, N'SA', 123, 123, N'DAD', CAST(N'1980-09-09' AS Date), 3, N'AAA', 123, 123, N'DAD', CAST(N'1890-08-08' AS Date), 4, N'AAAA', 123, 123, N'DAD', CAST(N'1990-10-11' AS Date))
INSERT [dbo].[Patient.insurance] ([Patient_ID], [Prim_insurance_ID], [Prim_subscriber_name], [Prim_group_num], [Prim_certificate_num], [Prim_relationship_to_insured], [Prim_start_date], [Seco_insurance_ID], [Seco_subscriber_name], [Seco_group_num], [Seco_certificate_num], [Seco_relationship_to_insured], [Seco_start_date], [Tert_insurance_ID], [Tert_subscriber_name], [Tert_group_num], [Tert_certificate_num], [Tert_relationship_to_insured], [Tert_start_date], [Quat_insurance_ID], [Quat_subscriber_name], [Quat_group_num], [Quat_certificate_num], [Quat_relationship_to_insured], [Quat_start_date]) VALUES (6, 2, N'Y', 1232, 12355, N'SON', CAST(N'1997-10-10' AS Date), 8, N'VAA', 123, 123, N'DAD', CAST(N'1980-09-09' AS Date), 3, N'AAA', 123, 123, N'DAD', CAST(N'1890-08-08' AS Date), 4, N'AAAA', 123, 123, N'DAD', CAST(N'1990-10-11' AS Date))
INSERT [dbo].[Patient.insurance] ([Patient_ID], [Prim_insurance_ID], [Prim_subscriber_name], [Prim_group_num], [Prim_certificate_num], [Prim_relationship_to_insured], [Prim_start_date], [Seco_insurance_ID], [Seco_subscriber_name], [Seco_group_num], [Seco_certificate_num], [Seco_relationship_to_insured], [Seco_start_date], [Tert_insurance_ID], [Tert_subscriber_name], [Tert_group_num], [Tert_certificate_num], [Tert_relationship_to_insured], [Tert_start_date], [Quat_insurance_ID], [Quat_subscriber_name], [Quat_group_num], [Quat_certificate_num], [Quat_relationship_to_insured], [Quat_start_date]) VALUES (7, 6, N'Q', 1233, 12367, N'MOM', CAST(N'1996-10-10' AS Date), 1, N'ZA', 123, 123, N'DAD', CAST(N'1980-09-09' AS Date), 3, N'AAA', 123, 123, N'DAD', CAST(N'1890-08-08' AS Date), 4, N'AAAA', 123, 123, N'DAD', CAST(N'1990-10-11' AS Date))
INSERT [dbo].[Patient.insurance] ([Patient_ID], [Prim_insurance_ID], [Prim_subscriber_name], [Prim_group_num], [Prim_certificate_num], [Prim_relationship_to_insured], [Prim_start_date], [Seco_insurance_ID], [Seco_subscriber_name], [Seco_group_num], [Seco_certificate_num], [Seco_relationship_to_insured], [Seco_start_date], [Tert_insurance_ID], [Tert_subscriber_name], [Tert_group_num], [Tert_certificate_num], [Tert_relationship_to_insured], [Tert_start_date], [Quat_insurance_ID], [Quat_subscriber_name], [Quat_group_num], [Quat_certificate_num], [Quat_relationship_to_insured], [Quat_start_date]) VALUES (8, 1, N'W', 1230, 12312, N'DAUGHTER', CAST(N'1992-10-10' AS Date), 6, N'XA', 123, 123, N'DAD', CAST(N'1980-09-09' AS Date), 3, N'AAA', 123, 123, N'DAD', CAST(N'1890-08-08' AS Date), 4, N'AAAA', 123, 123, N'DAD', CAST(N'1990-10-11' AS Date))
GO
INSERT [dbo].[Patient.medical_history] ([Patient_ID], [Had_major_surgery_within_last_2_years], [is_pregnant], [is_immune_deficient], [has_Aids], [has_Arthritis/Gout], [other_conditions], [taking_medication], [current_medication], [comments], [Date_of_entry]) VALUES (1, 0, 0, 1, 1, 0, N'none', 1, N'none', N'', CAST(N'2008-05-10' AS Date))
INSERT [dbo].[Patient.medical_history] ([Patient_ID], [Had_major_surgery_within_last_2_years], [is_pregnant], [is_immune_deficient], [has_Aids], [has_Arthritis/Gout], [other_conditions], [taking_medication], [current_medication], [comments], [Date_of_entry]) VALUES (2, 1, 1, 0, 1, 0, N'none', 1, N'none', N'', CAST(N'2005-06-10' AS Date))
INSERT [dbo].[Patient.medical_history] ([Patient_ID], [Had_major_surgery_within_last_2_years], [is_pregnant], [is_immune_deficient], [has_Aids], [has_Arthritis/Gout], [other_conditions], [taking_medication], [current_medication], [comments], [Date_of_entry]) VALUES (3, 0, 1, 0, 0, 1, N'none', 1, N'none', N'', CAST(N'2007-07-10' AS Date))
INSERT [dbo].[Patient.medical_history] ([Patient_ID], [Had_major_surgery_within_last_2_years], [is_pregnant], [is_immune_deficient], [has_Aids], [has_Arthritis/Gout], [other_conditions], [taking_medication], [current_medication], [comments], [Date_of_entry]) VALUES (4, 1, 0, 1, 0, 0, N'none', 1, N'none', N'', CAST(N'2008-09-11' AS Date))
INSERT [dbo].[Patient.medical_history] ([Patient_ID], [Had_major_surgery_within_last_2_years], [is_pregnant], [is_immune_deficient], [has_Aids], [has_Arthritis/Gout], [other_conditions], [taking_medication], [current_medication], [comments], [Date_of_entry]) VALUES (5, 1, 1, 0, 1, 1, N'none', 1, N'none', N'', CAST(N'2006-09-10' AS Date))
INSERT [dbo].[Patient.medical_history] ([Patient_ID], [Had_major_surgery_within_last_2_years], [is_pregnant], [is_immune_deficient], [has_Aids], [has_Arthritis/Gout], [other_conditions], [taking_medication], [current_medication], [comments], [Date_of_entry]) VALUES (6, 0, 0, 0, 1, 0, N'none', 1, N'none', N'', CAST(N'2005-08-10' AS Date))
INSERT [dbo].[Patient.medical_history] ([Patient_ID], [Had_major_surgery_within_last_2_years], [is_pregnant], [is_immune_deficient], [has_Aids], [has_Arthritis/Gout], [other_conditions], [taking_medication], [current_medication], [comments], [Date_of_entry]) VALUES (7, 0, 1, 1, 0, 1, N'none', 1, N'none', N'', CAST(N'2008-09-13' AS Date))
INSERT [dbo].[Patient.medical_history] ([Patient_ID], [Had_major_surgery_within_last_2_years], [is_pregnant], [is_immune_deficient], [has_Aids], [has_Arthritis/Gout], [other_conditions], [taking_medication], [current_medication], [comments], [Date_of_entry]) VALUES (8, 0, 0, 0, 1, 0, N'none', 1, N'none', N'', CAST(N'2003-09-10' AS Date))
INSERT [dbo].[Patient.medical_history] ([Patient_ID], [Had_major_surgery_within_last_2_years], [is_pregnant], [is_immune_deficient], [has_Aids], [has_Arthritis/Gout], [other_conditions], [taking_medication], [current_medication], [comments], [Date_of_entry]) VALUES (3, 1, 1, 0, 1, 1, N'none', 1, N'none', N'', CAST(N'2001-07-10' AS Date))
INSERT [dbo].[Patient.medical_history] ([Patient_ID], [Had_major_surgery_within_last_2_years], [is_pregnant], [is_immune_deficient], [has_Aids], [has_Arthritis/Gout], [other_conditions], [taking_medication], [current_medication], [comments], [Date_of_entry]) VALUES (2, 0, 0, 1, 1, 1, N'none', 1, N'none', N'', CAST(N'2002-11-10' AS Date))
GO
INSERT [dbo].[Patient.personal_sens_info] ([Patient_ID], [Street], [City], [State], [SSN], [ZipCode]) VALUES (1, N'Smith st', N'boston', N'MA', 123456789, N'02120')
INSERT [dbo].[Patient.personal_sens_info] ([Patient_ID], [Street], [City], [State], [SSN], [ZipCode]) VALUES (2, N'Smith st', N'chicago', N'MA', 23456789, N'01122')
INSERT [dbo].[Patient.personal_sens_info] ([Patient_ID], [Street], [City], [State], [SSN], [ZipCode]) VALUES (3, N'Newburry st', N'boston', N'MA', 126456789, N'02221')
INSERT [dbo].[Patient.personal_sens_info] ([Patient_ID], [Street], [City], [State], [SSN], [ZipCode]) VALUES (1, N'Smith st', N'boston', N'MA', 123756789, N'02120')
INSERT [dbo].[Patient.personal_sens_info] ([Patient_ID], [Street], [City], [State], [SSN], [ZipCode]) VALUES (6, N'Smith st', N'seattle', N'MA', 123756789, N'02120')
INSERT [dbo].[Patient.personal_sens_info] ([Patient_ID], [Street], [City], [State], [SSN], [ZipCode]) VALUES (4, N'alphonsus st', N'boston', N'MA', 123455789, N'01122')
INSERT [dbo].[Patient.personal_sens_info] ([Patient_ID], [Street], [City], [State], [SSN], [ZipCode]) VALUES (5, N'Smith st', N'chicago', N'MA', 223456789, N'02120')
INSERT [dbo].[Patient.personal_sens_info] ([Patient_ID], [Street], [City], [State], [SSN], [ZipCode]) VALUES (7, N'Fenway st', N'boston', N'MA', 193456789, N'02120')
INSERT [dbo].[Patient.personal_sens_info] ([Patient_ID], [Street], [City], [State], [SSN], [ZipCode]) VALUES (8, N'Smith st', N'seattle', N'MA', 123496789, N'02221')
INSERT [dbo].[Patient.personal_sens_info] ([Patient_ID], [Street], [City], [State], [SSN], [ZipCode]) VALUES (4, N'Smit st', N'boston', N'MA', 123450789, N'02120')
GO
SET IDENTITY_INSERT [dbo].[Provider.employee_sens_access_history] ON 

INSERT [dbo].[Provider.employee_sens_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Access_datetime], [Access_reason]) VALUES (1, 1, 1, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Timepass')
INSERT [dbo].[Provider.employee_sens_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Access_datetime], [Access_reason]) VALUES (2, 2, 3, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Timepass')
INSERT [dbo].[Provider.employee_sens_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Access_datetime], [Access_reason]) VALUES (3, 3, 4, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Timepass')
INSERT [dbo].[Provider.employee_sens_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Access_datetime], [Access_reason]) VALUES (4, 4, 5, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Timepass')
INSERT [dbo].[Provider.employee_sens_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Access_datetime], [Access_reason]) VALUES (5, 5, 6, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Timepass')
INSERT [dbo].[Provider.employee_sens_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Access_datetime], [Access_reason]) VALUES (6, 6, 7, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Timepass')
INSERT [dbo].[Provider.employee_sens_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Access_datetime], [Access_reason]) VALUES (7, 7, 8, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Timepass')
INSERT [dbo].[Provider.employee_sens_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Access_datetime], [Access_reason]) VALUES (8, 8, 1, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Timepass')
INSERT [dbo].[Provider.employee_sens_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Access_datetime], [Access_reason]) VALUES (9, 1, 2, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Timepass')
INSERT [dbo].[Provider.employee_sens_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Access_datetime], [Access_reason]) VALUES (10, 3, 1, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Timepass')
INSERT [dbo].[Provider.employee_sens_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Access_datetime], [Access_reason]) VALUES (11, 5, 3, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Timepass')
INSERT [dbo].[Provider.employee_sens_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Access_datetime], [Access_reason]) VALUES (12, 4, 2, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Timepass')
INSERT [dbo].[Provider.employee_sens_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Access_datetime], [Access_reason]) VALUES (13, 6, 7, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Timepass')
SET IDENTITY_INSERT [dbo].[Provider.employee_sens_access_history] OFF
GO
INSERT [dbo].[Provider.employee_sens_info] ([Emp_ID], [DOB], [SSN], [St_address], [City], [State], [bank_routing_num], [bank_account_num], [ZipCode]) VALUES (1, CAST(N'1998-05-21' AS Date), 523456789, N'downtown st', N'boston', N'MA', 9876459, 987654563, N'01122')
INSERT [dbo].[Provider.employee_sens_info] ([Emp_ID], [DOB], [SSN], [St_address], [City], [State], [bank_routing_num], [bank_account_num], [ZipCode]) VALUES (2, CAST(N'1991-04-12' AS Date), 23456789, N'smith st', N'boston', N'MA', 9876459, 987654563, N'02221')
INSERT [dbo].[Provider.employee_sens_info] ([Emp_ID], [DOB], [SSN], [St_address], [City], [State], [bank_routing_num], [bank_account_num], [ZipCode]) VALUES (3, CAST(N'1990-03-15' AS Date), 123456789, N'bolyston st', N'boston', N'MA', 9876459, 987654563, N'02120')
INSERT [dbo].[Provider.employee_sens_info] ([Emp_ID], [DOB], [SSN], [St_address], [City], [State], [bank_routing_num], [bank_account_num], [ZipCode]) VALUES (4, CAST(N'1998-02-08' AS Date), 126456789, N'smith st', N'boston', N'MA', 9876459, 987654563, N'02121')
INSERT [dbo].[Provider.employee_sens_info] ([Emp_ID], [DOB], [SSN], [St_address], [City], [State], [bank_routing_num], [bank_account_num], [ZipCode]) VALUES (5, CAST(N'1993-01-13' AS Date), 825456789, N'stevens st', N'boston', N'MA', 9876459, 987654563, N'02221')
INSERT [dbo].[Provider.employee_sens_info] ([Emp_ID], [DOB], [SSN], [St_address], [City], [State], [bank_routing_num], [bank_account_num], [ZipCode]) VALUES (6, CAST(N'1998-09-11' AS Date), 723456789, N'smith st', N'boston', N'MA', 9876459, 987654563, N'02120')
INSERT [dbo].[Provider.employee_sens_info] ([Emp_ID], [DOB], [SSN], [St_address], [City], [State], [bank_routing_num], [bank_account_num], [ZipCode]) VALUES (7, CAST(N'1997-04-03' AS Date), 623456789, N'saint st', N'boston', N'MA', 9876459, 987654563, N'02120')
INSERT [dbo].[Provider.employee_sens_info] ([Emp_ID], [DOB], [SSN], [St_address], [City], [State], [bank_routing_num], [bank_account_num], [ZipCode]) VALUES (5, CAST(N'1998-06-04' AS Date), 423456789, N'smith st', N'boston', N'MA', 9876459, 987654563, N'02120')
INSERT [dbo].[Provider.employee_sens_info] ([Emp_ID], [DOB], [SSN], [St_address], [City], [State], [bank_routing_num], [bank_account_num], [ZipCode]) VALUES (8, CAST(N'1995-05-02' AS Date), 223456789, N'alphonsus st', N'boston', N'MA', 9876459, 987654563, N'02120')
INSERT [dbo].[Provider.employee_sens_info] ([Emp_ID], [DOB], [SSN], [St_address], [City], [State], [bank_routing_num], [bank_account_num], [ZipCode]) VALUES (3, CAST(N'1994-01-18' AS Date), 523456789, N'Newburry st', N'boston', N'MA', 9876459, 987654563, N'02121')
GO
INSERT [dbo].[Provider.Works_with] ([Prim_emp_ID], [Seco_Emp_ID]) VALUES (1, 6)
INSERT [dbo].[Provider.Works_with] ([Prim_emp_ID], [Seco_Emp_ID]) VALUES (2, 4)
INSERT [dbo].[Provider.Works_with] ([Prim_emp_ID], [Seco_Emp_ID]) VALUES (3, 5)
INSERT [dbo].[Provider.Works_with] ([Prim_emp_ID], [Seco_Emp_ID]) VALUES (4, 2)
INSERT [dbo].[Provider.Works_with] ([Prim_emp_ID], [Seco_Emp_ID]) VALUES (5, 4)
INSERT [dbo].[Provider.Works_with] ([Prim_emp_ID], [Seco_Emp_ID]) VALUES (1, 3)
INSERT [dbo].[Provider.Works_with] ([Prim_emp_ID], [Seco_Emp_ID]) VALUES (2, 2)
INSERT [dbo].[Provider.Works_with] ([Prim_emp_ID], [Seco_Emp_ID]) VALUES (4, 7)
INSERT [dbo].[Provider.Works_with] ([Prim_emp_ID], [Seco_Emp_ID]) VALUES (6, 3)
INSERT [dbo].[Provider.Works_with] ([Prim_emp_ID], [Seco_Emp_ID]) VALUES (8, 2)
GO
SET IDENTITY_INSERT [dbo].[Patient.personal_sens_info_access_history] ON 

INSERT [dbo].[Patient.personal_sens_info_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Accessed_datetime], [Accessed_reason]) VALUES (1, 1, 2, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Bank change')
INSERT [dbo].[Patient.personal_sens_info_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Accessed_datetime], [Accessed_reason]) VALUES (3, 5, 5, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Bank change')
INSERT [dbo].[Patient.personal_sens_info_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Accessed_datetime], [Accessed_reason]) VALUES (4, 2, 5, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Bank change')
INSERT [dbo].[Patient.personal_sens_info_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Accessed_datetime], [Accessed_reason]) VALUES (5, 7, 8, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Bank change')
INSERT [dbo].[Patient.personal_sens_info_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Accessed_datetime], [Accessed_reason]) VALUES (6, 8, 6, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Bank change')
INSERT [dbo].[Patient.personal_sens_info_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Accessed_datetime], [Accessed_reason]) VALUES (7, 6, 7, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Bank change')
INSERT [dbo].[Patient.personal_sens_info_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Accessed_datetime], [Accessed_reason]) VALUES (8, 4, 3, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Bank change')
INSERT [dbo].[Patient.personal_sens_info_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Accessed_datetime], [Accessed_reason]) VALUES (9, 4, 2, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Bank change')
INSERT [dbo].[Patient.personal_sens_info_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Accessed_datetime], [Accessed_reason]) VALUES (10, 1, 5, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Bank change')
INSERT [dbo].[Patient.personal_sens_info_access_history] ([Access_ID], [Accessed_record], [Accessed_by], [Accessed_datetime], [Accessed_reason]) VALUES (12, 2, 5, CAST(N'2021-03-10T12:40:00.000' AS DateTime), N'Bank change')
SET IDENTITY_INSERT [dbo].[Patient.personal_sens_info_access_history] OFF
GO
