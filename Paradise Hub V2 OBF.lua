local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25)local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function()return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...)local v29=1;local v30;v27=v12(v11(v27,5),v7("\2\115","\224\44\93\134\165\173\193\30"),function(v42)if (v9(v42,2)==79) then v30=v8(v11(v42,1,1));return "";else local v103=0;local v104;while true do if (v103==0) then v104=v10(v8(v42,16));if v30 then local v119=0;local v120;while true do if (v119==1) then return v120;end if (v119==0) then v120=v13(v104,v30);v30=nil;v119=1;end end else return v104;end break;end end end end);local function v31(v43,v44,v45)if v45 then local v105=(v43/(2^(v44-(2 -1))))%(2^(((v45-1) -(v44-1)) + (2 -1))) ;return v105-(v105%1) ;else local v106=0;local v107;while true do if (v106==0) then v107=2^(v44-1) ;return (((v43%(v107 + v107))>=v107) and (1 -0)) or 0 ;end end end end local function v32()local v46=0;local v47;while true do if (v46==0) then v47=v9(v27,v29,v29);v29=v29 + 1 ;v46=1;end if (v46==1) then return v47;end end end local function v33()local v48=0;local v49;local v50;while true do if (v48==1) then return (v50 * 256) + v49 ;end if (v48==0) then v49,v50=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;v48=1;end end end local function v34()local v51,v52,v53,v54=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;return (v54 * 16777216) + (v53 * (168813 -103277)) + (v52 * 256) + v51 ;end local function v35()local v55=0;local v56;local v57;local v58;local v59;local v60;local v61;while true do if (v55==1) then v58=620 -(555 + 64) ;v59=(v31(v57,1,951 -(857 + 74) ) * (2^32)) + v56 ;v55=2;end if (v55==2) then v60=v31(v57,21,31);v61=((v31(v57,32)==1) and  -1) or 1 ;v55=3;end if (v55==3) then if (v60==0) then if (v59==0) then return v61 * 0 ;else v60=1;v58=568 -(367 + 201) ;end elseif (v60==2047) then return ((v59==0) and (v61 * (1/0))) or (v61 * NaN) ;end return v16(v61,v60-1023 ) * (v58 + (v59/(2^52))) ;end if (v55==0) then v56=v34();v57=v34();v55=1;end end end local function v36(v62)local v63;if  not v62 then v62=v34();if (v62==0) then return "";end end v63=v11(v27,v29,(v29 + v62) -1 );v29=v29 + v62 ;local v64={};for v78=928 -(214 + 713) , #v63 do v64[v78]=v10(v9(v11(v63,v78,v78)));end return v14(v64);end local v37=v34;local function v38(...)return {...},v20("#",...);end local function v39()local v65={};local v66={};local v67={};local v68={v65,v66,nil,v67};local v69=v34();local v70={};for v80=1638 -(1523 + 114) ,v69 do local v81=v32();local v82;if (v81==1) then v82=v32()~=0 ;elseif (v81==2) then v82=v35();elseif (v81==3) then v82=v36();end v70[v80]=v82;end v68[3]=v32();for v84=1,v34() do local v85=0;local v86;while true do if (v85==0) then v86=v32();if (v31(v86,1,1)==0) then local v115=0;local v116;local v117;local v118;while true do if (v115==0) then v116=v31(v86,2,3);v117=v31(v86,4,6);v115=1;end if (v115==2) then if (v31(v117,1,1)==1) then v118[2]=v70[v118[2]];end if (v31(v117,2,2)==1) then v118[3]=v70[v118[3]];end v115=3;end if (v115==1) then v118={v33(),v33(),nil,nil};if (v116==0) then local v126=0;while true do if (v126==0) then v118[3]=v33();v118[4]=v33();break;end end elseif (v116==1) then v118[3]=v34();elseif (v116==2) then v118[3]=v34() -(2^16) ;elseif (v116==3) then local v253=0;while true do if (v253==0) then v118[3 + 0 ]=v34() -(2^16) ;v118[4]=v33();break;end end end v115=2;end if (v115==3) then if (v31(v117,3,3)==(1 -0)) then v118[4]=v70[v118[4]];end v65[v84]=v118;break;end end end break;end end end for v87=1,v34() do v66[v87-1 ]=v39();end return v68;end local function v40(v72,v73,v74)local v75=v72[1];local v76=v72[2];local v77=v72[3];return function(...)local v89=v75;local v90=v76;local v91=v77;local v92=v38;local v93=1;local v94= -1;local v95={};local v96={...};local v97=v20("#",...) -1 ;local v98={};local v99={};for v108=0,v97 do if (v108>=v91) then v95[v108-v91 ]=v96[v108 + 1 ];else v99[v108]=v96[v108 + 1 ];end end local v100=(v97-v91) + 1 ;local v101;local v102;while true do v101=v89[v93];v102=v101[1];if (v102<=23) then if (v102<=11) then if (v102<=5) then if (v102<=2) then if (v102<=0) then v99[v101[2]]=v74[v101[3]];elseif (v102>1) then for v213=v101[2],v101[3] do v99[v213]=nil;end else v99[v101[1067 -(68 + 997) ]]();end elseif (v102<=3) then local v131=v101[2];local v132=v99[v101[3]];v99[v131 + 1 ]=v132;v99[v131]=v132[v101[4]];elseif (v102>4) then if v99[v101[2]] then v93=v93 + 1 ;else v93=v101[3];end else v99[v101[2]]=v73[v101[3]];end elseif (v102<=8) then if (v102<=6) then v99[v101[2]]={};elseif (v102>7) then v99[v101[2]]=v99[v101[3]][v101[4]];else local v173=0;local v174;local v175;while true do if (v173==0) then v174=v101[2];v175=v99[v101[3]];v173=1;end if (v173==1) then v99[v174 + (1271 -(226 + 1044)) ]=v175;v99[v174]=v175[v101[17 -13 ]];break;end end end elseif (v102<=9) then v99[v101[2]]=v40(v90[v101[3]],nil,v74);elseif (v102>10) then local v176=0;local v177;while true do if (v176==0) then v177=v101[2];do return v21(v99,v177,v94);end break;end end else v93=v101[3];end elseif (v102<=17) then if (v102<=14) then if (v102<=12) then local v138=0;local v139;local v140;local v141;local v142;while true do if (v138==2) then for v231=v139,v94 do v142=v142 + 1 ;v99[v231]=v140[v142];end break;end if (v138==1) then v94=(v141 + v139) -1 ;v142=0;v138=2;end if (v138==0) then v139=v101[2];v140,v141=v92(v99[v139](v21(v99,v139 + 1 ,v101[3])));v138=1;end end elseif (v102>13) then v99[v101[2]]={};elseif (v99[v101[2]]==v101[4]) then v93=v93 + 1 ;else v93=v101[3];end elseif (v102<=15) then local v143=0;local v144;local v145;local v146;while true do if (1==v143) then v146={};v145=v18({},{[v7("\254\253\51\192\182\83\18","\146\161\162\90\174\210\54\106")]=function(v235,v236)local v237=0;local v238;while true do if (v237==0) then v238=v146[v236];return v238[1][v238[2 + 0 ]];end end end,[v7("\79\210\78\93\55\71\126\233\69\64","\46\16\141\32\56\64")]=function(v239,v240,v241)local v242=0;local v243;while true do if (v242==0) then v243=v146[v240];v243[1 + 0 ][v243[2]]=v241;break;end end end});v143=2;end if (v143==0) then v144=v90[v101[120 -(32 + 85) ]];v145=nil;v143=1;end if (2==v143) then for v244=1,v101[4] do local v245=0;local v246;while true do if (v245==1) then if (v246[1]==29) then v146[v244-1 ]={v99,v246[5 -2 ]};else v146[v244-1 ]={v73,v246[3]};end v98[ #v98 + 1 ]=v146;break;end if (v245==0) then v93=v93 + 1 ;v246=v89[v93];v245=1;end end end v99[v101[2]]=v40(v144,v145,v74);break;end end elseif (v102==16) then if (v99[v101[2]]~=v101[4]) then v93=v93 + 1 ;else v93=v101[3];end else local v180=v101[2];v99[v180]=v99[v180](v21(v99,v180 + 1 ,v94));end elseif (v102<=20) then if (v102<=18) then v93=v101[3];elseif (v102==(34 -15)) then if (v99[v101[2]]~=v101[4]) then v93=v93 + 1 ;else v93=v101[3];end elseif v99[v101[2]] then v93=v93 + 1 ;else v93=v101[3];end elseif (v102<=21) then v99[v101[2]][v101[353 -(87 + 263) ]]=v101[4];elseif (v102==(202 -(67 + 113))) then v99[v101[2]]=v101[3];else v99[v101[2]]=v73[v101[3]];end elseif (v102<=35) then if (v102<=29) then if (v102<=26) then if (v102<=24) then local v150=v101[2 + 0 ];do return v21(v99,v150,v94);end elseif (v102==(61 -36)) then local v186=v101[2];v99[v186]=v99[v186](v21(v99,v186 + 1 ,v94));else v99[v101[2]]=v99[v101[3]];end elseif (v102<=(20 + 7)) then for v163=v101[2],v101[11 -8 ] do v99[v163]=nil;end elseif (v102==28) then local v190=0;local v191;local v192;while true do if (v190==0) then v191=v101[2];v192=v99[v191];v190=1;end if (v190==1) then for v265=v191 + 1 ,v94 do v15(v192,v99[v265]);end break;end end else v99[v101[2]]=v99[v101[3]];end elseif (v102<=32) then if (v102<=30) then v99[v101[2]]=v74[v101[3]];elseif (v102==31) then local v195=v90[v101[3]];local v196;local v197={};v196=v18({},{[v7("\101\235\137\242\94\209\152","\156\58\180\224")]=function(v218,v219)local v220=v197[v219];return v220[1][v220[2]];end,[v7("\218\105\84\205\242\95\84\204\224\78","\168\133\54\58")]=function(v221,v222,v223)local v224=v197[v222];v224[1][v224[2]]=v223;end});for v226=1,v101[4] do local v227=0;local v228;while true do if (v227==1) then if (v228[953 -(802 + 150) ]==29) then v197[v226-1 ]={v99,v228[3]};else v197[v226-1 ]={v73,v228[3]};end v98[ #v98 + 1 ]=v197;break;end if (v227==0) then v93=v93 + 1 ;v228=v89[v93];v227=1;end end end v99[v101[2]]=v40(v195,v196,v74);else do return v99[v101[2]]();end end elseif (v102<=33) then v99[v101[2]]=v40(v90[v101[3]],nil,v74);elseif (v102>34) then local v199=v101[2];v99[v199]=v99[v199](v21(v99,v199 + 1 ,v101[3]));else local v201=0;local v202;local v203;while true do if (1==v201) then for v268=v202 + 1 ,v94 do v15(v203,v99[v268]);end break;end if (v201==0) then v202=v101[2];v203=v99[v202];v201=1;end end end elseif (v102<=(74 -33)) then if (v102<=38) then if (v102<=36) then local v154=0;local v155;while true do if (v154==0) then v155=v101[2];do return v99[v155](v21(v99,v155 + 1 ,v101[3 + 0 ]));end break;end end elseif (v102>37) then if (v99[v101[2]]==v101[1001 -(915 + 82) ]) then v93=v93 + 1 ;else v93=v101[3];end else do return;end end elseif (v102<=39) then local v156=v101[2];v99[v156]=v99[v156](v21(v99,v156 + 1 ,v101[3]));elseif (v102>40) then v99[v101[2]][v101[3]]=v101[4];else v99[v101[5 -3 ]]();end elseif (v102<=44) then if (v102<=42) then do return;end elseif (v102>43) then do return v99[v101[2]]();end else v99[v101[2 + 0 ]]=v99[v101[3 -0 ]][v101[4]];end elseif (v102<=45) then local v158=v101[2];local v159,v160=v92(v99[v158](v21(v99,v158 + 1 ,v101[3])));v94=(v160 + v158) -1 ;local v161=0;for v165=v158,v94 do local v166=0;while true do if (v166==0) then v161=v161 + (1188 -(1069 + 118)) ;v99[v165]=v159[v161];break;end end end elseif (v102==46) then v99[v101[2]]=v101[3];else local v210=0;local v211;while true do if (0==v210) then v211=v101[2];do return v99[v211](v21(v99,v211 + 1 ,v101[6 -3 ]));end break;end end end v93=v93 + 1 ;end end;end return v40(v39(),{},v28)(...);end v23("LOL!043O0003063O00737472696E6703053O006D6174636803083O00746F6E756D62657203053O007063612O6C000D3O00124O00013O0020085O000200122O000100033O00122O000200043O00060F00033O000100042O001D3O00014O001D8O001D3O00024O001D3O00034O001A000400034O0020000400014O000B00046O002A3O00013O00013O00043O00027O004003053O003A25642B3A2O033O0025642B026O00F03F001B3O0002218O000400016O0004000200014O0004000300014O000E00046O0004000500024O001A00066O001B000700074O002D000500074O002200043O0001002008000400040001001216000500024O0023000300050002001216000400034O002D000200044O001100013O000200260D00010017000100040004123O001700012O001A00016O000E00026O0024000100024O000B00015O0004123O001A00012O0004000100034O0020000100014O000B00016O002A3O00013O00013O00143O0003093O00776F726B737061636503183O0046612O6C656E506172747344657374726F79486569676874025O006AE8C003043O0067616D6503073O00506C6163654964023O007B1DEBF641022O00E84C10DC0942030A3O006C6F6164737472696E6703073O00482O747047657403463O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F536F696C646572422O6F792F4D6170312F6D61696E2F4D6170312532304F42462E6C7561022O00B8DB715C0542022O00B8455CDB0942022O006874F5DB094203463O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F536F696C646572422O6F792F4D6170322F6D61696E2F4D6170322532304F42462E6C7561022O00F04ED530F64103463O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F536F696C646572422O6F792F4D656E752F6D61696E2F4D656E752532304F42462E6C7561022O002099625C054203483O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F536F696C646572422O6F792F4D7567656E2F6D61696E2F4D7567656E2532304F42462E6C756103523O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F536F696C646572422O6F792F4F7577696761686172612F6D61696E2F4F7577696761686172612532304F42462E6C7561026O00F03F013E3O0006143O003C00013O0004123O003C000100122O000100013O00301500010002000300122O000100043O0020080001000100050026130001000A000100060004123O000A000100260D00010012000100070004123O0012000100122O000200083O00122O000300043O0020030003000300090012160005000A4O002D000300054O001100023O00022O00010002000100010004123O003D0001002613000100180001000B0004123O00180001002613000100180001000C0004123O0018000100260D000100200001000D0004123O0020000100122O000200083O00122O000300043O0020030003000300090012160005000E4O002D000300054O001100023O00022O00010002000100010004123O003D000100260D0001002A0001000F0004123O002A000100122O000200083O00122O000300043O002003000300030009001216000500104O002D000300054O001100023O00022O00010002000100010004123O003D000100260D00010034000100110004123O0034000100122O000200083O00122O000300043O002003000300030009001216000500124O002D000300054O001100023O00022O00010002000100010004123O003D000100122O000200083O00122O000300043O002003000300030009001216000500134O002D000300054O001100023O00022O00010002000100010004123O003D000100200800013O00142O002A3O00017O00",v17(),...);