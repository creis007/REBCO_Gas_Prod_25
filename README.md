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




