*birth weight_gestational age - 0= AGA (p10-p90th)/ 1= SGA (<p10th) / 2= LGA (>p90th)
*semanas gestacionais completas - nao temos dias (p.ex. 33+0, 42+0)
gen peso= PESO
gen sexo_filho_new=def_sexo
replace sexo_filho_new="0" if sexo_filho_new=="Masculino"
replace sexo_filho_new="1" if sexo_filho_new=="Feminino"
replace sexo_filho_new="." if sexo_filho_new=="Ignorado"
destring sexo_filho_new, replace
gen semagestac2= SEMAGESTAC
gen bwga=.

gen bpn=.
replace bpn=0 if peso>=2500 
replace bpn=1 if peso<2500


*Criar desfecho
gen bpn2= BPN
replace bpn2="0" if bpn2=="    2,00"
replace bpn2="1" if bpn2=="    1,00"
destring bpn2, replace

gen


**meninos**

*adequado
replace bwga=0 if sexo_filho_new==0 & semagestac2==24 & peso>=500 & peso<=820 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==25 & peso>=570 & peso<=930 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==26 & peso>=650 & peso<=1060 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==27 & peso>=740 & peso<=1210 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==28 & peso>=840 & peso<=1370 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==29 & peso>=950 & peso<=1560 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==30 & peso>=1070 & peso<=1760 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==31 & peso>=1210 & peso<=1980 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==32 & peso>=1360 & peso<=2230 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==33 & peso>=1430 & peso<=2520 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==34 & peso>=1710 & peso<=2790 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==35 & peso>=1950 & peso<=3030 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==36 & peso>=2180 & peso<=3250 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==37 & peso>=2380 & peso<=3450 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==38 & peso>=2570 & peso<=3630 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==39 & peso>=2730 & peso<=3790 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==40 & peso>=2880 & peso<=3940 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==41 & peso>=3010 & peso<=4060 & peso!=.
replace bwga=0 if sexo_filho_new==0 & semagestac2==42 & peso>=3120 & peso<=4170 & peso!=.

*pequeno para idade gestacional (<p10)
replace bwga=1 if sexo_filho_new==0 & semagestac2==24 & peso<500 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==25 & peso<570 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==26 & peso<650 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==27 & peso<740 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==28 & peso<840 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==29 & peso<950 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==30 & peso<1070 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==31 & peso<1210 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==32 & peso<1360 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==33 & peso<1430 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==34 & peso<1710 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==35 & peso<1950 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==36 & peso<2180 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==37 & peso<2380 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==38 & peso<2570 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==39 & peso<2730 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==40 & peso<2880 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==41 & peso<3010 & peso!=.
replace bwga=1 if sexo_filho_new==0 & semagestac2==42 & peso<3120 & peso!=.

*grande para idade gestacional (>p90)
replace bwga=2 if sexo_filho_new==0 & semagestac2==24 & peso>820 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==25 & peso>930 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==26 & peso>1060 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==27 & peso>1210 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==28 & peso>1370 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==29 & peso>1560 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==30 & peso>1760 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==31 & peso>1980 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==32 & peso>2230 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==33 & peso>2520 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==34 & peso>2790 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==35 & peso>3030 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==36 & peso>3250 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==37 & peso>3450 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==38 & peso>3630 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==39 & peso>3790 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==40 & peso>3940 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==41 & peso>4060 & peso!=.
replace bwga=2 if sexo_filho_new==0 & semagestac2==42 & peso>4170 & peso!=.


**meninas**

*adequado
replace bwga=0 if sexo_filho_new==1 & semagestac2==24 & peso>=470 & peso<=770 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==25 & peso>=540 & peso<=880 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==26 & peso>=610 & peso<=1010 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==27 & peso>=700 & peso<=1140 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==28 & peso>=790 & peso<=1300 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==29 & peso>=900 & peso<=1470 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==30 & peso>=1010 & peso<=1660 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==31 & peso>=1140 & peso<=1870 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==32 & peso>=1280 & peso<=2110 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==33 & peso>=1410 & peso<=2350 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==34 & peso>=1680 & peso<=2640 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==35 & peso>=1920 & peso<=2890 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==36 & peso>=2140 & peso<=3120 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==37 & peso>=2330 & peso<=3320 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==38 & peso>=2500 & peso<=3510 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==39 & peso>=2650 & peso<=3660 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==40 & peso>=2780 & peso<=3800 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==41 & peso>=2890 & peso<=3920 & peso!=.
replace bwga=0 if sexo_filho_new==1 & semagestac2==42 & peso>=2980 & peso<=4010 & peso!=.

*pequena para idade gestacional (<p10)
replace bwga=1 if sexo_filho_new==1 & semagestac2==24 & peso<470 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==25 & peso<540 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==26 & peso<610 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==27 & peso<700 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==28 & peso<790 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==29 & peso<900 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==30 & peso<1010 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==31 & peso<1140 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==32 & peso<1280 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==33 & peso<1410 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==34 & peso<1680 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==35 & peso<1920 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==36 & peso<2140 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==37 & peso<2330 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==38 & peso<2500 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==39 & peso<2650 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==40 & peso<2780 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==41 & peso<2890 & peso!=.
replace bwga=1 if sexo_filho_new==1 & semagestac2==42 & peso<2980 & peso!=.

*grande para idade gestacional (>p90)
replace bwga=2 if sexo_filho_new==1 & semagestac2==24 & peso>770 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==25 & peso>880 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==26 & peso>1010 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==27 & peso>1140 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==28 & peso>1300 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==29 & peso>1470 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==30 & peso>1660 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==31 & peso>1870 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==32 & peso>2110 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==33 & peso>2350 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==34 & peso>2640 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==35 & peso>2890 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==36 & peso>3120 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==37 & peso>3320 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==38 & peso>3510 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==39 & peso>3660 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==40 & peso>3800 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==41 & peso>3920 & peso!=.
replace bwga=2 if sexo_filho_new==1 & semagestac2==42 & peso>4010 & peso!=.






