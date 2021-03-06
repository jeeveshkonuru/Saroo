CDF      
      	DATE_TIME         	STRING256         STRING64   @   STRING32       STRING16      STRING8       STRING4       STRING2       N_PROF        N_PARAM       N_LEVELS   H   N_CALIB       	N_HISTORY             	   title         Argo float vertical profile    institution       AOML   source        
Argo float     history       2016-06-19T22:30:23Z creation      
references        (http://www.argodatamgt.org/Documentation   comment       	free text      user_manual_version       3.03   Conventions       Argo-3.0 CF-1.6    featureType       trajectoryProfile         @   	DATA_TYPE                  	long_name         	Data type      
_FillValue                    4�   FORMAT_VERSION                 	long_name         File format version    
_FillValue                    4�   HANDBOOK_VERSION               	long_name         Data handbook version      
_FillValue                    4�   REFERENCE_DATE_TIME                 	long_name         !Date of reference for Julian days      conventions       YYYYMMDDHHMISS     
_FillValue                    4�   DATE_CREATION                   	long_name         Date of file creation      conventions       YYYYMMDDHHMISS     
_FillValue                    4�   DATE_UPDATE                 	long_name         Date of update of this file    conventions       YYYYMMDDHHMISS     
_FillValue                    5    PLATFORM_NUMBER                   	long_name         Float unique identifier    conventions       WMO float identifier : A9IIIII     
_FillValue                    5   PROJECT_NAME                  	long_name         Name of the project    
_FillValue                  @  5   PI_NAME                   	long_name         "Name of the principal investigator     
_FillValue                  @  5X   STATION_PARAMETERS           	            	long_name         ,List of available parameters for the station   conventions       Argo reference table 3     
_FillValue                  0  5�   CYCLE_NUMBER               	long_name         Float cycle number     conventions       <0..N, 0 : launch cycle (if exists), 1 : first complete cycle   
_FillValue         ��        5�   	DIRECTION                  	long_name         !Direction of the station profiles      conventions       -A: ascending profiles, D: descending profiles      
_FillValue                    5�   DATA_CENTRE                   	long_name         .Data centre in charge of float data processing     conventions       Argo reference table 4     
_FillValue                    5�   DC_REFERENCE                  	long_name         (Station unique identifier in data centre   conventions       Data centre convention     
_FillValue                     5�   DATA_STATE_INDICATOR                  	long_name         1Degree of processing the data have passed through      conventions       Argo reference table 6     
_FillValue                    5�   	DATA_MODE                  	long_name         Delayed mode or real time data     conventions       >R : real time; D : delayed mode; A : real time with adjustment     
_FillValue                    5�   PLATFORM_TYPE                     	long_name         Type of float      
_FillValue                     5�   FLOAT_SERIAL_NO                   	long_name         Serial number of the float     
_FillValue                    6   FIRMWARE_VERSION                  	long_name         Instrument version     
_FillValue                    6,   WMO_INST_TYPE                     	long_name         Coded instrument type      conventions       Argo reference table 8     
_FillValue                    6<   JULD               	long_name         ?Julian day (UTC) of the station relative to REFERENCE_DATE_TIME    standard_name         time   units         "days since 1950-01-01 00:00:00 UTC     conventions       8Relative julian days with decimal part (as parts of day)   
_FillValue        A.�~       axis      T           6@   JULD_QC                	long_name         Quality on Date and Time   conventions       Argo reference table 2     
_FillValue                    6H   JULD_LOCATION                  	long_name         @Julian day (UTC) of the location relative to REFERENCE_DATE_TIME   units         "days since 1950-01-01 00:00:00 UTC     conventions       8Relative julian days with decimal part (as parts of day)   
_FillValue        A.�~            6L   LATITUDE               	long_name         &Latitude of the station, best estimate     standard_name         latitude   units         degree_north   
_FillValue        @�i�       	valid_min         �V�        	valid_max         @V�        axis      Y           6T   	LONGITUDE                  	long_name         'Longitude of the station, best estimate    standard_name         	longitude      units         degree_east    
_FillValue        @�i�       	valid_min         �f�        	valid_max         @f�        axis      X           6\   POSITION_QC                	long_name         ,Quality on position (latitude and longitude)   conventions       Argo reference table 2     
_FillValue                    6d   POSITIONING_SYSTEM                    	long_name         Positioning system     
_FillValue                    6h   VERTICAL_SAMPLING_SCHEME                  	long_name         Vertical sampling scheme   conventions       Argo reference table 16    
_FillValue                    6p   CONFIG_MISSION_NUMBER                  	long_name         'Float's mission number for each profile    conventions       @0..N, 0 : launch mission (if exists), 1 : first complete mission   
_FillValue         ��        7p   PROFILE_PRES_QC                	long_name         #Global quality flag of PRES profile    conventions       Argo reference table 2a    
_FillValue                    7t   PROFILE_TEMP_QC                	long_name         #Global quality flag of TEMP profile    conventions       Argo reference table 2a    
_FillValue                    7x   PROFILE_PSAL_QC                	long_name         #Global quality flag of PSAL profile    conventions       Argo reference table 2a    
_FillValue                    7|   PRES         
      
   	long_name         SEA PRESSURE   standard_name         sea_water_pressure     
_FillValue        G�O�   units         decibar    	valid_min                	valid_max         F;�    C_format      %7.1f      FORTRAN_format        F7.1   
resolution        =���   axis      Z           7�   PRES_QC          
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                  H  8�   PRES_ADJUSTED            
      	   	long_name         SEA PRESSURE   standard_name         sea_water_pressure     
_FillValue        G�O�   units         decibar    	valid_min                	valid_max         F;�    C_format      %7.1f      FORTRAN_format        F7.1   
resolution        =���        8�   PRES_ADJUSTED_QC         
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                  H  :   PRES_ADJUSTED_ERROR          
         	long_name         SEA PRESSURE   
_FillValue        G�O�   units         decibar    C_format      %7.1f      FORTRAN_format        F7.1   
resolution        =���        :P   TEMP         
      	   	long_name         $SEA TEMPERATURE IN SITU ITS-90 SCALE   standard_name         sea_water_temperature      
_FillValue        G�O�   units         degree_Celsius     	valid_min         �      	valid_max         B      C_format      %10.3f     FORTRAN_format        F10.3      
resolution        :�o        ;p   TEMP_QC          
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                  H  <�   TEMP_ADJUSTED            
      	   	long_name         $SEA TEMPERATURE IN SITU ITS-90 SCALE   standard_name         sea_water_temperature      
_FillValue        G�O�   units         degree_Celsius     	valid_min         �      	valid_max         B      C_format      %10.3f     FORTRAN_format        F10.3      
resolution        :�o        <�   TEMP_ADJUSTED_QC         
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                  H  =�   TEMP_ADJUSTED_ERROR          
         	long_name         $SEA TEMPERATURE IN SITU ITS-90 SCALE   
_FillValue        G�O�   units         degree_Celsius     C_format      %10.3f     FORTRAN_format        F10.3      
resolution        :�o        >@   PSAL         
      	   	long_name         PRACTICAL SALINITY     standard_name         sea_water_salinity     
_FillValue        G�O�   units         psu    	valid_min                	valid_max         B(     C_format      %10.3f     FORTRAN_format        F10.3      
resolution        :�o        ?`   PSAL_QC          
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                  H  @�   PSAL_ADJUSTED            
      	   	long_name         PRACTICAL SALINITY     standard_name         sea_water_salinity     
_FillValue        G�O�   units         psu    	valid_min                	valid_max         B(     C_format      %10.3f     FORTRAN_format        F10.3      
resolution        :�o        @�   PSAL_ADJUSTED_QC         
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                  H  A�   PSAL_ADJUSTED_ERROR          
         	long_name         PRACTICAL SALINITY     
_FillValue        G�O�   units         psu    C_format      %10.3f     FORTRAN_format        F10.3      
resolution        :�o        B0   	PARAMETER               	            	long_name         /List of parameters with calibration information    conventions       Argo reference table 3     
_FillValue                  0  CP   SCIENTIFIC_CALIB_EQUATION               	            	long_name         'Calibration equation for this parameter    
_FillValue                    C�   SCIENTIFIC_CALIB_COEFFICIENT            	            	long_name         *Calibration coefficients for this equation     
_FillValue                    F�   SCIENTIFIC_CALIB_COMMENT            	            	long_name         .Comment applying to this parameter calibration     
_FillValue                    I�   SCIENTIFIC_CALIB_DATE               	             	long_name         Date of calibration    
_FillValue                  ,  L�   HISTORY_INSTITUTION                      	long_name         "Institution which performed action     conventions       Argo reference table 4     
_FillValue                    L�   HISTORY_STEP                     	long_name         Step in data processing    conventions       Argo reference table 12    
_FillValue                    L�   HISTORY_SOFTWARE                     	long_name         'Name of software which performed action    conventions       Institution dependent      
_FillValue                    L�   HISTORY_SOFTWARE_RELEASE                     	long_name         2Version/release of software which performed action     conventions       Institution dependent      
_FillValue                    L�   HISTORY_REFERENCE                        	long_name         Reference of database      conventions       Institution dependent      
_FillValue                  @  L�   HISTORY_DATE                      	long_name         #Date the history record was created    conventions       YYYYMMDDHHMISS     
_FillValue                    L�   HISTORY_ACTION                       	long_name         Action performed on data   conventions       Argo reference table 7     
_FillValue                    M   HISTORY_PARAMETER                        	long_name         (Station parameter action is performed on   conventions       Argo reference table 3     
_FillValue                    M   HISTORY_START_PRES                    	long_name          Start pressure action applied on   
_FillValue        G�O�   units         decibar         M    HISTORY_STOP_PRES                     	long_name         Stop pressure action applied on    
_FillValue        G�O�   units         decibar         M$   HISTORY_PREVIOUS_VALUE                    	long_name         +Parameter/Flag previous value before action    
_FillValue        G�O�        M(   HISTORY_QCTEST                       	long_name         <Documentation of tests performed, tests failed (in hex form)   conventions       EWrite tests performed when ACTION=QCP$; tests failed when ACTION=QCF$      
_FillValue                    M,Argo profile    3.0 1.2 19500101000000  20160619223023  20160619223023  4901443 US ARGO PROJECT                                                 GREGORY C. JOHNSON                                              PRES            TEMP            PSAL               �A   AO  4210                            2B  A   APEX                            5831            122707          846 @׵��	21   @׵G��@-�fffff�a�vȴ9X1   ARGOS   Primary sampling: discrete []                                                                                                                                                                                                                                      A   A   A   @���A!��A���A���A�ffB33B4ffBP  Bm33B�ffB�ffB�ffB�  B���B�33B�  B�33CL�C��CffC� C#�3C+L�C4��C>L�CH��CRffC]��Ch33Ct�C��C�@ C�33C�33C�� C�L�C��3C�&fC��3Cə�C�� C���C�&fC��D` D&fDfDFfD,�D&S3D.ٚD7�3DA�DK�DU�3D`�fDl  Dx  D�\�D�33D�  D��fD�L�D�� D�	�D�&fD¦fD̀ D�fD�#3D���D��f111111111111111111111111111111111111111111111111111111111111111111111111@�  A+34A���Aə�A�33B��B6��BRffBo��B���B���B���B�33B�  B�ffB�33B�ffC�gC34C  C�C$L�C+�gC534C>�gCI34CS  C^34Ch��Ct�4C�fgC���C�� C�� C��C���C�  C�s3C�  C��gC��C��C�s3C�Y�D�fDL�D,�Dl�DS3D&y�D/  D7��DA33DK@ DU��D`��DlFfDxFfD�p D�FfD�33D���D�` D��3D��D�9�D¹�D̓3D��D�6fD�� D���111111111111111111111111111111111111111111111111111111111111111111111111G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�A���A��
A��
A���AԼjAԅAҬA͇+A�z�A���A�M�A�ƨA�v�A�M�A���A��A���A��-A�/A��hA���A��mA��AyXAf�AI`BA9"�A2��A0E�A.-A+�7A(ĜA&I�A#p�A!�-A��A�uA�AbNA�A
 �A�wAr�@��^@���@�D@���@ާ�@�O�@�dZ@�1@���@���@�r�@�@�J@�+@���@�/@���@�(�@{�m@pb@c"�@X�u@PA�@D��@7;d@*~�@�@�F@�111111111111111111111111111111111111111111111111111111111111111111111111A���A��
A��
A���AԼjAԅAҬA͇+A�z�A���A�M�A�ƨA�v�A�M�A���A��A���A��-A�/A��hA���A��mA��AyXAf�AI`BA9"�A2��A0E�A.-A+�7A(ĜA&I�A#p�A!�-A��A�uA�AbNA�A
 �A�wAr�@��^@���@�D@���@ާ�@�O�@�dZ@�1@���@���@�r�@�@�J@�+@���@�/@���@�(�@{�m@pb@c"�@X�u@PA�@D��@7;d@*~�@�@�F@�111111111111111111111111111111111111111111111111111111111111111111111111G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�B	�B	�B	�B	�B	�
B	��B	�B	dZB	YB	P�B	J�B	F�B	6FB	,B	�PB
�B
�B6FBiyB��Bv�B
��B	T�B	+B	�B	{B	\B	{B	0!B	\)B	��B	�;B
�B
$�B
1'B
.B
1'B
6FB
33B
/B
)�B
�B
�B
�B
bB
DB
JB
B	��B	��B	��B
B
%B
+B

=B
bB
�B
 �B
%�B
,B
33B
<jB
D�B
K�B
N�B
VB
\)B
ffB
m�B
x�B
�B
�+111111111111111111111111111111111111111111111111111111111111111111111111B	�B	�B	�B	�B	�
B	��B	�B	dZB	YB	P�B	J�B	F�B	6FB	,B	�PB
�B
�B6FBiyB��Bv�B
��B	T�B	+B	�B	{B	\B	{B	0!B	\)B	��B	�;B
�B
$�B
1'B
.B
1'B
6FB
33B
/B
)�B
�B
�B
�B
bB
DB
JB
B	��B	��B	��B
B
%B
+B

=B
bB
�B
 �B
%�B
,B
33B
<jB
D�B
K�B
N�B
VB
\)B
ffB
m�B
x�B
�B
�+111111111111111111111111111111111111111111111111111111111111111111111111G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�G�O�PRES            TEMP            PSAL            PRES_ADJUSTED = PRES - surface_pressure                                                                                                                                                                                                                         none                                                                                                                                                                                                                                                            none                                                                                                                                                                                                                                                            surface_pressure=-0.60 dbar                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Pressure adjusted at real time based on most recent valid surface pressure                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      20160619223023                              AO  ARCAADJP                                                                    20160619223023    IP                G�O�G�O�G�O�                AO  ARGQQCPL                                                                    20160619223023  QCP$                G�O�G�O�G�O�5F03E           AO  ARGQQCPL                                                                    20160619223023  QCF$                G�O�G�O�G�O�0               