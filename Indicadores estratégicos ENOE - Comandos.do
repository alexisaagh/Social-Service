*** LLAMAR LA BASE DE DATOS ***
use "/Users/alexisaagh/Downloads/enoe_n_2021_trim3_dta-2/enoen_sdemt321.dta"
 *** LIMPIAR LA BASE DE DATOS ***
 keep if r_def==0
 keep if c_res!=2
 *** PEA ***
 tab clase1 sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98
 *** PORCENTAJES EN DIRECCIÓN COLUMNA ***
 tab clase1 sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98, col
 *** PORCENTAJES EN DIRECCIÓN RENGLÓN ***
 tab clase1 sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98, row
 *** OCUPACIÓN ***
 tab clase2 sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98
 *** POSICIÓN EN LA OCUPACIÓN ***
 tab pos_ocu sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98
 *** SECTORES ***
 tab rama_est1 sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98
 *** SECTORES (DESGLOZADO) ***
 tab rama_est2 sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98
 *** NIVEL DE INGRESOS ***
 tab ing7c sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98
 *** DURACIÓN DE LA JORNADA DE TRABAJO ***
 tab dur9c sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98
 *** ACCESO A LA SALUD ***
 tab seg_soc sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98
 *** AMBITO DE LA UNIDAD ECONÓMICA ***
 tab ambito1 sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98
 *** TAMAÑO DE LA UNIDAD ECONÓMICA ***
 tab ambito2 sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98
 *** DISTRIBUCIÓN POR TIPO DE UNIDAD ECONÓMICA ***
 tab tue1 sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98
 *** CONDICIÓN DE INFORMALIDAD ***
 tab emp_ppal sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98
 tab tue_ppal sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98
 *** TRABAJODRES SUBORDINADOS POR SECTOR ***
 tab rama_est1 sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98 & pos_ocu==1
 tab rama_est2 sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98 & pos_ocu==1
 *** TRABAJODRES SUBORDINADOS POR TIPO DE CONTRATO ***
 tab tip_con sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98 & pos_ocu==1
 *** TRABAJODRES SUBORDINADOS NO AGROPECUARIOS POR TAMAÑO DE UNIDAD ECONÓMICA ***
 tab ambito2 sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98 & pos_ocu==1 & ambito1==2
 *** POBLACIÓN SUBOCUPADA POR BUSQUEDA DE TRABAJO ***
 tab busqueda sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98 & sub_o==1
 *** POBLACIÓN SUBOCUPADA POR NIVEL DE INSTRUCCIÓN ***
 tab niv_ins sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98 & sub_o==1
 *** POBLACIÓN SUBOCUPADA POR POSICIÓN EN LA OCUPACIÓN ***
 tab pos_ocu sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98 & sub_o==1
 *** POBLACIÓN SUBOCUPADA POR SECTOR ***
 tab rama_est1 sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98 & sub_o==1
 tab rama_est2 sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98 & sub_o==1
 *** POBLACIÓN DESOCUPADA POR EDAD ***
 tab eda5c sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98 & clase2==2
 *** POBLACIÓN DESOCUPADA POR NIVEL DE INSTRUCCIÓN ***
 tab niv_ins sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98 & clase2==2
 *** POBLACIÓN DESOCUPADA POR ANTECEDENTE LABORAL ***
 tab d_cexp_est sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98 & clase2==2
 *** POBLACIÓN DESOCUPADA POR DURACIÓN DEL DESEMPLEO ***
 tab dur_des sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98 & clase2==2
 *** PNEA ***
 tab pnea_est sex [w=fac_tri] if ent==9 & eda>=15 & eda<=98
 ***  ***
 log close
 