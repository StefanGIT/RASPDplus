# Script that describes, how the models were trained. 
cd $SCRIPTS_DIR
conda activate raspdml

# Full model. Computation of rotatable bonds was unreliable with the given pipeline, we thus omitted from the list of features
python train_and_eval.py -fi -d ../data -f ../data/raspdeep_bigger.xlsx -e ../../external_test/BACE_Protein_Ligand_Parameter.txt ../../external_test/CDK2-CyclinA_Protein_Ligand_Parameter.txt ../../external_test/CDK2-Kinase_Protein_Ligand_Parameter.txt ../../external_test/CDK2_Protein_Ligand_Parameter.txt ../../external_test/CHK1-Kinase_Protein_Ligand_Parameter.txt ../../external_test/ERK2_Protein_Ligand_Parameter.txt ../../external_test/HSP90_Protein_Ligand_Parameter.txt ../../external_test/LpxC_Protein_Ligand_Parameter.txt ../../external_test/Mcl-1_Protein_Ligand_Parameter.txt ../../external_test/Mcl-all_Protein_Ligand_Parameter.txt ../../external_test/P38_Protein_Ligand_Parameter.txt ../../external_test/Parameter_HiQ_Set1_55complexes.txt ../../external_test/Parameter_HiQ_Set2_47complexes.txt ../../external_test/PTP1B_Protein_Ligand_Parameter.txt ../../external_test/SYK_Protein_Ligand_Parameter.txt ../../external_test/Thrombin_Protein_Ligand_Parameter.txt ../../external_test/TrmD_Protein_Ligand_Parameter.txt ../../external_test/TYK2_all_Protein_Ligand_Parameter.txt ../../external_test/TYK2_Protein_Ligand_Parameter.txt ../../external_test/Urokinase_Protein_Ligand_Parameter.txt -c rot_bonds
# Ligand only
python train_and_eval.py -fi -d ../data -f ../data/raspdeep_bigger.xlsx -e ../../external_test/BACE_Protein_Ligand_Parameter.txt ../../external_test/CDK2-CyclinA_Protein_Ligand_Parameter.txt ../../external_test/CDK2-Kinase_Protein_Ligand_Parameter.txt ../../external_test/CDK2_Protein_Ligand_Parameter.txt ../../external_test/CHK1-Kinase_Protein_Ligand_Parameter.txt ../../external_test/ERK2_Protein_Ligand_Parameter.txt ../../external_test/HSP90_Protein_Ligand_Parameter.txt ../../external_test/LpxC_Protein_Ligand_Parameter.txt ../../external_test/Mcl-1_Protein_Ligand_Parameter.txt ../../external_test/Mcl-all_Protein_Ligand_Parameter.txt ../../external_test/P38_Protein_Ligand_Parameter.txt ../../external_test/Parameter_HiQ_Set1_55complexes.txt ../../external_test/Parameter_HiQ_Set2_47complexes.txt ../../external_test/PTP1B_Protein_Ligand_Parameter.txt ../../external_test/SYK_Protein_Ligand_Parameter.txt ../../external_test/Thrombin_Protein_Ligand_Parameter.txt ../../external_test/TrmD_Protein_Ligand_Parameter.txt ../../external_test/TYK2_all_Protein_Ligand_Parameter.txt ../../external_test/TYK2_Protein_Ligand_Parameter.txt ../../external_test/Urokinase_Protein_Ligand_Parameter.txt -c PD\(K+R+HIP\) PA\(D+E\) PD\(T+S+Y+DH+EH\) PA\(N+Q+T+S+DH+EH\) PD\(LYN+N+Q\) PA\(LYN\) PD\(W+H\) PA\(Y+H\) PD\(Amide-NH\) PA\(Amide-O\) PP\(Non-Arom\) PP\(Arom\) PMR\(Non-Arom\) PMR\(Arom\) Volume rot_bonds
# Protein descriptors only
python train_and_eval.py -fi -d ../data -f ../data/raspdeep_bigger.xlsx -e ../../external_test/BACE_Protein_Ligand_Parameter.txt ../../external_test/CDK2-CyclinA_Protein_Ligand_Parameter.txt ../../external_test/CDK2-Kinase_Protein_Ligand_Parameter.txt ../../external_test/CDK2_Protein_Ligand_Parameter.txt ../../external_test/CHK1-Kinase_Protein_Ligand_Parameter.txt ../../external_test/ERK2_Protein_Ligand_Parameter.txt ../../external_test/HSP90_Protein_Ligand_Parameter.txt ../../external_test/LpxC_Protein_Ligand_Parameter.txt ../../external_test/Mcl-1_Protein_Ligand_Parameter.txt ../../external_test/Mcl-all_Protein_Ligand_Parameter.txt ../../external_test/P38_Protein_Ligand_Parameter.txt ../../external_test/Parameter_HiQ_Set1_55complexes.txt ../../external_test/Parameter_HiQ_Set2_47complexes.txt ../../external_test/PTP1B_Protein_Ligand_Parameter.txt ../../external_test/SYK_Protein_Ligand_Parameter.txt ../../external_test/Thrombin_Protein_Ligand_Parameter.txt ../../external_test/TrmD_Protein_Ligand_Parameter.txt ../../external_test/TYK2_all_Protein_Ligand_Parameter.txt ../../external_test/TYK2_Protein_Ligand_Parameter.txt ../../external_test/Urokinase_Protein_Ligand_Parameter.txt -c D A P MR W rot_bonds MASS
# MR only
python train_and_eval.py -fi -d ../data -f ../data/raspdeep_bigger.xlsx -e ../../external_test/BACE_Protein_Ligand_Parameter.txt ../../external_test/CDK2-CyclinA_Protein_Ligand_Parameter.txt ../../external_test/CDK2-Kinase_Protein_Ligand_Parameter.txt ../../external_test/CDK2_Protein_Ligand_Parameter.txt ../../external_test/CHK1-Kinase_Protein_Ligand_Parameter.txt ../../external_test/ERK2_Protein_Ligand_Parameter.txt ../../external_test/HSP90_Protein_Ligand_Parameter.txt ../../external_test/LpxC_Protein_Ligand_Parameter.txt ../../external_test/Mcl-1_Protein_Ligand_Parameter.txt ../../external_test/Mcl-all_Protein_Ligand_Parameter.txt ../../external_test/P38_Protein_Ligand_Parameter.txt ../../external_test/Parameter_HiQ_Set1_55complexes.txt ../../external_test/Parameter_HiQ_Set2_47complexes.txt ../../external_test/PTP1B_Protein_Ligand_Parameter.txt ../../external_test/SYK_Protein_Ligand_Parameter.txt ../../external_test/Thrombin_Protein_Ligand_Parameter.txt ../../external_test/TrmD_Protein_Ligand_Parameter.txt ../../external_test/TYK2_all_Protein_Ligand_Parameter.txt ../../external_test/TYK2_Protein_Ligand_Parameter.txt ../../external_test/Urokinase_Protein_Ligand_Parameter.txt -c PD\(K+R+HIP\) PA\(D+E\) PD\(T+S+Y+DH+EH\) PA\(N+Q+T+S+DH+EH\) PD\(LYN+N+Q\) PA\(LYN\) PD\(W+H\) PA\(Y+H\) PD\(Amide-NH\) PA\(Amide-O\) PP\(Non-Arom\) PP\(Arom\) PMR\(Non-Arom\) PMR\(Arom\) Volume D A P W rot_bonds MASS
# MW only
python train_and_eval.py -fi -d ../data -f ../data/raspdeep_bigger.xlsx -e ../../external_test/BACE_Protein_Ligand_Parameter.txt ../../external_test/CDK2-CyclinA_Protein_Ligand_Parameter.txt ../../external_test/CDK2-Kinase_Protein_Ligand_Parameter.txt ../../external_test/CDK2_Protein_Ligand_Parameter.txt ../../external_test/CHK1-Kinase_Protein_Ligand_Parameter.txt ../../external_test/ERK2_Protein_Ligand_Parameter.txt ../../external_test/HSP90_Protein_Ligand_Parameter.txt ../../external_test/LpxC_Protein_Ligand_Parameter.txt ../../external_test/Mcl-1_Protein_Ligand_Parameter.txt ../../external_test/Mcl-all_Protein_Ligand_Parameter.txt ../../external_test/P38_Protein_Ligand_Parameter.txt ../../external_test/Parameter_HiQ_Set1_55complexes.txt ../../external_test/Parameter_HiQ_Set2_47complexes.txt ../../external_test/PTP1B_Protein_Ligand_Parameter.txt ../../external_test/SYK_Protein_Ligand_Parameter.txt ../../external_test/Thrombin_Protein_Ligand_Parameter.txt ../../external_test/TrmD_Protein_Ligand_Parameter.txt ../../external_test/TYK2_all_Protein_Ligand_Parameter.txt ../../external_test/TYK2_Protein_Ligand_Parameter.txt ../../external_test/Urokinase_Protein_Ligand_Parameter.txt -c PD\(K+R+HIP\) PA\(D+E\) PD\(T+S+Y+DH+EH\) PA\(N+Q+T+S+DH+EH\) PD\(LYN+N+Q\) PA\(LYN\) PD\(W+H\) PA\(Y+H\) PD\(Amide-NH\) PA\(Amide-O\) PP\(Non-Arom\) PP\(Arom\) PMR\(Non-Arom\) PMR\(Arom\) Volume D A P W rot_bonds MR