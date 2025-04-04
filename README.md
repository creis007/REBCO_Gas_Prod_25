# REBCO_Gas_Prod_25
Repository for Journal of Applied Physics Manuscript #JAP25-AR-00635 titled "Irradiation-induced gas production in REBCO-based magnet materials used for future compact fusion reactors" in accordance with JAP's Openness Initiative and Data Availabilty. 

About:
At its core this project looks takes raw neutron spectral data and outputs several key transmutation metrics. This is adapted specifically for transmuation effects on REBCO high-temperature superconductors used in compact fusion reactor architectures and would be useful to fusion engineers but also High-Energy Physics accelerator magnet engineers. Please see the manuscript/paper for a full discussion of the broader implications of this study. 

Full Chain of Computational Components:
1) Simulated neutron 'primary' spectra (Monte Carlo)
2) Simulated ion 'secondary' spectra (TALYS)
3) Simulated ion ranges (SRIM/Elast)
4) Calculated gas production fluences/densities (Excel)

Note that this study was based on other studies which completed the computationally taxing 1st component, referenced in the manuscript. Moreover, the 2nd component TALYS (a nuclear reaction program) and 3rd component SRIM (Stopping and Range of Ions in Matter) are publically availaible online for free at https://github.com/arjankoning1/talys and http://www.srim.org/ respectively. Therefore this repository contains raw text data files from these three but not the Monte Carlo(eg. MCNP), TALYS, or SRIM code packages themselves. In adition to the text data, this repository contains the Excel sheet we used to calculate ion production rates in the superconducting layer.


Computational Flow:

Pre Steps: Use Monte Carlo neutron trasnport code to assess neutron spectrum impinging material of interest based on desired reactor/beam geometry. Next take raw spectrum and input into TALYS to estimate secondary ion spectra of interest. As mentioned before, in the case of this study we took the neutron spectrum simulated at the REBCO location in an ARC-like reactor and input into TALYS to get secondary ion spectra. An example of the Monte Carlo data file is uploaded "spectrum360_A_JENDL_PHITS". Other examples of raw spectral data are pasted directly onto the Excel sheet, as detailed below. 

The Excel Sheet.
To preproduce our results, download the Excel sheet and follow the next steps. Be warned the sheet is not very pretty, lots of copied and pasted stuff all over but it has been cleaned up as best as possible and is adequate for attaining results upon closely following instructions. The Excel document is comprised of four sheets: sheet 1 "ARC_BR2_spectra_Lee", sheet 2 "elast stopping in Ni", sheet 3 "Alpha Spec", and sheet 4 "Proton Spec". 

Step one: Raw Flux Input
Sheet 1 contains some other spectral data but very importantly the raw flux at the neutron energy we wish to investigate in cell D16. This was pasted straight from the aforementioned raw Monte Carlo data file. The user may replace this with any flux they want, for our purposes we chose the worst-case unshielded flux. Note that the proper units are neutrons per square centimetre per second.

Step two: Ion Range Trends
Sheet 2 is comprised of three main parts: the alpha stopping block on the left, the proton stopping block on the right and the plots beneath both blocks. Both blocks show the energies we used is inputs in columns A (0-20 MeV) and how through a series of simulations the iop stopping code, provide the range that these ions would have in that material, in column I. This was done to find the trend in ion range as a function of incoming energy, which is what is ploted beneath. A polynomial fit of these graphs provided an equation for the energy-range relation need for the next step.

Step three: Ion Ranges based on Secondary Spectra
Sheet 3 and 4 work identically, and the process for each isotope, in this example Excel sheet nickel 58 (columns G-L) and nickel 60 (columns N-S), works identically. With our trends developed, we can now estimate how far ions produced from transmutation reactions travel after they are created. Let us narrow our focus to ni58, starting with column G, and work rightwards. The raw secondary ion spectra are produced by TALYS and is pasted in columns G,H: in column G the energy of the ion after being produced by transmutation, and in column H the cross section per unit energy (mb/MeV). In column I we use the range relation to then find out how far each ion can travel in nickel after it is born. Here is where understanding the descritization into thin slices becomes key. For each consecutive energy that we use (choosen as 0.1 MeV arbirtarily but keeping in mind we are balancing fidelity with computational effort) we have a corresponding range. Column J is used to calculate the number density of atoms in between, say, the i and the i+1 range in order to set up the target number density needed for the first principles Reaction Rate equation (R= N*sig*phi), calculated then in column K. Columns L, S, U, and V were constructed for plotting purposes and are not fundamental to this caluclation.

Step four: Tallying the Ions produced in each slice
We conclude with columns A-E. The Hastelloy (approximated to pure nickel) layer is discretized into 50 2-micron slices that we may visualize adjacent to the REBCO layer, visualized in manuscript figure 3 and represented in column A. Column B for ni58 (and C for ni60) uses excel's Vlookup function to search the ranges prediced in column J and find the flux of ions that travels a range corresponding to the slice thickness. For example, column A4 is the slice 4 microns away from the REBCO layer. The Vlookup function of column B checks all the ranges that are near 4 microns, which by eye can be seen as column I23 as 3.89 microns, and takes the flux that corresponds to it, 3.91E-8 in K23, and places it in B4. In this way, all the ion fluxes with the exact range that results in depositing into the supercondutcing layer is obtained. These are summed in column D, in flux units of ions/cm^2/s, which are then multiplied by the number of seconds in time-spans on the order of fission reactor lifetimes (10 and 30 years).

Step five: Total Fluences and Atomic/Parts-per-Million Densities 
Row 28, column D, E, and F sum the total superconducting layer ion implantation flux, 10 year fluence, and 30 year fluence, respectively. Row, 30 uses the density of REBCO (row 29) in the layer to then find the atomic density in ppm, shown for 10 years in column E, and 30 years in column F. 



