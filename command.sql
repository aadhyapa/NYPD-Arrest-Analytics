CREATE TABLE [dbo].[arrest_dim]
(  
    CASE_ID BIGINT, 
    ARREST_ID BIGINT,  
    PERP_ID BIGINT,
    OFFENCE_ID BIGINT,                                
    LAW_ID BIGINT,
    LOCATION_ID BIGINT, 
    JURISDICTION_ID BIGINT                                                     
)
WITH
(
    DISTRIBUTION = HASH (CASE_ID),
    CLUSTERED COLUMNSTORE INDEX
);


COPY INTO [dbo].[arrest_dim]  
FROM 'https://<storage_account>.blob.core.windows.net/<container_name>/transformed_data/arrest_dim.csv'
WITH  
(
   -- CREDENTIAL: Specifies the authentication method and credential access your storage account
   CREDENTIAL = (IDENTITY = 'SHARED ACCESS SIGNATURE', SECRET = SAS_TOKEN),
   -- FILE_TYPE: Specifies the file type in your storage account location
   FILE_TYPE = 'CSV',
   -- FIELD_TERMINATOR: Marks the end of each field (column) in a delimited text (CSV) file
   FIELDTERMINATOR = ',',
   -- ROWTERMINATOR: Marks the end of a record in the file
   ROWTERMINATOR = '0x0A',
   -- FIELDQUOTE: Specifies the delimiter for data of type string in a delimited text (CSV) file
   --FIELDQUOTE = '',
   -- ENCODING: Specifies the file encoding
   --ENCODING = 'UTF8',
   -- DATEFORMAT: Specifies the date format in the CSV file
   --DATEFORMAT = 'ymd',
   -- MAXERRORS: Maximum number of reject rows allowed in the load before the COPY operation is canceled
   --MAXERRORS = 10,
   -- Specifies the first row of the CSV file to read (skip header row)
   FIRSTROW = 2
) 


CREATE TABLE [dbo].[fact_table]
(  
    CASE_ID BIGINT, 
    ARREST_ID BIGINT,  
    PERP_ID BIGINT,
    OFFENCE_ID BIGINT,                                
    LAW_ID BIGINT,
    LOCATION_ID BIGINT, 
    JURISDICTION_ID BIGINT                                                     
)
WITH
(
    DISTRIBUTION = HASH (CASE_ID),
    CLUSTERED COLUMNSTORE INDEX
);


COPY INTO [dbo].[fact_table]  
FROM 'https://<storage_account>.blob.core.windows.net/<container_name>/transformed_data/fact_table.csv'
WITH  
(
   -- CREDENTIAL: Specifies the authentication method and credential access your storage account
   CREDENTIAL = (IDENTITY = 'SHARED ACCESS SIGNATURE', SECRET = SAS_TOKEN),
   -- FILE_TYPE: Specifies the file type in your storage account location
   FILE_TYPE = 'CSV',
   -- FIELD_TERMINATOR: Marks the end of each field (column) in a delimited text (CSV) file
   FIELDTERMINATOR = ',',
   -- ROWTERMINATOR: Marks the end of a record in the file
   ROWTERMINATOR = '0x0A',
   -- FIELDQUOTE: Specifies the delimiter for data of type string in a delimited text (CSV) file
   --FIELDQUOTE = '',
   -- ENCODING: Specifies the file encoding
   --ENCODING = 'UTF8',
   -- DATEFORMAT: Specifies the date format in the CSV file
   --DATEFORMAT = 'ymd',
   -- MAXERRORS: Maximum number of reject rows allowed in the load before the COPY operation is canceled
   --MAXERRORS = 10,
   -- Specifies the first row of the CSV file to read (skip header row)
   FIRSTROW = 2
) 


CREATE TABLE [dbo].[fact_table]
(  
    CASE_ID BIGINT, 
    ARREST_ID BIGINT,  
    PERP_ID BIGINT,
    OFFENCE_ID BIGINT,                                
    LAW_ID BIGINT,
    LOCATION_ID BIGINT, 
    JURISDICTION_ID BIGINT                                                     
)
WITH
(
    DISTRIBUTION = HASH (CASE_ID),
    CLUSTERED COLUMNSTORE INDEX
);


COPY INTO [dbo].[fact_table]  
FROM 'https://<storage_account>.blob.core.windows.net/<container_name>/transformed_data/fact_table.csv'
WITH  
(
   -- CREDENTIAL: Specifies the authentication method and credential access your storage account
   CREDENTIAL = (IDENTITY = 'SHARED ACCESS SIGNATURE', SECRET = SAS_TOKEN),
   -- FILE_TYPE: Specifies the file type in your storage account location
   FILE_TYPE = 'CSV',
   -- FIELD_TERMINATOR: Marks the end of each field (column) in a delimited text (CSV) file
   FIELDTERMINATOR = ',',
   -- ROWTERMINATOR: Marks the end of a record in the file
   ROWTERMINATOR = '0x0A',
   -- FIELDQUOTE: Specifies the delimiter for data of type string in a delimited text (CSV) file
   --FIELDQUOTE = '',
   -- ENCODING: Specifies the file encoding
   --ENCODING = 'UTF8',
   -- DATEFORMAT: Specifies the date format in the CSV file
   --DATEFORMAT = 'ymd',
   -- MAXERRORS: Maximum number of reject rows allowed in the load before the COPY operation is canceled
   --MAXERRORS = 10,
   -- Specifies the first row of the CSV file to read (skip header row)
   FIRSTROW = 2
) 


CREATE TABLE [dbo].[fact_table]
(  
    CASE_ID BIGINT, 
    ARREST_ID BIGINT,  
    PERP_ID BIGINT,
    OFFENCE_ID BIGINT,                                
    LAW_ID BIGINT,
    LOCATION_ID BIGINT, 
    JURISDICTION_ID BIGINT                                                     
)
WITH
(
    DISTRIBUTION = HASH (CASE_ID),
    CLUSTERED COLUMNSTORE INDEX
);


COPY INTO [dbo].[fact_table]  
FROM 'https://<storage_account>.blob.core.windows.net/<container_name>/transformed_data/fact_table.csv'
WITH  
(
   -- CREDENTIAL: Specifies the authentication method and credential access your storage account
   CREDENTIAL = (IDENTITY = 'SHARED ACCESS SIGNATURE', SECRET = SAS_TOKEN),
   -- FILE_TYPE: Specifies the file type in your storage account location
   FILE_TYPE = 'CSV',
   -- FIELD_TERMINATOR: Marks the end of each field (column) in a delimited text (CSV) file
   FIELDTERMINATOR = ',',
   -- ROWTERMINATOR: Marks the end of a record in the file
   ROWTERMINATOR = '0x0A',
   -- FIELDQUOTE: Specifies the delimiter for data of type string in a delimited text (CSV) file
   --FIELDQUOTE = '',
   -- ENCODING: Specifies the file encoding
   --ENCODING = 'UTF8',
   -- DATEFORMAT: Specifies the date format in the CSV file
   --DATEFORMAT = 'ymd',
   -- MAXERRORS: Maximum number of reject rows allowed in the load before the COPY operation is canceled
   --MAXERRORS = 10,
   -- Specifies the first row of the CSV file to read (skip header row)
   FIRSTROW = 2
) 


CREATE TABLE [dbo].[fact_table]
(  
    CASE_ID BIGINT, 
    ARREST_ID BIGINT,  
    PERP_ID BIGINT,
    OFFENCE_ID BIGINT,                                
    LAW_ID BIGINT,
    LOCATION_ID BIGINT, 
    JURISDICTION_ID BIGINT                                                     
)
WITH
(
    DISTRIBUTION = HASH (CASE_ID),
    CLUSTERED COLUMNSTORE INDEX
);


COPY INTO [dbo].[fact_table]  
FROM 'https://<storage_account>.blob.core.windows.net/<container_name>/transformed_data/fact_table.csv'
WITH  
(
   -- CREDENTIAL: Specifies the authentication method and credential access your storage account
   CREDENTIAL = (IDENTITY = 'SHARED ACCESS SIGNATURE', SECRET = SAS_TOKEN),
   -- FILE_TYPE: Specifies the file type in your storage account location
   FILE_TYPE = 'CSV',
   -- FIELD_TERMINATOR: Marks the end of each field (column) in a delimited text (CSV) file
   FIELDTERMINATOR = ',',
   -- ROWTERMINATOR: Marks the end of a record in the file
   ROWTERMINATOR = '0x0A',
   -- FIELDQUOTE: Specifies the delimiter for data of type string in a delimited text (CSV) file
   --FIELDQUOTE = '',
   -- ENCODING: Specifies the file encoding
   --ENCODING = 'UTF8',
   -- DATEFORMAT: Specifies the date format in the CSV file
   --DATEFORMAT = 'ymd',
   -- MAXERRORS: Maximum number of reject rows allowed in the load before the COPY operation is canceled
   --MAXERRORS = 10,
   -- Specifies the first row of the CSV file to read (skip header row)
   FIRSTROW = 2
) 


CREATE TABLE [dbo].[fact_table]
(  
    CASE_ID BIGINT, 
    ARREST_ID BIGINT,  
    PERP_ID BIGINT,
    OFFENCE_ID BIGINT,                                
    LAW_ID BIGINT,
    LOCATION_ID BIGINT, 
    JURISDICTION_ID BIGINT                                                     
)
WITH
(
    DISTRIBUTION = HASH (CASE_ID),
    CLUSTERED COLUMNSTORE INDEX
);


COPY INTO [dbo].[fact_table]  
FROM 'https://<storage_account>.blob.core.windows.net/<container_name>/transformed_data/fact_table.csv'
WITH  
(
   -- CREDENTIAL: Specifies the authentication method and credential access your storage account
   CREDENTIAL = (IDENTITY = 'SHARED ACCESS SIGNATURE', SECRET = SAS_TOKEN),
   -- FILE_TYPE: Specifies the file type in your storage account location
   FILE_TYPE = 'CSV',
   -- FIELD_TERMINATOR: Marks the end of each field (column) in a delimited text (CSV) file
   FIELDTERMINATOR = ',',
   -- ROWTERMINATOR: Marks the end of a record in the file
   ROWTERMINATOR = '0x0A',
   -- FIELDQUOTE: Specifies the delimiter for data of type string in a delimited text (CSV) file
   --FIELDQUOTE = '',
   -- ENCODING: Specifies the file encoding
   --ENCODING = 'UTF8',
   -- DATEFORMAT: Specifies the date format in the CSV file
   --DATEFORMAT = 'ymd',
   -- MAXERRORS: Maximum number of reject rows allowed in the load before the COPY operation is canceled
   --MAXERRORS = 10,
   -- Specifies the first row of the CSV file to read (skip header row)
   FIRSTROW = 2
) 


CREATE TABLE [dbo].[fact_table]
(  
    CASE_ID BIGINT, 
    ARREST_ID BIGINT,  
    PERP_ID BIGINT,
    OFFENCE_ID BIGINT,                                
    LAW_ID BIGINT,
    LOCATION_ID BIGINT, 
    JURISDICTION_ID BIGINT                                                     
)
WITH
(
    DISTRIBUTION = HASH (CASE_ID),
    CLUSTERED COLUMNSTORE INDEX
);


COPY INTO [dbo].[fact_table]  
FROM 'https://<storage_account>.blob.core.windows.net/<container_name>/transformed_data/fact_table.csv'
WITH  
(
   -- CREDENTIAL: Specifies the authentication method and credential access your storage account
   CREDENTIAL = (IDENTITY = 'SHARED ACCESS SIGNATURE', SECRET = SAS_TOKEN),
   -- FILE_TYPE: Specifies the file type in your storage account location
   FILE_TYPE = 'CSV',
   -- FIELD_TERMINATOR: Marks the end of each field (column) in a delimited text (CSV) file
   FIELDTERMINATOR = ',',
   -- ROWTERMINATOR: Marks the end of a record in the file
   ROWTERMINATOR = '0x0A',
   -- FIELDQUOTE: Specifies the delimiter for data of type string in a delimited text (CSV) file
   --FIELDQUOTE = '',
   -- ENCODING: Specifies the file encoding
   --ENCODING = 'UTF8',
   -- DATEFORMAT: Specifies the date format in the CSV file
   --DATEFORMAT = 'ymd',
   -- MAXERRORS: Maximum number of reject rows allowed in the load before the COPY operation is canceled
   --MAXERRORS = 10,
   -- Specifies the first row of the CSV file to read (skip header row)
   FIRSTROW = 2
) 


CREATE TABLE [dbo].[fact_table]
(  
    CASE_ID BIGINT, 
    ARREST_ID BIGINT,  
    PERP_ID BIGINT,
    OFFENCE_ID BIGINT,                                
    LAW_ID BIGINT,
    LOCATION_ID BIGINT, 
    JURISDICTION_ID BIGINT                                                     
)
WITH
(
    DISTRIBUTION = HASH (CASE_ID),
    CLUSTERED COLUMNSTORE INDEX
);


COPY INTO [dbo].[fact_table]  
FROM 'https://<storage_account>.blob.core.windows.net/<container_name>/transformed_data/fact_table.csv'
WITH  
(
   -- CREDENTIAL: Specifies the authentication method and credential access your storage account
   CREDENTIAL = (IDENTITY = 'SHARED ACCESS SIGNATURE', SECRET = SAS_TOKEN),
   -- FILE_TYPE: Specifies the file type in your storage account location
   FILE_TYPE = 'CSV',
   -- FIELD_TERMINATOR: Marks the end of each field (column) in a delimited text (CSV) file
   FIELDTERMINATOR = ',',
   -- ROWTERMINATOR: Marks the end of a record in the file
   ROWTERMINATOR = '0x0A',
   -- FIELDQUOTE: Specifies the delimiter for data of type string in a delimited text (CSV) file
   --FIELDQUOTE = '',
   -- ENCODING: Specifies the file encoding
   --ENCODING = 'UTF8',
   -- DATEFORMAT: Specifies the date format in the CSV file
   --DATEFORMAT = 'ymd',
   -- MAXERRORS: Maximum number of reject rows allowed in the load before the COPY operation is canceled
   --MAXERRORS = 10,
   -- Specifies the first row of the CSV file to read (skip header row)
   FIRSTROW = 2
) 


CREATE TABLE [dbo].[fact_table]
(  
    CASE_ID BIGINT, 
    ARREST_ID BIGINT,  
    PERP_ID BIGINT,
    OFFENCE_ID BIGINT,                                
    LAW_ID BIGINT,
    LOCATION_ID BIGINT, 
    JURISDICTION_ID BIGINT                                                     
)
WITH
(
    DISTRIBUTION = HASH (CASE_ID),
    CLUSTERED COLUMNSTORE INDEX
);


COPY INTO [dbo].[fact_table]  
FROM 'https://<storage_account>.blob.core.windows.net/<container_name>/transformed_data/fact_table.csv'
WITH  
(
   -- CREDENTIAL: Specifies the authentication method and credential access your storage account
   CREDENTIAL = (IDENTITY = 'SHARED ACCESS SIGNATURE', SECRET = SAS_TOKEN),
   -- FILE_TYPE: Specifies the file type in your storage account location
   FILE_TYPE = 'CSV',
   -- FIELD_TERMINATOR: Marks the end of each field (column) in a delimited text (CSV) file
   FIELDTERMINATOR = ',',
   -- ROWTERMINATOR: Marks the end of a record in the file
   ROWTERMINATOR = '0x0A',
   -- FIELDQUOTE: Specifies the delimiter for data of type string in a delimited text (CSV) file
   --FIELDQUOTE = '',
   -- ENCODING: Specifies the file encoding
   --ENCODING = 'UTF8',
   -- DATEFORMAT: Specifies the date format in the CSV file
   --DATEFORMAT = 'ymd',
   -- MAXERRORS: Maximum number of reject rows allowed in the load before the COPY operation is canceled
   --MAXERRORS = 10,
   -- Specifies the first row of the CSV file to read (skip header row)
   FIRSTROW = 2
) 


CREATE TABLE [dbo].[fact_table]
(  
    CASE_ID BIGINT, 
    ARREST_ID BIGINT,  
    PERP_ID BIGINT,
    OFFENCE_ID BIGINT,                                
    LAW_ID BIGINT,
    LOCATION_ID BIGINT, 
    JURISDICTION_ID BIGINT                                                     
)
WITH
(
    DISTRIBUTION = HASH (CASE_ID),
    CLUSTERED COLUMNSTORE INDEX
);


COPY INTO [dbo].[fact_table]  
FROM 'https://<storage_account>.blob.core.windows.net/<container_name>/transformed_data/fact_table.csv'
WITH  
(
   -- CREDENTIAL: Specifies the authentication method and credential access your storage account
   CREDENTIAL = (IDENTITY = 'SHARED ACCESS SIGNATURE', SECRET = SAS_TOKEN),
   -- FILE_TYPE: Specifies the file type in your storage account location
   FILE_TYPE = 'CSV',
   -- FIELD_TERMINATOR: Marks the end of each field (column) in a delimited text (CSV) file
   FIELDTERMINATOR = ',',
   -- ROWTERMINATOR: Marks the end of a record in the file
   ROWTERMINATOR = '0x0A',
   -- FIELDQUOTE: Specifies the delimiter for data of type string in a delimited text (CSV) file
   --FIELDQUOTE = '',
   -- ENCODING: Specifies the file encoding
   --ENCODING = 'UTF8',
   -- DATEFORMAT: Specifies the date format in the CSV file
   --DATEFORMAT = 'ymd',
   -- MAXERRORS: Maximum number of reject rows allowed in the load before the COPY operation is canceled
   --MAXERRORS = 10,
   -- Specifies the first row of the CSV file to read (skip header row)
   FIRSTROW = 2
) 
