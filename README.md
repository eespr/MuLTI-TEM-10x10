# MuLTI-TEM
Multimodal Layered Transdimensional Inversion of Time Domain Electromagnetic data with Depth Constraints

The MuLTI-TEM algorithm was developed in Matlab version 2017a, therefore all Matlab codes supplied will work with this version or subsequent Matlab versions. This code can be run on Linux or Windows based platforms. This github repository includes: 
1.	1D and 2D MuLTI-TEM Matlab scripts along with two matlab functions called in the main scripts, “thicknesses_and_priors” and “whichnuclei”,
2.	1D and 2D example dataset used to test MuLTI-TEM 1D and 2D codes,
3.	adapted Leroi forward modelling code (called LEROI_TEM.F90), written in Fortran 95, and it’s corresponding LEROI_TEM mex files used to be called in Matlab within the MuLTI-TEM script, for both Linux and Windows based platforms. The original Leroi code can be downloaded from the CSIRO/AMIRA P223F project at: http://p223suite.sourceforge.net/.

The mex interface has been tested on CentOS 7, and Windows 7, with Matlab 2017a. Further details and instructions on how to compile and use the LEROI_TEM mex file can be found in the corresponding folders. If working on a Linux based platform the LEROI_TEM mex file created for Linux specifically must be compiled in the Matlab working directory and then the LEROI_TEM function can be called in Matlab. If working on a Windows platform the LEROI_TEM mex file created for windows specifically does not need compiled and can just be called from the Matlab working directory. 

To run the MuLTI-TEM Matlab codes, .m files, the corresponding platform based LEROI_TEM mex file must be in the active Matlab working directory along with the Matlab functions ‘thicknesses_and_priors’ and ‘whichnuclei’ and the input TEM data files.

For the 1D code: The input TEM data files are .mat files with the received voltages saved as a column vector variable called “data” with column 1 and 2 being the start and end times of the time gates in ms, column 3 being the time gate centre in ms and column 4 being the received voltages in nanoVolts. The weighting is determined from the variance of the measured data points, and can be a percentage of the data or inputted as a column vector.

For the 2D code: The input TEM data files are .mat files with the received voltages saved as a cell array variable called “data_2D”. Each cell is populated with a 1D sounding, ordered by acquisition along the line e.g., the first sounding acquired at the start of the line will be in the first cell and the last sounding at the end of the line will be in the last cell. Within each cell, the 1D soundings are column vectors with column 1 being the time gate centre in ms and column 2 being the received voltages in nanoVolts.

IMPORTANT NOTE ABOUT THE FORWARD MODELLING CODE: 
The Leroi code has been adapted for our specific TEM survey design and time gates: ground based 10m x 10m transmitter square coil with a 3 component receiver at 15 m offset from the centre of the transmitter square. However, the original Leroi code can model almost any EM system and survey design, therefore this main code should be downloaded and adapted to the users specific EM survey method. A corresponding mex file will need to be created for the users specific adapted Leroi code, where our mex file can be used as a guideline for. 

https://doi.org/10.5281/zenodo.3351505

DOI 10.5281/zenodo.3351505
