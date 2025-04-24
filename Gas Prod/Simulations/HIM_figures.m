%% figure plotting HIM paper
clc
clear
close all
format compact

%% Chase stuff

% % ReBCO curve fitting
% % SCS
% dose_SCS = [0 0.8 1 2 3 4 5 6 8]; % dose *10^17 / cm^2
% dose = [0 1 2 3 4 5 6 8];
% swell_SCS = [0 9.5 7 22.35 42 68 80 104.8 158]; % nm
% 
% 
% errSCS =[0 0 0 0 50.83 65.03 79.2 104.03 160.76]./2.5257/2; %nm
% 
% % Fit: 'SCS'.
% [xData_SCS, yData_SCS] = prepareCurveData( dose_SCS, swell_SCS );
% 
% % Set up fittype and options.
% ft_SCS = fittype( 'poly2' );
% 
% % Fit model to data.
% [fitresult_SCS, gof_SCS] = fit( xData_SCS, yData_SCS, ft_SCS );
% string_SCS = sprintf('SCS',gof_SCS.rsquare);
% % 
% % % Plot fit with data.
% % figure( 'Name', 'SCS' );
% % h = plot( fitresult_SCS, xData_SCS, yData_SCS );
% % legend( h, 'swell_SCS vs. dose_SCS', 'SCS', 'Location', 'NorthEast', 'Interpreter', 'none' );
% % % Label axes
% % xlabel( 'dose_SCS', 'Interpreter', 'none' );
% % ylabel( 'swell_SCS', 'Interpreter', 'none' );
% % grid on
% 
% % FESC
% dose_FESC = [0 2 3 6 8];
% swell_FESC =  [0 26 41 182.15 254.3]; % nm
% 
% % 
% % swell_ReBCO = [0 7 20.7 42 68 167 297]; % fluence *10^17 /cm^2 ; swelling [nm]
% % x_6 = [0 1 2 3 4 5 6];
% % 
% % % Fit: 'rebco_swelling'.
% % [xData_ReBCO, yData_ReBCO] = prepareCurveData( x_6, swell_ReBCO );
% % 
% % % Set up fittype and options.
% % ft_ReBCO = fittype( 'exp1' );
% % opts_ReBCO = fitoptions( 'Method', 'NonlinearLeastSquares' );
% % opts_ReBCO.Display = 'Off';
% % opts_ReBCO.Normalize = 'on';
% % opts_ReBCO.StartPoint = [32.3919099155152 1.65805076930153];
% % 
% % % Fit model to data.
% % [fitresult_ReBCO, gof_ReBCO] = fit( xData_ReBCO, yData_ReBCO, ft_ReBCO, opts_ReBCO );
% string_SCS1 = sprintf('REBCO',gof_SCS.rsquare);
% 
% 
% 
% % copper fit
% swell_Cu = [0 1 2 6; 0 5 15.2 41.3];
% [P_Cu,S_Cu] = polyfit(swell_Cu(1,:),swell_Cu(2,:),1);
% [y_Cu,delta_Cu] = polyval(P_Cu,linspace(0,6),S_Cu);
% % string_Cu = sprintf('Cu',S_Cu.rsquared);
% 
% % silver fit
% swell_Ag = [0 1 2 6; 0 3 17 39.1];
% [P_Ag,S_Ag] = polyfit(swell_Ag(1,:),swell_Ag(2,:),1);
% [y_Ag,delta_Ag] = polyval(P_Ag,linspace(0,6),S_Ag);
% % string_Ag = sprintf('Ag',S_Ag.rsquared);
% 
% 
% % hastelloy fit
% swell_Ni = [0 1 2 6; 0 0 3 2];
% [P_Ni,S_Ni] = polyfit(swell_Ni(1,:),swell_Ni(2,:),1);
% [y_Ni,delta_Ni] = polyval(P_Ni,linspace(0,6),S_Ni);
% % string_Ni = sprintf('Hastelloy C-276',S_Ni.rsquared);
% 
% 
% % plot
% % load("xData_SCS.mat")
% % load("yData_SCS.mat")
% 
% f = figure;
% 
% % ostalloy fit
% swell_Ostalloy = [0 1 2 4.5; 0 25.5 51.6 142.8];
% [P_Ostalloy,S_Ostalloy] = polyfit(swell_Ostalloy(1,:),swell_Ostalloy(2,:),1);
% [y_Ostalloy,delta_Ostalloy] = polyval(P_Ostalloy,linspace(0,4.5),S_Ostalloy);
% % string_Ostalloy = sprintf('Ostalloy',S_Ostalloy.rsquared);
% 
% hold on
% plot(swell_Ostalloy(1,:),swell_Ostalloy(2,:),'>','Color',[0.450000 0.660000 0.760000],'LineWidth',2.25,'MarkerSize',8) 
% plot(linspace(0,4.5),y_Ostalloy,'--','Color',[0.450000 0.660000 0.760000],'LineWidth',2.25)
% 
% 
% plot(xData_SCS, yData_SCS,'ko','LineWidth',2.25,'MarkerSize',8);
% fig1 = plot(fitresult_SCS,"--k");
% set(fig1,'lineWidth',2.25)
% errorbar(xData_SCS, yData_SCS, errSCS,"ko",'MarkerSize',8,'LineWidth',2.25)
% 
% plot(swell_Cu(1,:),swell_Cu(2,:),'s','Color',[0.720000 0.450000 0.200000],'LineWidth',2.25,'MarkerSize',8) % for visual clarity
% plot(linspace(0,6),y_Cu,'--','Color',[0.720000 0.450000 0.200000],'LineWidth',2.25)
% 
% plot(swell_Ag(1,:),swell_Ag(2,:),'^','Color',[0.750000 0.750000 0.750000],'LineWidth',2.25,'MarkerSize',8)
% plot(linspace(0,6),y_Ag,'--','Color',[0.750000 0.750000 0.750000],'LineWidth',2.25)
% 
% plot(swell_Ni(1,:),swell_Ni(2,:),'+','Color',[0.800000 0.250000 0.040000],'LineWidth',2.25,'MarkerSize',8) 
% plot(linspace(0,6),y_Ni,'--','Color',[0.800000 0.250000 0.040000],'LineWidth',2.25)
% 
% 
% 
% 
% 
% hold off                                                                                                       
% grid on
% ylim([0 inf])
% 
% xlabel('Dose (10^{17} /cm^2)','FontSize',14,'FontWeight','bold')
% ylabel('Swelling (nm)','FontSize',14, 'FontWeight','bold')
% % legend(string_Ostalloy,'',string_SCS1,'','',string_Cu,'',string_Ag,'',string_Ni,'','FontSize',10,'Location','northwest')
% 
% print(f,'-dsvg','SCS_ReBCO_vs_Solder','-r300')
% 
% %% rebcos only plot and fit code
% 
% 
% 
% 
% 
% % Fit: 'FESC'.
% [xData_FESC, yData_FESC] = prepareCurveData( dose_FESC, swell_FESC );
% 
% % Set up fittype and options.
% ft_FESC = fittype( 'poly2' );
% 
% % Fit model to data.
% [fitresult_FESC, gof_FESC] = fit( xData_FESC, yData_FESC, ft_FESC );
% string_FESC = sprintf('FESC');
% errFESC =[0 0 0 96.93 120.57]./2.5257/2; %nm
% 
% % Plot fit with data.
% f = figure;
% hold on;
% 
% plot(xData_SCS, yData_SCS,'ko','LineWidth',2.25,'MarkerSize',8);
% fig2 = plot(fitresult_SCS,"--k");
% set(fig2,'lineWidth',2.25)
% errorbar(xData_SCS, yData_SCS, errSCS,"ko",'MarkerSize',8,'LineWidth',2.25)
% 
% plot(xData_FESC, yData_FESC,'b*','LineWidth',2.25,'MarkerSize',8);
% fig3 = plot(fitresult_FESC,"--b");
% set(fig3,'lineWidth',2.25)
% errorbar(xData_FESC, yData_FESC, errFESC,"b*",'MarkerSize',8,'LineWidth',2.25)
% 
% 
% hold off                                                                                                       
% grid on
% ylim([0 inf])
% 
% xlabel('Dose (10^{17} /cm^2)','FontSize',14,'FontWeight','bold')
% ylabel('Swelling (nm)','FontSize',14, 'FontWeight','bold')
% legend(string_SCS,'','',string_FESC,'','','FontSize',18,'Location','northwest')
% 
% print(f,'-dsvg','SCS_vs_FESC','-r300')
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% % figure 2
% load("E_ARC.mat")
% load("AU_ARC.mat")
% load("E_BR2.mat")
% load("flux_BR2.mat")
% load("E_BR2_Cd.mat")
% 
% AU_ARC = AU_ARC / max(AU_ARC);% *1.146025E14*1E-4;
% % AU_SPARC = AU_SPARC / trapz(AU_SPARC);% *1.146025E14*1E-4;
% 
% f2 = figure;
% loglog(E_ARC,AU_ARC,'-x','Color',[0.650000 0.160000 0.160000],'LineWidth',2.25,'MarkerSize',8)
% hold on
% 
% 
% % BR2 math
% 
% flux_BR2 = flux_BR2 / max(flux_BR2);
% flux_BR2_Cd = flux_BR2_Cd / max(flux_BR2_Cd)
% %flux_BR2 = flux_BR2 / trapz(flux_BR2);
% 
% plot(E_BR2,flux_BR2,'-o','Color',[0.130000 0.670000 0.800000],'LineWidth',1,'MarkerSize',5);
% p = plot(E_BR2_Cd,flux_BR2_Cd,'-o','Color',[0.060000 0.200000 0.650000],'LineWidth',1,'MarkerSize',5)
% p.MarkerFaceColor = [0.060000 0.200000 0.650000];
% p.MarkerEdgeColor = [0.060000 0.200000 0.650000];
% 
% % 60-Ni cross section
% load("E_60Ni.mat")
% load("sigma_60Ni.mat")
% load("E_63cu.mat")
% load("sigma_63cu.mat")
% 
% sigma_60Ni = sigma_60Ni / max(sigma_60Ni);
% sigma_cu = sigma_cu / max(sigma_cu);
% % sigma_60Ni = sigma_60Ni / trapz(sigma_60Ni);
% 
% 
% plot(E_60Ni, sigma_60Ni,'-s','Color',[0.750000 0.750000 0.750000],'LineWidth',2.25,'MarkerSize',8)
% plot(E_63cu, sigma_cu,'-+','Color',[0.720000 0.450000 0.200000],'LineWidth',2.25,'MarkerSize',8)
% 
% xlabel('E (MeV)','FontSize',14,'FontWeight','bold')
% ylabel('Arbitrary Units','FontSize',14, 'FontWeight','bold')
% legend("ARC n-flux","BR2 n-flux","BR2 n-flux with Cd","^{60}Ni(n,p)^{60}Co","^{63}Cu(n,\bf{\alpha}\rm)^{60}Co",'FontSize',14,'Location','south')%'Position',[0.32 0.7 0.125 .2])
% xlim([1e-8 14.1])
% ylim([1e-5 1])
% 
% print(f2,'-dsvg','Spectra Comparison','-r300')
% 
% 
% 
% 
% 
% 
% 
% 
% 
% % dpa and fluence figure
% f = figure
% 
% load("depth.mat")
% load("depth_ion.mat")
% 
% 
% hold on
% yyaxis right
% fluence(fluence<0)=0;
% plot(depth_ion,fluence,'-^','LineWidth',2.25,'MarkerSize',8);
% 
% 
% yyaxis left
% dpa(dpa<0)=0;
% plot(depth, dpa,'-square','LineWidth',2.25,'MarkerSize',8);
% 
% 
% yyaxis left
% xlabel("Implanted depth (nm)",'FontSize',14, 'FontWeight','bold')
% ylabel("dpa",'FontSize',14, 'FontWeight','bold')
% 
% 
% yyaxis right
% 
% 
% ylabel("Ions (ions/atoms)",'FontSize',14, 'FontWeight','bold')
% 
% legend("dpa","Fluence",'FontSize',14, 'FontWeight','bold')
% 
% 
% print(f,'-dsvg','dpa and ions vs depth','-r300')
% 
% 
% 
% 
% 
% 
% 
% 
% %% SQUID measurements
% clc
% clear
% close all
% format compact
% 
% 
% % high dose
% load("FESC-SCH02_High_Dose.mat")
% oldTK_H = TemperatureK;
% oldLM_H = LongMomentemu;
% [~,I] = max(TemperatureK);
% TemperatureK_H = TemperatureK(1:I);
% LongMomentemu_H = LongMomentemu(1:I);
% [~,I_peak] = max(LongMomentemu_H);
% 
% Tc_index = knnsearch(LongMomentemu(1:I_peak),0);
% 
% if (LongMomentemu(Tc_index) < 0)
%     Tc_lineX = linspace(TemperatureK(Tc_index),TemperatureK(Tc_index+1));
%     Tc_lineY = linspace(LongMomentemu(Tc_index),LongMomentemu(Tc_index+1));
% else
%     Tc_lineX = linspace(TemperatureK(Tc_index),TemperatureK(Tc_index-1));
%     Tc_lineY = linspace(LongMomentemu(Tc_index),LongMomentemu(Tc_index-1));
% end
% 
% Tc_index_fine = knnsearch(Tc_lineY',0);
% Tc = Tc_lineX(Tc_index_fine);
% Tc_H = Tc;
% 
% 
% 
% % magnetization vs temp high dose
% f = figure;
% hold on
% 
% plot(oldTK_H,oldLM_H/(max(abs(oldLM_H))),'--','Color',[0.950000 0.000000 0.240000],'LineWidth',2.25,'MarkerSize',8)
% plot(Tc,0,'x','Color',[0.950000 0.000000 0.240000],'LineWidth',2.25,'MarkerSize',14)
% 
% 
% 
% 
% 
% 
% 
% 
% % low dose
% load("FESC_SCH02_Low_Dose.mat")
% oldTK_L = TemperatureK;
% oldLM_L = LongMomentemu;
% [~,I] = max(TemperatureK);
% TemperatureK_L = TemperatureK(1:I);
% LongMomentemu_L = LongMomentemu(1:I);
% [~,I_peak] = max(LongMomentemu_L);
% 
% Tc_index = knnsearch(LongMomentemu(1:I_peak),0);
% 
% if (LongMomentemu(Tc_index) < 0)
%     Tc_lineX = linspace(TemperatureK(Tc_index),TemperatureK(Tc_index+1));
%     Tc_lineY = linspace(LongMomentemu(Tc_index),LongMomentemu(Tc_index+1));
% else
%     Tc_lineX = linspace(TemperatureK(Tc_index),TemperatureK(Tc_index-1));
%     Tc_lineY = linspace(LongMomentemu(Tc_index),LongMomentemu(Tc_index-1));
% end
% 
% Tc_index_fine = knnsearch(Tc_lineY',0);
% Tc = Tc_lineX(Tc_index_fine);
% Tc_L = Tc;
% 
% 
% 
% 
% 
% % magnetization vs temp low dose
% 
% plot(oldTK_L,oldLM_L/(max(abs(oldLM_L))),'-.','Color',[0.130000 0.670000 0.800000],'LineWidth',2.25,'MarkerSize',8)
% plot(Tc,0,'x','Color',[0.130000 0.670000 0.800000],'LineWidth',2.25,'MarkerSize',14)
% 
% 
% 
% 
% 
% 
% 
% % control
% load("FESC-SCH02_Control.mat")
% oldTK_C = TemperatureK;
% oldLM_C = LongMomentemu;
% [~,I] = max(TemperatureK);
% TemperatureK_C = TemperatureK(1:I);
% LongMomentemu_C = LongMomentemu(1:I);
% [~,I_peak] = max(LongMomentemu_C);
% 
% Tc_index = knnsearch(LongMomentemu(1:I_peak),0);
% 
% if (LongMomentemu(Tc_index) < 0)
%     Tc_lineX = linspace(TemperatureK(Tc_index),TemperatureK(Tc_index+1));
%     Tc_lineY = linspace(LongMomentemu(Tc_index),LongMomentemu(Tc_index+1));
% else
%     Tc_lineX = linspace(TemperatureK(Tc_index),TemperatureK(Tc_index-1));
%     Tc_lineY = linspace(LongMomentemu(Tc_index),LongMomentemu(Tc_index-1));
% end
% 
% Tc_index_fine = knnsearch(Tc_lineY',0);
% Tc = Tc_lineX(Tc_index_fine);
% Tc_C = Tc;
% 
% 
% plot(oldTK_C,oldLM_C/(max(abs(oldLM_C))),':k','LineWidth',2.25,'MarkerSize',8)
% plot(Tc_C,0,'xk','LineWidth',2.25,'MarkerSize',14)
% 
% 
% 
% 
% % etched control
% load("TemperatureK_EC.mat")
% oldTK_EC = TemperatureK;
% oldLM_EC = LongMomentemu;
% [~,I] = max(TemperatureK);
% TemperatureK_EC = TemperatureK(1:I);
% LongMomentemu_EC = LongMomentemu(1:I);
% [~,I_peak] = max(LongMomentemu_EC);
% 
% Tc_index = knnsearch(LongMomentemu(1:I_peak),0);
% 
% if (LongMomentemu(Tc_index) < 0)
%     Tc_lineX = linspace(TemperatureK(Tc_index),TemperatureK(Tc_index+1));
%     Tc_lineY = linspace(LongMomentemu(Tc_index),LongMomentemu(Tc_index+1));
% else
%     Tc_lineX = linspace(TemperatureK(Tc_index),TemperatureK(Tc_index-1));
%     Tc_lineY = linspace(LongMomentemu(Tc_index),LongMomentemu(Tc_index-1));
% end
% 
% Tc_index_fine = knnsearch(Tc_lineY',0);
% Tc = Tc_lineX(Tc_index_fine);
% Tc_EC = Tc;
% 
% 
% 
% % magnetization vs temp etched control
% 
% plot(oldTK_EC,oldLM_EC/(max(abs(oldLM_EC))),'-b','LineWidth',2.25,'MarkerSize',8)
% plot(Tc_EC,0,'xb','LineWidth',2.25,'MarkerSize',14)
% 
% xlim([0 100])
% ylim([-1 4E-2])
% 
% 
% 
% xlabel("Temperature (K)",'FontSize',14, 'FontWeight','bold')
% ylabel("Normalized Magnetization",'FontSize',14, 'FontWeight','bold')
% legend("7x10^{15}/cm^2",'', "7x10^{14}/cm^2",'', "Control",'','Etched Control','FontSize',10, 'FontWeight','bold', "Location", "southwest")
% 
% 
% 
% 
% % mini graph things 
% axes('Position', [.225 .325 .5 .5])
% 
% box on
% 
% 
% plot(TemperatureK_H,LongMomentemu_H/(max(abs(LongMomentemu_H))),'--','Color',[0.950000 0.000000 0.240000],'LineWidth',2.25,'MarkerSize',8)
% xlim([89 92])
% ylim([-8E-3 3E-3])
% hold on
% plot(Tc_H,0,'x','Color',[0.950000 0.000000 0.240000],'LineWidth',2.25,'MarkerSize',14)
% 
% plot(TemperatureK_L,LongMomentemu_L/(max(abs(LongMomentemu_L))),'-.','Color',[0.130000 0.670000 0.800000],'LineWidth',2.25,'MarkerSize',8)
% plot(Tc_L,0,'x','Color',[0.130000 0.670000 0.800000],'LineWidth',2.25,'MarkerSize',14)
% 
% plot(TemperatureK_C,LongMomentemu_C/(max(abs(LongMomentemu_C))),':k','LineWidth',2.25,'MarkerSize',8)
% plot(Tc_C,0,'xk','LineWidth',2.25,'MarkerSize',14)
% 
% plot(TemperatureK_EC,LongMomentemu_EC/(max(abs(LongMomentemu_EC))),'-b','LineWidth',2.25,'MarkerSize',8)
% plot(Tc_EC,0,'xb','LineWidth',2.25,'MarkerSize',14)
% 
% 
% print(f,'-dsvg','SQUID','-r300')
% 
% 
% 
% 
% %% 
% 
% 
% 
% % Jc graphs
% load("Jc_table.mat")
% controlTable = LBNLLANLFujikuraFESCSCH04ProcessedJcData(LBNLLANLFujikuraFESCSCH04ProcessedJcData.Sample=="Unetched Control",:);
% etchedControlTable = LBNLLANLFujikuraFESCSCH04ProcessedJcData(LBNLLANLFujikuraFESCSCH04ProcessedJcData.Sample=="Etched Control",:);
% highTable = LBNLLANLFujikuraFESCSCH04ProcessedJcData(LBNLLANLFujikuraFESCSCH04ProcessedJcData.Sample=="High Dose",:);
% lowTable = LBNLLANLFujikuraFESCSCH04ProcessedJcData(LBNLLANLFujikuraFESCSCH04ProcessedJcData.Sample=="Low Dose",:);
% 
% 
% 
% 
% 
% 
% 
% % 5 k data
% c = controlTable(controlTable.SetTempK==5,:);
% ec = etchedControlTable(etchedControlTable.SetTempK==5,:);
% h = highTable(highTable.SetTempK==5,:);
% l = lowTable(lowTable.SetTempK==5,:);
% 
% 
% field_c = c.MagneticFieldOe;
% Jc_c = c.JcAcm2;
% 
% field_ec = ec.MagneticFieldOe;
% Jc_ec = ec.JcAcm2;
% 
% field_h = h.MagneticFieldOe;
% Jc_h = h.JcAcm2;
% 
% field_l = l.MagneticFieldOe;
% Jc_l = l.JcAcm2;
% 
% 
% field_c = field_c ./ 10000;
% field_ec = field_ec ./ 10000;
% field_h = field_h ./ 10000;
% field_l = field_l ./ 10000;
% 
% f = figure;
% p=plot(field_h,Jc_h,'--o','Color',[0.000000 0.200000 0.400000],'LineWidth',2.25,'MarkerSize',8,'MarkerIndices',600:675:length(field_h))
% p.MarkerFaceColor = [0.000000 0.450000 0.730000];
% hold on
% 
% p=plot(field_l,Jc_l,'--square','Color',[0.000000 0.450000 0.730000],'LineWidth',2.25,'MarkerSize',9,'MarkerIndices',1:675:length(field_h))
% p.MarkerFaceColor = [0.000000 0.450000 0.730000];
% 
% p=plot(field_c,Jc_c,'--diamond','Color',[0.130000 0.670000 0.800000] ,'LineWidth',2.25,'MarkerSize',8,'MarkerIndices',1:675:length(field_h))
% p.MarkerFaceColor = [0.000000 0.450000 0.730000];
% 
% p=plot(field_ec,Jc_ec,'--^','LineWidth',2.25,'Color',[0.470000 0.620000 0.800000],'LineWidth',2.25,'MarkerSize',8,'MarkerIndices',400:675:length(field_h))
% p.MarkerFaceColor = [0.000000 0.450000 0.730000];
% 
% 
% 
% % 20 k data
% c = controlTable(controlTable.SetTempK==20,:);
% ec = etchedControlTable(etchedControlTable.SetTempK==20,:);
% h = highTable(highTable.SetTempK==20,:);
% l = lowTable(lowTable.SetTempK==20,:);
% 
% 
% field_c = c.MagneticFieldOe;
% Jc_c = c.JcAcm2;
% 
% field_ec = ec.MagneticFieldOe;
% Jc_ec = ec.JcAcm2;
% 
% field_h = h.MagneticFieldOe;
% Jc_h = h.JcAcm2;
% 
% field_l = l.MagneticFieldOe;
% Jc_l = l.JcAcm2;
% 
% 
% 
% field_c = field_c ./ 10000;
% field_ec = field_ec ./ 10000;
% field_h = field_h ./ 10000;
% field_l = field_l ./ 10000;
% 
% 
% p=plot(field_h,Jc_h,'-.v','Color',[0.090000 0.450000 0.270000],'LineWidth',2.25,'MarkerSize',8,'MarkerIndices',1:675:length(field_h))
% p.MarkerFaceColor = [0.010000 0.750000 0.240000];
% 
% p=plot(field_l,Jc_l,'-.>','Color',[0.010000 0.750000 0.240000],'LineWidth',2.25,'MarkerSize',8,'MarkerIndices',1:675:length(field_h))
% p.MarkerFaceColor = [0.010000 0.750000 0.240000];
% 
% p=plot(field_c,Jc_c,'-.<','Color',[0.000000 1.000000 0.500000],'LineWidth',2.25,'MarkerSize',8,'MarkerIndices',1:675:length(field_h))
% p.MarkerFaceColor = [0.010000 0.750000 0.240000];
% 
% p=plot(field_ec,Jc_ec,'-+','Color',[0.600000 0.980000 0.600000],'LineWidth',2.25,'MarkerSize',8,'MarkerIndices',300:675:length(field_h))
% p.MarkerFaceColor = [0.010000 0.750000 0.240000];
% 
% % maskC_20k = (c.MagneticFieldOe > 2990) & (c.MagneticFieldOe < 3010);
% % maskL_20k = (l.MagneticFieldOe > 2990) & (l.MagneticFieldOe < 3010);
% % maskH_20k = (h.MagneticFieldOe > 2990) & (h.MagneticFieldOe < 3010);
% % deltaCL_20k = mean(c.JcAcm2(maskC_20k))-mean(l.JcAcm2(maskL_20k))
% % deltaCH_20k = mean(c.JcAcm2(maskC_20k))-mean(h.JcAcm2(maskH_20k))
% 
% 
% 
% 
% 
% 
% 
% 
% % 77 k data
% c = controlTable(controlTable.SetTempK==77,:);
% ec = etchedControlTable(etchedControlTable.SetTempK==77,:);
% h = highTable(highTable.SetTempK==77,:);
% l = lowTable(lowTable.SetTempK==77,:);
% 
% 
% field_c = c.MagneticFieldOe;
% Jc_c = c.JcAcm2;
% 
% field_ec = ec.MagneticFieldOe;
% Jc_ec = ec.JcAcm2;
% 
% field_h = h.MagneticFieldOe;
% Jc_h = h.JcAcm2;
% 
% field_l = l.MagneticFieldOe;
% Jc_l = l.JcAcm2;
% 
% 
% field_c = field_c ./ 10000;
% field_ec = field_ec ./ 10000;
% field_h = field_h ./ 10000;
% field_l = field_l ./ 10000;
% 
% 
% % maskC_77k = (c.MagneticFieldOe > 2990) & (c.MagneticFieldOe < 3010);
% % maskL_77k = (l.MagneticFieldOe > 2990) & (l.MagneticFieldOe < 3010);
% % maskH_77k = (h.MagneticFieldOe > 2990) & (h.MagneticFieldOe < 3010);
% % deltaCL_77k = mean(c.JcAcm2(maskC_77k))-mean(l.JcAcm2(maskL_77k))
% % deltaCH_77k = mean(c.JcAcm2(maskC_77k))-mean(h.JcAcm2(maskH_77k))
% 
% 
% 
% 
% plot(field_h,Jc_h,':*','Color',[0.540000 0.200000 0.140000],'LineWidth',2.25,'MarkerSize',8,'MarkerIndices',1:400:length(field_h))
% p.MarkerFaceColor = [0.890000 0.000000 0.130000];
% 
% 
% plot(field_l,Jc_l,'-.','Color',[0.890000 0.000000 0.130000],'LineWidth',2.25,'MarkerSize',8,'MarkerIndices',1:675:length(field_l))
% p.MarkerFaceColor = [0.890000 0.000000 0.130000];
% 
% 
% plot(field_c,Jc_c,'-.x','Color',[1.000000 0.550000 0.000000],'LineWidth',2.25,'MarkerSize',8,'MarkerIndices',1:675:length(field_c))
% p.MarkerFaceColor = [0.890000 0.000000 0.130000];
% 
% plot(field_ec,Jc_ec,'-pentagram','Color',[1.000000 0.750000 0.000000],'LineWidth',2.25,'MarkerSize',8,'MarkerIndices',1:300:length(field_ec))
% p.MarkerFaceColor = [0.890000 0.000000 0.130000];
% 
% xlabel("Magnetic Field (T)",'FontSize',14, 'FontWeight','bold')
% ylabel("J_c (MA/cm^2)",'FontSize',14, 'FontWeight','bold')
% legend("5K, 7x10^{15}/cm^2", "5K, 7x10^{14}/cm^2", "5K, Control",'5K, Etched Control',...
%     "20K, 7x10^{15}/cm^2", "20K, 7x10^{14}/cm^2", "20K, Control",'20K, Etched Control',...
%     "77K, 7x10^{15}/cm^2", "77K, 7x10^{14}/cm^2", "77K, Control",'77K, Etched Control',...
%     'FontSize',12, 'FontWeight','bold', "Location", "northeast")
% 
% axes('Position', [.3 .6 .275 .275])
% 
% box on
% 
% plot(field_h,Jc_h,':*','Color',[0.540000 0.200000 0.140000],'LineWidth',2.25,'MarkerSize',8,'MarkerIndices',1:400:length(field_h))
% p.MarkerFaceColor = [0.890000 0.000000 0.130000];
% hold on 
% 
% plot(field_l,Jc_l,'-.','Color',[0.890000 0.000000 0.130000],'LineWidth',2.25,'MarkerSize',8,'MarkerIndices',1:675:length(field_l))
% p.MarkerFaceColor = [0.890000 0.000000 0.130000];
% 
% 
% plot(field_c,Jc_c,'-.x','Color',[1.000000 0.550000 0.000000],'LineWidth',2.25,'MarkerSize',8,'MarkerIndices',1:675:length(field_c))
% p.MarkerFaceColor = [0.890000 0.000000 0.130000];
% 
% plot(field_ec,Jc_ec,'-pentagram','Color',[1.000000 0.750000 0.000000],'LineWidth',2.25,'MarkerSize',8,'MarkerIndices',1:300:length(field_ec))
% p.MarkerFaceColor = [0.890000 0.000000 0.130000];
% 
% print(f,'-dsvg','VSM_77K','-r300')
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% %% transmutation calculations
% 
% 
% 
% % for 1 GW plant
% P = 1e9; % power in watts
% Q_n = 14.07; % neutron energy MeV
% Q_alpha = 17.59-Q_n; % energy to alpha MeV
% m_n = 1.67492749804e-27; % kg
% m_alpha = 5.0122236 / (1.66054e26); % kg
% c = 299792458; % speed of light m/s
% nReactions = P / (17.59* 1.6021766339999e-13); % neutrons per second
% 
% Ek_n = Q_n *  1.6021766339999e-13;
% Ek_alpha = Q_alpha *  1.6021766339999e-13;
% 
% v_on_c = sqrt(1 - (m_n^2*c^4)/((Ek_n+m_n*c^2)^2)); 
% v_on_c_alpha = sqrt(1 - (m_alpha^2*c^4)/((Ek_alpha+m_alpha*c^2)^2))
% 
% gamma = 1/(sqrt(1-v_on_c^2));
% gamma_alpha = 1/(sqrt(1-v_on_c_alpha^2));
% 
% m_rel = m_n*gamma;
% m_rel_alpha = m_alpha*gamma_alpha;
% 
% g_n_day = m_rel * nReactions * 3600 * 24
% g_alpha_day = m_rel_alpha * nReactions * 3600 * 24


%% Chris Stuff

%Script for HIM paper calculating Jc deltas, to be addd to main scipt by
%Chase Gesteland. Data from WebPlotDigitizer, integrate by substituting 
%values from Jonahan's raw data.

% Pristine raw jc takes as the average of the etched and unetched samples
% 'sf' means self-field aka 0 external field
% 'hf' means high-field aka 16 Tesla external field
% all units MA

%------------------------------77K self field-------------------------------
sf_77K_etched = 5.74; 
sf_77K_unetched = 6.40;
sf_77K_pristine = (sf_77K_etched+sf_77K_unetched)/2;
sf_77K_7E14 = 3.857;
sf_77K_7E15 = 2.942;
delta_sf_77K_7E14 = sf_77K_pristine - sf_77K_7E14;
percent_77K_sf_7E14 = (delta_sf_77K_7E14/sf_77K_pristine)*100;

delta_sf_77K_7E15 = sf_77K_pristine - sf_77K_7E15;
percent_sf_77K_7E15 = (delta_sf_77K_7E15/sf_77K_pristine)*100;
%------------------------------20K self field-------------------------------
sf_20K_etched = 6.597;
sf_20K_unetched = 6.507;
sf_20K_pristine = (sf_20K_etched+sf_20K_unetched)/2;
sf_20K_7E14 = 4.448;
sf_20K_7E15 = 3.403;
delta_sf_20K_7E14 = sf_20K_pristine - sf_20K_7E14;
percent_20K_sf_7E14 = (delta_sf_20K_7E14/sf_20K_pristine)*100;

delta_sf_20K_7E15 = sf_20K_pristine - sf_20K_7E15;
percent_sf_20K_7E15 = (delta_sf_20K_7E15/sf_20K_pristine)*100;

%------------------------------5K self field-------------------------------
sf_5K_etched = 9.687;
sf_5K_unetched = 9.463;
sf_5K_pristine = (sf_5K_etched+sf_5K_unetched)/2;
sf_5K_7E14 = 6.448;
sf_5K_7E15 = 4.821;
delta_sf_5K_7E14 = sf_5K_pristine - sf_5K_7E14;
percent_5K_sf_7E14 = (delta_sf_5K_7E14/sf_5K_pristine)*100;

delta_sf_5K_7E15 = sf_5K_pristine - sf_5K_7E15;
percent_sf_5K_7E15 = (delta_sf_5K_7E15/sf_5K_pristine)*100;

%------------------------------20K 16T-------------------------------
hf_20K_etched = 0.746;
hf_20K_unetched =  0.851;
hf_20K_pristine = (hf_20K_etched+hf_20K_unetched)/2;
hf_20K_7E14 = 0.537;
hf_20K_7E15 = 0.433;
delta_hf_20K_7E14 = hf_20K_pristine - hf_20K_7E14;
percent_20K_hf_7E14 = (delta_hf_20K_7E14/hf_20K_pristine)*100;

delta_hf_20K_7E15 = hf_20K_pristine - hf_20K_7E15;
percent_hf_20K_7E15 = (delta_hf_20K_7E15/hf_20K_pristine)*100;

%------------------------------5K 16T-------------------------------
hf_5K_etched = 2.00;
hf_5K_unetched = 1.990;
hf_5K_pristine = (hf_5K_etched+hf_5K_unetched)/2;
hf_5K_7E14 = 1.358;
hf_5K_7E15 = 1.045;
delta_hf_5K_7E14 = hf_5K_pristine - hf_5K_7E14;
percent_5K_hf_7E14 = (delta_hf_5K_7E14/hf_5K_pristine)*100;

delta_hf_5K_7E15 = hf_5K_pristine - hf_5K_7E15;
percent_hf_5K_7E15 = (delta_hf_5K_7E15/hf_5K_pristine)*100;


%--------------------------Statistics----------------------------

% avg_delta_7E14 = avg(delta_hf_5K_7E15,delta_hf_5K_7E14,delta_hf_20K_7E15,delta_hf_20K_7E14,delta_sf_5K_7E15)
% avg_delta_7E15 = avg(delta_hf_5K_7E15,delta_hf_5K_7E14,delta_hf_20K_7E15,delta_hf_20K_7E14,delta_sf_5K_7E15)

%% Cyclotron Motion Calcs
% m_n = 1.67492749804E-27;
% v_n = 0.1711*(299792458);
% 
% m_p = 1.67262192595E-27;
% q =  1.602176634E-19;
% B = 20;
% v_p_avg = m_p*v_n/(m_p+m_n);
% 
% m_O = 15.9994*1.66054E-27;
% q_O_FI = 8*q;
% q_O_MI = 1*q;
% v_O_avg = m_O*v_n/(m_O+m_n);
% 
% m_Gd = 157.25*1.66054E-27;
% q_Gd_FI = 64*q;
% q_Gd_MI = 1*q;
% v_Gd_avg = m_Gd*v_n/(m_Gd+m_n);
% 
% r_p = m_p*v_p_avg/(q*B)%m
% r_O_FI = m_O*v_O_avg/(q_O_FI*B)
% r_O_MI = m_O*v_O_avg/(q_O_MI*B)
% r_Gd_FI = m_Gd*v_Gd_avg/(q_Gd_FI*B)
% r_Gd_MI = m_Gd*v_Gd_avg/(q_Gd_MI*B)
% 
% nuc_r_p = 1E-13; %cm
% nuc_r_O = (1.25E-13)*(16^(1/3)); 
% nuc_r_Gd = (1.25E-13)*(157.25^(1/3));
% 
% sig_p_p = pi*(nuc_r_p+nuc_r_p)^2; %cm^2
% sig_p_O = pi*(nuc_r_p+nuc_r_O)^2; 
% sig_p_Gd = pi*(nuc_r_p+nuc_r_Gd)^2; 
% sig_O_O = pi*(nuc_r_O+nuc_r_O)^2; 
% sig_O_Gd = pi*(nuc_r_O+nuc_r_Gd)^2; 
% sig_Gd_Gd = pi*(nuc_r_Gd+nuc_r_Gd)^2; 
% n_GdBCO = 7.416E22; %cm^-3
% 
% lambda_p_p = 1/(n_GdBCO*sig_p_p) %cm
% lambda_p_O = 1/(n_GdBCO*sig_p_O) %cm
% lambda_p_Gd = 1/(n_GdBCO*sig_p_Gd) 
% lambda_O_O = 1/(n_GdBCO*sig_O_O)
% lambda_O_Gd = 1/(n_GdBCO*sig_O_Gd)
% lambda_Gd_Gd = 1/(n_GdBCO*sig_Gd_Gd)
% 
% zeta_p = lambda_p_p/(r_p*100)
% zeta_p_O_FI = lambda_p_O/(r_O_FI*100)
% zeta_p_O_MI = lambda_p_O/(r_O_MI*100)
% zeta_O_Gd_MI = lambda_O_Gd/(r_O_MI*100)
% zeta_O_Gd_MI_v2 = lambda_O_Gd/(r_Gd_MI*100)
% zeta_Gd_Gd_FI = lambda_Gd_Gd/(r_Gd_FI*100)
% zeta_Gd_Gd_MI = lambda_Gd_Gd/(r_Gd_MI*100)
% zeta_O_O_FI = lambda_O_O/(r_O_FI*100)

%% Fluxes 
Alpha_flux = importdata("A_flux.txt");
Alpha_range = importdata("A_range.txt");
Proton_flux = importdata("P_flux.txt");
Proton_range = importdata("P_range.txt");
A_Ni58_TALYS = importdata("TALYS_A_58Ni.txt");
A_Ni60_TALYS = importdata("TALYS_A_60Ni.txt");
P_Ni58_TALYS = importdata("TALYS_P_58Ni.txt");
P_Ni60_TALYS = importdata("TALYS_P_60Ni.txt");
DPA = readmatrix("Chris_dpa.xlsx");
wavg_A_range = sum((Alpha_flux.*Alpha_range))./(sum(Alpha_flux));
wavg_P_range  = sum((Proton_flux.*Proton_range))./(sum(Proton_flux));
wavg_A_flux = sum((Alpha_flux.*Alpha_range))./(sum(Alpha_range));
wavg_P_flux  = sum((Proton_flux.*Proton_range))./(sum(Proton_range));

f1 = figure;
hold on
plot(A_Ni58_TALYS(:,1),A_Ni58_TALYS(:,2),'*','Color',[0.060000 0.200000 0.650000],'MarkerFaceColor',[0.060000 0.200000 0.650000],'LineWidth',1.25)
plot(A_Ni60_TALYS(:,1),A_Ni60_TALYS(:,2),'diamond','Color',[0.200000 0.800000 0.200000],'LineWidth',1.25)
plot(P_Ni58_TALYS(:,1),P_Ni58_TALYS(:,2),'x','Color',[0.850000 0.570000 0.000000],'MarkerFaceColor',[0.850000 0.570000 0.000000],'LineWidth',1.25)
plot(P_Ni60_TALYS(:,1),P_Ni60_TALYS(:,2),'o','Color',[0.860000 0.080000 0.240000],'LineWidth',1.25)
xlabel('E-out (MeV)','FontSize',12, 'FontWeight','bold');
ylabel('Intensity (mb/MeV)','FontSize',12,'FontWeight','bold');
legend('Alphas from ^{58}Ni','Alphas from ^{60}Ni','Protons from ^{58}Ni','Protons from ^{60}Ni','FontSize',12)
print(f1,'-dsvg','TALYS Intensities','-r300')
hold off


% poly_A_Ni58 = polyfit(A_Ni58_TALYS(:,1),A_Ni58_TALYS(:,2),10);
% x = linspace(0,20);
% y1 = polyval(poly_A_Ni58,x);
% CHRIS NOTES 8/23/2024 So, it looks like shit. I don't have the time now,
% but since the problem originates from the sudden change in E-out step in
% TALYS raw data around 4 MeV, you COULD do linear interpolation. Error
% would however be that the space between points are decidedly nonlinear
% hence why we used polyfit which moreover failed.

%Here is the failed polyfit
% f = figure;
% hold on
% plot(A_Ni58_TALYS(:,1),A_Ni58_TALYS(:,2),'*','Color',[0.060000 0.200000 0.650000],'MarkerFaceColor',[0.060000 0.200000 0.650000],'LineWidth',1.25)
% plot(x,y1)
% hold off

% Here is the linear/spline interpolation attempt
xq = 2:0.1:7;
int_A_58Ni = importdata("interp_A_58Ni.txt");
vq_A_58 = interp1(int_A_58Ni(:,1),int_A_58Ni(:,2),xq);
vq2_A_58 = interp1(int_A_58Ni(:,1),int_A_58Ni(:,2),xq,'spline');
int_A_60Ni = importdata("interp_A_60Ni.txt");
vq_A_60 = interp1(int_A_60Ni(:,1),int_A_60Ni(:,2),xq);
vq2_A_60 = interp1(int_A_60Ni(:,1),int_A_60Ni(:,2),xq,'spline');
int_P_58Ni = importdata("interp_P_58Ni.txt");
vq_P_58 = interp1(int_P_58Ni(:,1),int_P_58Ni(:,2),xq);
vq2_P_58 = interp1(int_P_58Ni(:,1),int_P_58Ni(:,2),xq,'spline');
int_P_60Ni = importdata("interp_P_60Ni.txt");
vq_P_60 = interp1(int_P_60Ni(:,1),int_P_60Ni(:,2),xq);
vq2_P_60 = interp1(int_P_60Ni(:,1),int_P_60Ni(:,2),xq,'spline');

% Now we need to get corresponding ranges for these new smoother points
E_out = 2:0.1:7;
r_A = @(E_out) 0.1208.*E_out.^2 + 1.2903.*E_out + 0.2797;
r_P = @(E_out) 1.4538390774*E_out.^2 + 9.1516999036.*E_out - 7.7296549083;
% f = figure;
% plot(E_out,r_A(E_out))
% f = figure;
% plot(E_out,r_P(E_out))
r_A1 = r_A(E_out).';
r_P1 = r_P(E_out).';
% ----------------------TEST PLOTS------------------------------- 
% f3 = figure;
% hold on 
% plot(int_A_58Ni(:,1),int_A_58Ni(:,2),'o')
% plot(xq,vq_A_58,'x')
% plot(xq,vq2_A_58)
% hold off
% f4 = figure;
% hold on 
% plot(int_A_60Ni(:,1),int_A_60Ni(:,2),'o')
% plot(xq,vq_A_60,'x')
% plot(xq,vq2_A_60)
% hold off
% f5 = figure;
% hold on 
% plot(int_P_58Ni(:,1),int_P_58Ni(:,2),'o')
% plot(xq,vq_P_58,'x')
% plot(xq,vq2_P_58)
% hold off
% f6 = figure;
% hold on 
% plot(int_P_60Ni(:,1),int_P_60Ni(:,2),'o')
% plot(xq,vq_P_60,'x')
% plot(xq,vq2_P_60)
% hold off
%--------------------------- Good results!-----------------------

f2=figure;
bar(Alpha_range,Alpha_flux)
ylabel('Alpha flux (cm^{-2} s^{-1})','FontSize',12,'FontWeight','bold');
xlabel('Range (\mum)','FontSize',12, 'FontWeight','bold');
xlim([5 67])
xline(wavg_A_range, '-',{'Weighted Average Flux = 2.49x10^3 cm^{-2}s^{-1}',' Weighted Average Range = 27.32 \mum'},'FontSize',10,'FontWeight','bold','LineWidth',3,'LabelOrientation','horizontal','HandleVisibility','off')
print(f2,'-dsvg','Alph_flux','-r300')
ax=gca;
ax.YAxis.Exponent = 4;
f3=figure;
bar(Proton_range,Proton_flux)
ylabel('Proton flux (cm^{-2} s^{-1})','FontSize',12,'FontWeight','bold');
xlabel('Range (\mum)','FontSize',12, 'FontWeight','bold');
xlim([0 450])
xline(wavg_P_range, '-',{'Weighted Average Flux = 5.9x10^4 cm^{-2}s^{-1}',' Weighted Average Range = 97.50 \mum'},'FontSize',10,'FontWeight','bold','LineWidth',3,'LabelOrientation','horizontal','HandleVisibility','off')
print(f3,'-dsvg','Proton_flux','-r300')




% DPA fluence plots

% Note that excel sheet import was kind of janky,
% merged cells at top don't register so 
% nth row in excel is n-1 in MATLAB, so for e.g.
% to call rows 4-100, enter DPA(3:99)
f4 = figure;
hold on
yyaxis right 
plot(DPA(3:102,17),DPA(3:102,18),'-square','LineWidth',1.25,'MarkerFaceColor',[0.8500 0.3250 0.0980])
ylabel('DPA','FontSize',12, 'FontWeight','bold');

yyaxis left
plot(DPA(3:102,17),DPA(3:102,19),'-o','LineWidth',1.25,'MarkerFaceColor',[0 0.4470 0.7410])
xlabel('Depth (\mum)','FontSize',12, 'FontWeight','bold');
ylabel('He concentration (at.%)','FontSize',12, 'FontWeight','bold');

legend('10^{16} ion/cm^2 He (at.%)','10^{16} ion/cm^2 DPA','Location','best','FontSize',10)
hold off
print(f4,'-dsvg','GdBCO DPA HIM','-r300')


% Maybe this one is superfluous, since it's damn near identical to GDBCO
% f5 = figure;
% yyaxis right 
% plot(DPA(3:102,17),DPA(3:102,20),'-square','LineWidth',1.25)
% ylabel('DPA','FontSize',12, 'FontWeight','bold');
% 
% yyaxis left
% plot(DPA(3:102,17),DPA(3:102,21),'-o','LineWidth',1.25)
% xlabel('Depth (\mum)','FontSize',12, 'FontWeight','bold');
% ylabel('He concentration (at.%)','FontSize',12, 'FontWeight','bold');
% 
% legend('10^{16} ion/cm^2 He (at.%)','10^{16} ion/cm^2 DPA','Location','best','FontSize',10)
% txt2 = 'EuBCO';
% text(3.6,2350,txt2,'FontSize',12,'FontWeight','bold')
% hold off
% print(f5,'-dsvg','EuBCO DPA HIM','-r300')



f5 = figure;
hold on
yyaxis right 
plot(DPA(3:102,9),DPA(3:102,11),'-square','LineWidth',1.25,'MarkerFaceColor',[0.8500 0.3250 0.0980])
ylabel('DPA','FontSize',12, 'FontWeight','bold');

yyaxis left
plot(DPA(3:102,9),DPA(3:102,10),'-o','LineWidth',1.25,'MarkerFaceColor',[0 0.4470 0.7410])
xlabel('Range (\mum)','FontSize',12, 'FontWeight','bold');
ylabel('He concentration (appm)','FontSize',12, 'FontWeight','bold');

yyaxis right 
plot(DPA(3:102,13),DPA(3:102,15),'-square','LineWidth',1.25)
ylabel('DPA','FontSize',12, 'FontWeight','bold');

yyaxis left
plot(DPA(3:102,13),DPA(3:102,14),'-o','LineWidth',1.25)
xlabel('Depth (\mum)','FontSize',12, 'FontWeight','bold');
ylabel('He concentration (appm)','FontSize',12, 'FontWeight','bold');

v1 = [0 0; 8 0; 8 2500; 0 2500];
face1 = [1 2 3 4];
v2 = [8 0; 9 0; 9 2500; 8 2500];
face2 = [1 2 3 4];
patch('Faces',face1,'Vertices',v2,'FaceColor','k','FaceAlpha',0.35)
patch('Faces',face2,'Vertices',v1,'FaceColor','k','FaceAlpha',0.15)
legend('7x10^{14} ion/cm^2 He appm','7x10^{15} ion/cm^2 He appm','','','7x10^{14} ion/cm^2 DPA','7x10^{15} ion/cm^2 DPA','Location','northwest','FontSize',10)
txt1 = 'GdBCO';
txt2 = 'EuBCO';
txt3 = 'Ti film';
PPM_30 = 921.6348134;
text(5.5,2350,txt3,'FontSize',12,'FontWeight','bold')
text(8,2350,txt1,'FontSize',12,'FontWeight','bold')
yline(PPM_30, '-','30-year Estimated He content/DPA','LineWidth',3,'FontSize',12,'LabelHorizontalAlignment','left','LabelVerticalAlignment','bottom','HandleVisibility','off')
hold off
print(f5,'-dsvg','GdBCO DPA LANL','-r300')


f6 = figure;
hold on
yyaxis right 
plot(DPA(3:102,1),DPA(3:102,3),'-square','LineWidth',1.25,'MarkerFaceColor',[0.8500 0.3250 0.0980])
ylabel('DPA','FontSize',12, 'FontWeight','bold');
yyaxis left
plot(DPA(3:102,1),DPA(3:102,2),'-o','LineWidth',1.25,'MarkerFaceColor',[0 0.4470 0.7410])
xlabel('Range (\mum)','FontSize',12, 'FontWeight','bold');
ylabel('He concentration (appm)','FontSize',12, 'FontWeight','bold');
yyaxis right 
plot(DPA(3:102,5),DPA(3:102,7),'-square','LineWidth',1.25)
ylabel('DPA','FontSize',12, 'FontWeight','bold');
yyaxis left
plot(DPA(3:102,5),DPA(3:102,6),'-o','LineWidth',1.25)
xlabel('Depth (\mum)','FontSize',12, 'FontWeight','bold');
ylabel('He concentration (appm)','FontSize',12, 'FontWeight','bold');
v1 = [0 0; 8 0; 8 2500; 0 2500];
face1 = [1 2 3 4];
v2 = [8 0; 12 0; 12 2500; 8 2500];
face2 = [1 2 3 4];
patch('Faces',face1,'Vertices',v2,'FaceColor','k','FaceAlpha',0.35)
patch('Faces',face2,'Vertices',v1,'FaceColor','k','FaceAlpha',0.15)
legend('7x10^{14} ion/cm^2 He appm','7x10^{15} ion/cm^2 He appm','','','7x10^{14} ion/cm^2 DPA','7x10^{15} ion/cm^2 DPA','Location','northwest','FontSize',10)
text(6,2250,txt3,'FontSize',12,'FontWeight','bold')
text(10,2250,txt2,'FontSize',12,'FontWeight','bold')
yline(PPM_30, '-','30-year Estimated He content/DPA','LineWidth',3,'FontSize',12,'LabelHorizontalAlignment','left','LabelVerticalAlignment','bottom','HandleVisibility','off')
hold off
print(f6,'-dsvg','EuBCO DPA LANL','-r300')

