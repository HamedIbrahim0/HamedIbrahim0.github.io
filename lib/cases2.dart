// cases2.dart

 // To use the CaseItem class definition

enum ClinicalCategory {
  cardiovascular('Cardiovascular Disorders'),
  endocrine('Endocrinologic Disorders'),
  respiratory('Respiratory Disorders'),
  boneJoint('Bone and Joint Disorders'),
  infectious('Infectious Diseases'),
  gi('Gastrointestinal Disorders'),
  hematologic('Hematologic Disorders'),
  miscellaneous('Miscellaneous');

  final String displayName;
  const ClinicalCategory(this.displayName);
}

class CaseItem {
  final int id;
  final String question;
  final List<String> options;
  final int correctIndex;
  final String explanation;
  final List<ClinicalCategory> categories;

  const CaseItem({
    required this.id,
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.explanation,
    required this.categories,
  });
}

const List<CaseItem> clinicalCaseList = [
  // =======================================================
  // SECTION 1: CARDIOVASCULAR DISORDERS - HYPERTENSION
  // =======================================================
  CaseItem(
    id: 301,
    question: 'Hypertension of 180/120 mmHg that results in renal failure is classified as?',
    options: ['Isolated systolic hypertension', 'Hypertensive urgency', 'Hypertensive emergency', 'Malignant hypertension', 'Secondary hypertension'],
    correctIndex: 2,
    explanation: 'A hypertensive crisis (BP >180/120 mmHg) with evidence of acute end-organ damage (like renal failure) is classified as a hypertensive emergency. Hypertensive urgency is a similar BP elevation without organ damage.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 302,
    question: 'A 63-year-old male with Diabetes, a BP of 180/90 mmHg, and Stage C heart failure. What is the best initial choice for treating his hypertension?',
    options: ['Carvedilol', 'Lisinopril', 'Sodium nitroprusside', 'Hydrochlorothiazide', 'Doxazosin'],
    correctIndex: 1,
    explanation: 'In a patient with Heart Failure with reduced Ejection Fraction (HFrEF), an ACE inhibitor like Lisinopril is a cornerstone, guideline-directed therapy that reduces mortality and is used to treat both conditions.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 303,
    question: 'For which of the following conditions are ß-blockers NOT recommended as a first-line therapy (in the absence of other compelling indications)?',
    options: ['Angina', 'Chronic heart failure', 'Hypertension', 'Myocardial infarction', 'Ventricular tachycardia'],
    correctIndex: 2,
    explanation: 'For uncomplicated hypertension, the four main first-line drug classes are ACE inhibitors, ARBs, CCBs, and thiazide diuretics. Beta-blockers are reserved for patients with compelling indications like heart failure or ischemic heart disease.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 304,
    question: 'What is the guideline-recommended diuretic for starting treatment of newly diagnosed hypertension?',
    options: ['Chlorthalidone', 'Hydrochlorothiazide', 'Furosemide', 'Amiloride', 'Spironolactone'],
    correctIndex: 0,
    explanation: 'Thiazide-type diuretics are preferred for hypertension. Chlorthalidone is often favored over hydrochlorothiazide due to its longer half-life and greater potency on a milligram-per-milligram basis.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 305,
    question: 'Angiotensin-Converting Enzyme (ACE) Inhibitors are contraindicated in patients with:',
    options: ['Hypertension and ischemic heart disease', 'Heart failure without hypertension', 'Bilateral renal artery stenosis', 'Diabetic nephropathy', 'Post myocardial infarction'],
    correctIndex: 2,
    explanation: 'ACE inhibitors can cause a sharp decrease in glomerular filtration rate in patients with bilateral renal artery stenosis, leading to acute kidney injury (AKI).',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 306,
    question: 'For a patient with a history of stroke or TIA, which antihypertensive is recommended, either alone or combined with an ACE inhibitor?',
    options: ['Thiazide diuretic', 'Spironolactone', 'Eplerenone', 'Potassium-sparing diuretics', 'Loop diuretics'],
    correctIndex: 0,
    explanation: 'For secondary stroke prevention, guidelines recommend a thiazide diuretic, an ACE inhibitor, or the combination of both to effectively lower blood pressure and reduce the risk of recurrence.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 307,
    question: 'A 28-year-old woman with hypertension on lisinopril is planning to conceive. What is the best course of action?',
    options: ['Continue lisinopril and add HCTZ', 'Discontinue all medications', 'Discontinue lisinopril and start labetalol', 'Continue lisinopril and add atenolol', 'Increase dose of lisinopril'],
    correctIndex: 2,
    explanation: 'ACE inhibitors like lisinopril are teratogenic and contraindicated in pregnancy. She should be switched to a pregnancy-safe antihypertensive like labetalol, nifedipine, or methyldopa.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 308,
    question: 'A 50-year-old man treated for hypertension develops gingival hyperplasia. Which medication is the most likely cause?',
    options: ['Atorvastatin', 'Carvedilol', 'Doxazosin', 'Nifedipine', 'Telmisartan'],
    correctIndex: 3,
    explanation: 'Gingival hyperplasia is a well-known side effect of certain calcium channel blockers, particularly dihydropyridines like Nifedipine.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 309,
    question: 'Initial treatment for newly diagnosed Stage 2 hypertension should be:',
    options: ['Stage 1 hypertension therapy', 'Stage 2 hypertension with two first-line drugs', 'Isolated systolic hypertension therapy', 'Secondary hypertension therapy', 'None of the above'],
    correctIndex: 1,
    explanation: 'Guidelines recommend starting combination therapy, preferably with two first-line drugs from different classes, for patients with Stage 2 hypertension (BP ≥140/90 mmHg).',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 310,
    question: 'The definitive treatment for preeclampsia is:',
    options: ['Methyldopa', 'Delivery', 'Labetalol', 'Atenolol', 'Nifedipine'],
    correctIndex: 1,
    explanation: 'While medications can manage blood pressure, the only definitive cure for preeclampsia is the delivery of the baby and placenta.',
    categories: [ClinicalCategory.cardiovascular],
  ),

  // =======================================================
  // SECTION 1: CARDIOVASCULAR DISORDERS - ISCHEMIC HEART DISEASE
  // =======================================================
  CaseItem(
    id: 311,
    question: 'A patient with angina underwent coronary stent placement. What is the best antiplatelet therapy?',
    options: ['Prasugrel alone', 'Aspirin plus Prasugrel', 'Ticagrelor alone', 'Prasugrel plus ticagrelor', 'Ticagrelor plus clopidogrel'],
    correctIndex: 1,
    explanation: 'After coronary stent placement, dual antiplatelet therapy (DAPT) consisting of aspirin and a P2Y12 inhibitor (like Prasugrel, Ticagrelor, or Clopidogrel) is standard of care to prevent stent thrombosis.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 312,
    question: 'Regarding chronic stable exertional angina, all are true EXCEPT:',
    options: ['Pain is described as squeezing or crushing', 'Pain generally lasts more than 20 minutes', 'Pain sensation may be decreased in diabetics', 'Pain is usually relieved by rest', 'Pain is relieved by sublingual nitroglycerin'],
    correctIndex: 1,
    explanation: 'The chest pain of chronic stable angina is typically brief, lasting 5 to 15 minutes. Pain lasting longer than 20 minutes suggests unstable angina or a myocardial infarction.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 313,
    question: 'What is the most accurate, but invasive, test for confirming coronary artery disease?',
    options: ['Cardiac MRI', 'CT scan', 'Coronary angiography', 'Open heart surgery', 'Exercise ECG'],
    correctIndex: 2,
    explanation: 'Coronary angiography is the gold standard for visualizing the coronary arteries. It is invasive as it requires arterial catheterization to inject contrast dye.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 314,
    question: 'A 48-year-old man has variant (Prinzmetal) angina. Which of the following is NOT useful for treating this type of angina?',
    options: ['Nifedipine', 'Verapamil', 'Diltiazem', 'Atenolol', 'Nitrates'],
    correctIndex: 3,
    explanation: 'Non-selective beta-blockers like atenolol can potentially worsen coronary vasospasm by leaving alpha-adrenergic vasoconstriction unopposed. Calcium channel blockers and nitrates are the mainstays of therapy.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 315,
    question: 'For a patient with IHD on beta-blockers, if discontinuation is necessary, the dosage should be tapered over:',
    options: ['3 days', '7 days', '2-3 weeks', '1 month', '2 months'],
    correctIndex: 2,
    explanation: 'Abrupt withdrawal of beta-blockers can lead to rebound hypertension, tachycardia, and increased risk of ischemic events. A slow taper over 2-3 weeks is recommended to allow the body to readjust.',
    categories: [ClinicalCategory.cardiovascular],
  ),

  // =======================================================
  // SECTION 1: CARDIOVASCULAR DISORDERS - HEART FAILURE
  // =======================================================
  CaseItem(
    id: 316,
    question: 'In patients with chronic heart failure, all of the following drugs reduce mortality (prolong survival) EXCEPT:',
    options: ['Lisinopril', 'Bisoprolol', 'Thiazide diuretics', 'Sacubitril/valsartan', 'Candesartan'],
    correctIndex: 2,
    explanation: 'Diuretics, such as thiazides and loop diuretics, are essential for managing symptoms of fluid overload (congestion) in heart failure, but they have not been shown to alter disease progression or improve long-term survival.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 317,
    question: 'Which adverse effect is more common with sacubitril/valsartan compared with enalapril?',
    options: ['Angioedema', 'Hypotension', 'Cough', 'Hyperkalemia', 'All of the above'],
    correctIndex: 1,
    explanation: 'In major clinical trials, symptomatic hypotension was the most frequent adverse event that occurred more often with sacubitril/valsartan than with ACE inhibitors like enalapril.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 318,
    question: 'A 68-year-old female with stage C heart failure takes furosemide, lisinopril, and carvedilol. Which drug should be added to her current treatment?',
    options: ['Diltiazem', 'Spironolactone', 'Losartan', 'Isosorbide dinitrate', 'Bisoprolol'],
    correctIndex: 1,
    explanation: 'Guidelines recommend adding a mineralocorticoid receptor antagonist (MRA) like spironolactone or eplerenone to standard therapy for patients with HFrEF (NYHA class II-IV) to further reduce mortality.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 319,
    question: 'The most common reason for switching a patient from an ACE inhibitor to an ARB in heart failure treatment is:',
    options: ['Hyperkalemia', 'Renal insufficiency', 'Hypotension', 'Angioedema', 'Dry cough'],
    correctIndex: 4,
    explanation: 'A persistent, dry, nonproductive cough is a very common side effect of ACE inhibitors, caused by the accumulation of bradykinin. It is the leading reason for discontinuation and switching to an ARB.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 320,
    question: 'Which term refers to the changes in ventricular size, shape, and structure in response to cardiac injury or stress?',
    options: ['Systolic heart failure', 'Diastolic heart failure', 'Ventricular remodeling', 'Preserved ejection fraction', 'None of the above'],
    correctIndex: 2,
    explanation: 'Ventricular remodeling is the process by which the heart changes its size, shape, and function after injury, such as a myocardial infarction. This process is a key target of many heart failure therapies.',
    categories: [ClinicalCategory.cardiovascular],
  ),

  // =======================================================
  // SECTION 2: ENDOCRINOLOGIC DISORDERS - DIABETES MELLITUS
  // =======================================================
  CaseItem(
    id: 321,
    question: 'All of the following are true about type 2 diabetes mellitus EXCEPT:',
    options: ['Most patients are asymptomatic initially', 'Complications are often present at diagnosis', 'Most patients are overweight', 'Sulfonylureas are recommended as first-line pharmacotherapy', 'Insulin may be used early'],
    correctIndex: 3,
    explanation: 'Metformin is the universally recommended first-line pharmacotherapy for type 2 diabetes, unless contraindicated. Sulfonylureas are typically considered second-line agents.',
    categories: [ClinicalCategory.endocrine],
  ),
  CaseItem(
    id: 322,
    question: 'What is the minimum HbA1c level that is diagnostic of type 2 diabetes?',
    options: ['Cannot use HbA1c for diagnosis', '6.0% (42 mmol/mol)', '6.3% (45 mmol/mol)', '6.5% (48 mmol/mol)', '7.0% (53 mmol/mol)'],
    correctIndex: 3,
    explanation: 'An HbA1c of 6.5% or higher is one of the diagnostic criteria for diabetes mellitus, as established by the American Diabetes Association and other major health organizations.',
    categories: [ClinicalCategory.endocrine],
  ),
  CaseItem(
    id: 323,
    question: 'All the following are true about Metformin EXCEPT:',
    options: ['It increases glucose uptake into muscle cells', 'It has a low risk of hypoglycemia', 'It increases plasma triglycerides', 'It decreases LDL-C', 'It decreases hepatic glucose production'],
    correctIndex: 2,
    explanation: 'Metformin typically has a neutral or slightly favorable effect on lipid profiles, often causing a modest decrease in triglycerides and LDL-C. It does not increase plasma triglycerides.',
    categories: [ClinicalCategory.endocrine],
  ),
  CaseItem(
    id: 324,
    question: 'A patient with T2DM has established cardiovascular disease. Which hypoglycemic agent is recommended for cardiovascular benefit?',
    options: ['Pioglitazone', 'Empagliflozin', 'Bromocriptine', 'Acarbose', 'Glyburide'],
    correctIndex: 1,
    explanation: 'SGLT2 inhibitors (like Empagliflozin) and GLP-1 receptor agonists have demonstrated cardiovascular benefits in patients with T2DM and established ASCVD and are recommended by guidelines.',
    categories: [ClinicalCategory.endocrine],
  ),
  CaseItem(
    id: 325,
    question: 'A 73-year-old man with T2DM and heart failure is on multiple medications. Which hypoglycemic agent is contraindicated in this patient?',
    options: ['Acarbose', 'Glipizide', 'Metformin', 'Nateglinide', 'Pioglitazone'],
    correctIndex: 4,
    explanation: 'Thiazolidinediones (TZDs), such as Pioglitazone, can cause fluid retention and worsen heart failure. They are contraindicated in patients with NYHA Class III or IV heart failure.',
    categories: [ClinicalCategory.endocrine],
  ),
  
  // =======================================================
  // SECTION 3: RESPIRATORY DISORDERS
  // =======================================================
  CaseItem(
    id: 326,
    question: 'A patient with asthma is classified as having "intermittent asthma." How is their use of a short-acting beta-agonist (SABA) for symptom control typically described?',
    options: ['Daily use', 'More than twice a week', 'Use ≤2 days per week', 'Use only during exercise', 'Continuous use via nebulizer'],
    correctIndex: 2,
    explanation: 'According to GINA guidelines, intermittent asthma is characterized by symptom frequency of two days a week or less, requiring SABA use on those days only. More frequent use suggests a persistent classification.',
    categories: [ClinicalCategory.respiratory],
  ),
  CaseItem(
    id: 327,
    question: 'What is the primary mechanism of action of Montelukast in the treatment of asthma?',
    options: ['Mast cell stabilizer', 'Leukotriene receptor antagonist', 'Corticosteroid', 'Long-acting beta-agonist', 'IgE monoclonal antibody'],
    correctIndex: 1,
    explanation: 'Montelukast is a leukotriene receptor antagonist. It works by blocking the action of cysteinyl leukotrienes at the CysLT1 receptor, reducing airway inflammation, bronchoconstriction, and mucus production.',
    categories: [ClinicalCategory.respiratory],
  ),
  CaseItem(
    id: 328,
    question: 'In a patient with COPD having a severe exacerbation, which of the following is a cornerstone of inpatient management?',
    options: ['Oral antibiotics only', 'Inhaled corticosteroids alone', 'Systemic corticosteroids', 'Theophylline', 'Long-term oxygen therapy only'],
    correctIndex: 2,
    explanation: 'Systemic corticosteroids (e.g., oral prednisone or IV methylprednisolone) are crucial in managing COPD exacerbations. They shorten recovery time, improve lung function (FEV1), and reduce the risk of early relapse.',
    categories: [ClinicalCategory.respiratory],
  ),
  CaseItem(
    id: 329,
    question: 'Which of the following is considered the most effective therapy for reducing airflow limitation and improving symptoms in patients with COPD?',
    options: ['Short-acting beta-agonists (SABA) as needed', 'Inhaled corticosteroids (ICS)', 'Bronchodilators (LAMA or LABA)', 'Roflumilast', 'Oxygen therapy'],
    correctIndex: 2,
    explanation: 'Long-acting bronchodilators, including Long-Acting Muscarinic Antagonists (LAMAs) like tiotropium and Long-Acting Beta-Agonists (LABAs) like salmeterol, are central to maintenance therapy for COPD to improve airflow and reduce symptoms.',
    categories: [ClinicalCategory.respiratory],
  ),

  // =======================================================
  // SECTION 4: BONE AND JOINT DISORDERS
  // =======================================================
  CaseItem(
    id: 330,
    question: 'Which of the following is the first-line DMARD for most patients with newly diagnosed Rheumatoid Arthritis?',
    options: ['Hydroxychloroquine', 'Sulfasalazine', 'Leflunomide', 'Methotrexate', 'Etanercept'],
    correctIndex: 3,
    explanation: 'Methotrexate is considered the anchor drug and the initial DMARD of choice for the vast majority of patients with Rheumatoid Arthritis due to its established efficacy, tolerability, and low cost.',
    categories: [ClinicalCategory.boneJoint],
  ),
  CaseItem(
    id: 331,
    question: 'A patient with an acute gout flare is unable to take NSAIDs due to renal insufficiency. Which is an appropriate alternative for managing the acute attack?',
    options: ['Allopurinol', 'Probenecid', 'Febuxostat', 'Prednisone', 'High-dose aspirin'],
    correctIndex: 3,
    explanation: 'For an acute gout attack, anti-inflammatory treatment is needed. Corticosteroids like prednisone are a first-line option, especially when NSAIDs are contraindicated. Allopurinol and Probenecid are used for long-term prevention, not acute attacks.',
    categories: [ClinicalCategory.boneJoint],
  ),
  CaseItem(
    id: 332,
    question: 'Which statement is correct regarding the treatment of Osteoarthritis?',
    options: ['Opioids are first-line for moderate pain', 'Acetaminophen is considered first-line therapy for mild to moderate pain', 'Disease-modifying drugs can reverse joint damage', 'Intra-articular corticosteroids provide long-term relief (>6 months)', 'All patients should start with tramadol'],
    correctIndex: 1,
    explanation: 'For mild to moderate osteoarthritis pain, acetaminophen is recommended as the initial treatment of choice due to its favorable safety profile compared to NSAIDs, although its efficacy can be modest.',
    categories: [ClinicalCategory.boneJoint],
  ),
  CaseItem(
    id: 333,
    question: 'Which of the following is a first-line pharmacological therapy for preventing fractures in most postmenopausal women with osteoporosis?',
    options: ['Raloxifene', 'Calcitonin', 'Teriparatide', 'Alendronate', 'Denosumab'],
    correctIndex: 3,
    explanation: 'Oral bisphosphonates, such as Alendronate and Risedronate, are the most commonly recommended first-line agents for osteoporosis due to their proven efficacy in reducing vertebral and non-vertebral fractures, oral availability, and low cost.',
    categories: [ClinicalCategory.boneJoint],
  ),

  // =======================================================
  // SECTION 5: INFECTIOUS DISEASES
  // =======================================================
  CaseItem(
    id: 334,
    question: 'Empiric therapy for a 45-year-old adult with suspected bacterial meningitis should typically include vancomycin plus which other antibiotic?',
    options: ['Ampicillin', 'A third-generation cephalosporin (e.g., ceftriaxone)', 'Gentamicin', 'Metronidazole', 'Azithromycin'],
    correctIndex: 1,
    explanation: 'Standard empiric therapy for community-acquired bacterial meningitis in adults includes a third-generation cephalosporin (like ceftriaxone or cefotaxime) to cover S. pneumoniae and N. meningitidis, plus vancomycin to cover potential penicillin-resistant pneumococci.',
    categories: [ClinicalCategory.infectious],
  ),
  CaseItem(
    id: 335,
    question: 'What is the standard duration of therapy for active, uncomplicated pulmonary tuberculosis (TB) in a patient with a drug-susceptible isolate?',
    options: ['3 months', '6 months', '9 months', '12 months', '24 months'],
    correctIndex: 1,
    explanation: 'The standard treatment regimen for drug-susceptible active TB consists of a 6-month course of four drugs (Rifampin, Isoniazid, Pyrazinamide, and Ethambutol) for the first 2 months, followed by Rifampin and Isoniazid for the final 4 months.',
    categories: [ClinicalCategory.infectious],
  ),
  CaseItem(
    id: 336,
    question: 'A 24-year-old non-pregnant female presents with symptoms of an uncomplicated urinary tract infection (cystitis). Which of the following is a recommended first-line treatment?',
    options: ['Ciprofloxacin for 7 days', 'Amoxicillin for 3 days', 'Nitrofurantoin for 5 days', 'Ceftriaxone IM single dose', 'Levofloxacin for 5 days'],
    correctIndex: 2,
    explanation: 'Nitrofurantoin (100 mg twice daily for 5 days) is a preferred first-line agent for uncomplicated cystitis due to its high efficacy and low rates of resistance. Fluoroquinolones like ciprofloxacin are no longer first-line due to resistance and side effects.',
    categories: [ClinicalCategory.infectious],
  ),

  // =======================================================
  // SECTION 6: GASTROINTESTINAL DISORDERS
  // =======================================================
  CaseItem(
    id: 337,
    question: 'In the treatment of H. pylori-positive peptic ulcer disease, what is the standard "triple therapy" regimen?',
    options: ['A PPI, bismuth, and tetracycline', 'A PPI, metronidazole, and amoxicillin', 'A PPI, clarithromycin, and amoxicillin', 'H2 blocker, clarithromycin, and metronidazole', 'Sucralfate, amoxicillin, and tetracycline'],
    correctIndex: 2,
    explanation: 'Standard clarithromycin-based triple therapy for H. pylori consists of a proton pump inhibitor (PPI) twice daily, clarithromycin 500 mg twice daily, and amoxicillin 1 g twice daily, typically for 14 days.',
    categories: [ClinicalCategory.gi],
  ),

  // =======================================================
  // SECTION 7: HEMATOLOGIC DISORDERS
  // =======================================================
  CaseItem(
    id: 338,
    question: 'A patient with iron deficiency anemia is starting oral ferrous sulfate. What advice should be given to enhance its absorption?',
    options: ['Take it with a large glass of milk', 'Take it with a calcium supplement', 'Take it with a meal high in fiber', 'Take it with a glass of orange juice', 'Take it with an antacid'],
    correctIndex: 3,
    explanation: 'Iron is best absorbed in an acidic environment. Ascorbic acid (Vitamin C), found in orange juice, enhances the absorption of non-heme iron by converting ferric iron to the more absorbable ferrous form.',
    categories: [ClinicalCategory.hematologic],
  ),
  CaseItem(
    id: 339,
    question: 'What is the primary treatment for anemia of chronic kidney disease (CKD)?',
    options: ['Oral iron supplementation alone', 'Blood transfusions', 'Erythropoiesis-stimulating agents (ESAs)', 'Vitamin B12 injections', 'Folic acid'],
    correctIndex: 2,
    explanation: 'Anemia in CKD is primarily due to decreased production of erythropoietin by the kidneys. Therefore, treatment involves replacing this hormone with erythropoiesis-stimulating agents (ESAs) like epoetin alfa or darbepoetin alfa, often along with iron supplementation.',
    categories: [ClinicalCategory.hematologic],
  ),
  
  CaseItem(
    id: 340,
    question: 'Regarding aldosterone antagonists, all of the following are side effects of spironolactone EXCEPT:',
    options: ['Visual disturbances', 'Hyperkalemia', 'Menstrual irregularities', 'Gynecomastia', 'Impotence'],
    correctIndex: 0,
    explanation: 'Spironolactone can cause hyperkalemia due to its potassium-sparing effect and antiandrogenic side effects (gynecomastia, impotence) by interacting with androgen receptors. Visual disturbances are not a characteristic side effect.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 341,
    question: 'A 65-year-old man with stable ischemic heart disease (SIHD) experiences frequent chest pain. Which of his medications is LEAST likely to provide direct relief for his angina episodes?',
    options: ['ACE inhibitors', 'Beta-blockers', 'Calcium channel blockers', 'Nitrates', 'Ranolazine'],
    correctIndex: 0,
    explanation: 'Beta-blockers, CCBs, and nitrates are all anti-anginal agents. ACE inhibitors are critical for secondary prevention (reducing mortality and future cardiac events) but do not directly alleviate the symptoms of an acute anginal episode.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 342,
    question: 'A patient in acute decompensated heart failure (ADHF) shows a poor response to IV furosemide. How can this diuretic resistance be overcome?',
    options: ['Administer larger IV bolus doses', 'Add a thiazide diuretic (e.g., metolazone)', 'Switch to a continuous IV infusion of the loop diuretic', 'Only A and B', 'All of the above'],
    correctIndex: 4,
    explanation: 'Strategies to overcome diuretic resistance in ADHF include giving larger or more frequent IV boluses, switching to a continuous infusion, or using sequential nephron blockade by adding a diuretic from another class, like a thiazide, to block sodium reabsorption at a different site in the kidney.',
    categories: [ClinicalCategory.cardiovascular],
  ),
  CaseItem(
    id: 343,
    question: 'Which oral hypoglycemic agents are most suitable for patients with near-normal fasting glucose but high postprandial glucose levels?',
    options: ['Sulfonylureas', 'DPP-4 inhibitors', 'Metformin', 'Bile Acid Sequestrants', 'Alpha-glucosidase Inhibitors'],
    correctIndex: 4,
    explanation: 'Alpha-glucosidase inhibitors (e.g., acarbose) work by delaying the absorption of carbohydrates from the intestine. This mechanism makes them highly effective at targeting postprandial (after-meal) hyperglycemia with minimal effect on fasting glucose.',
    categories: [ClinicalCategory.endocrine],
  ),
  CaseItem(
    id: 344,
    question: 'Which of the following is the preferred long-term controller medication for most patients with persistent asthma?',
    options: ['Albuterol (SABA) as needed', 'Ipratropium', 'Inhaled Corticosteroid (ICS)', 'Montelukast', 'Oral prednisone daily'],
    correctIndex: 2,
    explanation: 'Inhaled corticosteroids (ICS) are the cornerstone of maintenance therapy for persistent asthma. They are the most effective agents for controlling the underlying airway inflammation, thereby reducing symptoms and preventing exacerbations.',
    categories: [ClinicalCategory.respiratory],
  ),
  CaseItem(
    id: 345,
    question: 'According to GOLD guidelines, a COPD patient with an FEV1 of 45% of predicted who has had 3 moderate exacerbations in the past year is classified into which group?',
    options: ['GOLD Group A', 'GOLD Group B', 'GOLD Group C', 'GOLD Group D', 'GOLD Group E'],
    correctIndex: 4,
    explanation: 'The GOLD (Global Initiative for Chronic Obstructive Lung Disease) 2023 update classifies patients with a history of frequent exacerbations (≥2 moderate or ≥1 severe) into Group E. This group is at the highest risk of future events, regardless of their symptom score.',
    categories: [ClinicalCategory.respiratory],
  ),
  CaseItem(
    id: 346,
    question: 'What is a critical counseling point for a patient starting an oral bisphosphonate like alendronate for osteoporosis?',
    options: ['Take with milk to prevent stomach upset', 'Take at bedtime for best effect', 'Lie down for 30 minutes after taking it', 'Take with a full glass of water and remain upright for 30 minutes', 'Crush the tablet if it is hard to swallow'],
    correctIndex: 3,
    explanation: 'To ensure absorption and prevent severe esophageal irritation, oral bisphosphonates must be taken on an empty stomach with a full glass of plain water, and the patient must not lie down for at least 30-60 minutes afterward.',
    categories: [ClinicalCategory.boneJoint],
  ),
  CaseItem(
    id: 347,
    question: 'Which of the following patients would be considered to have a complicated urinary tract infection (UTI)?',
    options: ['A healthy 25-year-old female with her first UTI', 'A healthy 60-year-old postmenopausal female', 'A 30-year-old male with dysuria', 'A healthy pregnant woman', 'Both C and D'],
    correctIndex: 4,
    explanation: 'A UTI is classified as complicated if it occurs in a patient with risk factors for a worse outcome. By definition, UTIs in males (due to anatomical differences) and in pregnant women (due to risks to the fetus and mother) are always considered complicated.',
    categories: [ClinicalCategory.infectious],
  ),
  CaseItem(
    id: 348,
    question: 'A CKD patient is on an Erythropoiesis-Stimulating Agent (ESA). Which lab values are the best indicators of iron stores needed for the ESA to work effectively?',
    options: ['Serum iron alone', 'Total Iron Binding Capacity (TIBC)', 'Hemoglobin and Hematocrit', 'Transferrin Saturation (TSAT) and Ferritin', 'Mean Corpuscular Volume (MCV)'],
    correctIndex: 3,
    explanation: 'For ESA therapy to be effective, adequate iron must be available. Ferritin reflects total body iron stores, while TSAT reflects the amount of iron readily available for erythropoiesis. Both are monitored to guide iron supplementation.',
    categories: [ClinicalCategory.hematologic],
  ),
  CaseItem(
    id: 349,
    question: 'Which medication class is most effective for healing and preventing NSAID-induced peptic ulcers?',
    options: ['Antacids', 'Sucralfate', 'H2-receptor antagonists (e.g., famotidine)', 'Proton Pump Inhibitors (e.g., omeprazole)', 'Bismuth subsalicylate'],
    correctIndex: 3,
    explanation: 'Proton Pump Inhibitors (PPIs) provide the most potent and sustained suppression of gastric acid, making them superior to all other classes for both the healing and primary prevention of ulcers caused by NSAID use.',
    categories: [ClinicalCategory.gi],
  ),
  
  CaseItem(
    id: 350,
    question: 'A 23-year-old female experiences breathlessness 3 days per week and nocturnal awakenings twice per month, requiring her albuterol inhaler. This presentation is best classified as:',
    options: ['Intermittent asthma', 'Mild persistent asthma', 'Moderate persistent asthma', 'Severe persistent asthma', 'Exercise-induced asthma'],
    correctIndex: 1,
    explanation: 'According to GINA guidelines, symptoms more than twice a week but not daily, along with some nocturnal awakenings, classifies the patient as having mild persistent asthma, which requires daily controller therapy like a low-dose ICS.',
    categories: [ClinicalCategory.respiratory],
  ),
  CaseItem(
    id: 351,
    question: 'Which is the most effective therapy for preventing COPD exacerbations in a patient with chronic symptoms?',
    options: ['Inhaled corticosteroids (ICS)', 'Theophylline', 'Short-acting beta-agonists (SABA) PRN', 'Long-acting muscarinic antagonists (LAMA)', 'Roflumilast'],
    correctIndex: 3,
    explanation: 'Long-acting bronchodilators, particularly LAMAs (e.g., tiotropium), are a cornerstone of COPD maintenance therapy and are highly effective in reducing the frequency of exacerbations.',
    categories: [ClinicalCategory.respiratory],
  ),
  CaseItem(
    id: 352,
    question: 'Which statement is INCORRECT regarding the symptoms of rheumatoid arthritis?',
    options: ["Joint stiffness lasts less than 30 minutes", "Stiffness is typically worse in the morning", "Joint involvement tends to be symmetric", "Boutonnière deformity may appear in untreated cases", "It can cause systemic symptoms like fatigue"],
    correctIndex: 0,
    explanation: 'A key feature of inflammatory arthritis like RA is prolonged morning stiffness that typically lasts for MORE than 30 minutes (often over an hour). Brief stiffness (<30 mins) is more characteristic of osteoarthritis.',
    categories: [ClinicalCategory.boneJoint],
  ),
  CaseItem(
    id: 353,
    question: 'Which of the following is NOT a direct clinical manifestation of hyperuricemia?',
    options: ['Acute gouty arthritis', 'Nephrolithiasis (kidney stones)', 'Osteoarthritis', 'Tophaceous gout', 'Gouty nephropathy'],
    correctIndex: 2,
    explanation: 'Hyperuricemia leads to uric acid crystal deposition, causing gout, tophi, and urate kidney stones. Osteoarthritis is a degenerative "wear-and-tear" joint disease with a different pathophysiology.',
    categories: [ClinicalCategory.boneJoint],
  ),
  CaseItem(
    id: 354,
    question: 'What is the recommended first-line pharmacologic treatment for hand osteoarthritis?',
    options: ['Oral NSAIDs', 'Topical NSAIDs', 'Capsaicin cream', 'Injectable NSAIDs', 'Tramadol'],
    correctIndex: 1,
    explanation: 'Guidelines recommend topical NSAIDs as first-line therapy for hand and knee OA. They provide effective pain relief with significantly lower systemic absorption and risk of side effects compared to oral NSAIDs.',
    categories: [ClinicalCategory.boneJoint],
  ),
  CaseItem(
    id: 355,
    question: 'A 52-year-old woman on multiple medications is worried about her risk of osteoporosis. Which of her daily medications is most likely to contribute to this risk?',
    options: ['Lisinopril', 'Metformin', 'Prednisone', 'Hydrochlorothiazide', 'Calcium carbonate'],
    correctIndex: 2,
    explanation: 'Long-term use of systemic glucocorticoids like prednisone is a major cause of drug-induced osteoporosis. It decreases bone formation by osteoblasts and increases bone resorption by osteoclasts.',
    categories: [ClinicalCategory.boneJoint],
  ),
  CaseItem(
    id: 356,
    question: 'A patient with suspected meningitis presents with a purpuric and petechial skin rash. This finding is most characteristic of which pathogen?',
    options: ['Neisseria meningitidis', 'Haemophilus influenzae', 'Streptococcus pneumoniae', 'Listeria monocytogenes', 'Group B Streptococcus'],
    correctIndex: 0,
    explanation: 'A petechial or purpuric rash is the classic sign of meningococcemia, an infection caused by Neisseria meningitidis. The rash results from vascular damage and is a medical emergency.',
    categories: [ClinicalCategory.infectious],
  ),
  CaseItem(
    id: 357,
    question: 'Patients being treated with isoniazid (INH) for tuberculosis, especially those who are pregnant or have alcoholism, should also receive which supplement?',
    options: ['Vitamin B1 (Thiamine)', 'Vitamin B2 (Riboflavin)', 'Vitamin B6 (Pyridoxine)', 'Vitamin B12 (Cobalamin)', 'Vitamin D'],
    correctIndex: 2,
    explanation: 'Isoniazid can cause a dose-dependent peripheral neuropathy by interfering with the metabolism of pyridoxine (Vitamin B6). Co-administration of Vitamin B6 is recommended to prevent this side effect.',
    categories: [ClinicalCategory.infectious],
  ),
  CaseItem(
    id: 358,
    question: 'A diabetic patient is suffering from gastroparesis (delayed gastric emptying). Which of the following drugs may be helpful as a prokinetic agent?',
    options: ['Tetracycline', 'Metronidazole', 'Mebendazole', 'Erythromycin', 'Ciprofloxacin'],
    correctIndex: 3,
    explanation: 'Erythromycin, a macrolide antibiotic, also acts as a motilin receptor agonist in the GI tract. This property gives it a prokinetic effect, promoting gastric emptying, and it is sometimes used off-label for gastroparesis.',
    categories: [ClinicalCategory.gi],
  ),
  CaseItem(
    id: 359,
    question: 'Which of the following gives the best estimation of total body iron stores?',
    options: ['Serum ferritin', 'Total iron binding capacity (TIBC)', 'Serum iron', 'Transferrin saturation', 'Hemoglobin'],
    correctIndex: 0,
    explanation: 'Serum ferritin is an intracellular protein that stores iron and releases it in a controlled fashion. The level of ferritin in the blood is directly proportional to the total amount of iron stored in the body, making it the most reliable indicator of iron stores.',
    categories: [ClinicalCategory.hematologic],
  ),
  
  CaseItem(
    id: 360,
    question: 'A 53-year-old on naproxen for 2 months develops a hemorrhagic gastric ulcer. What is the most likely cause of her peptic ulcer disease?',
    options: ['Helicobacter Pylori', 'Nonsteroidal Anti-Inflammatory Drugs (NSAIDs)', 'Stress-Related Mucosal Damage', 'Zollinger-Ellison Syndrome', 'Increased caffeine intake'],
    correctIndex: 1,
    explanation: 'NSAIDs like naproxen are a major cause of peptic ulcer disease. They inhibit COX-1, which disrupts the production of protective prostaglandins in the gastric mucosa, leading to damage.',
    categories: [ClinicalCategory.gi],
  ),
  CaseItem(
    id: 361,
    question: 'To confirm H. pylori eradication with a Urea Breath Test (UBT), how long should a patient wait after completing antibiotic and PPI therapy?',
    options: ['1 week after antibiotics, no wait for PPI', '2 weeks after antibiotics, 1 week after PPI', '4 weeks after antibiotics, 2 weeks after PPI', 'Immediately after completing all therapy', 'No waiting period is needed'],
    correctIndex: 2,
    explanation: 'For accurate results, tests for H. pylori eradication should be performed at least 4 weeks after finishing antibiotics and at least 2 weeks after discontinuing Proton Pump Inhibitors (PPIs) to avoid false-negative results.',
    categories: [ClinicalCategory.gi],
  ),
  CaseItem(
    id: 362,
    question: 'Which of the following is an incorrect statement about iron-deficiency anemia (IDA)?',
    options: ['Serum iron is decreased while serum ferritin is normal or increased', 'Increased iron demand (e.g., pregnancy) is a cause', 'Oral iron should be taken at least 1 hour before meals', 'Malabsorption may require parenteral iron', 'Pica and pagophagia can be symptoms'],
    correctIndex: 0,
    explanation: 'In classic iron deficiency anemia, the body\'s iron stores are depleted. Therefore, both serum iron AND serum ferritin (the storage form of iron) will be low. Normal or high ferritin with low serum iron suggests anemia of inflammation/chronic disease.',
    categories: [ClinicalCategory.hematologic],
  ),
  CaseItem(
    id: 363,
    question: 'A patient with anemia presents with neurological symptoms like paresthesia and memory impairment. This is most characteristic of which type of anemia?',
    options: ['Iron deficiency anemia', 'Folic acid deficiency anemia', 'Anemia of chronic diseases', 'Vitamin B12 deficiency anemia', 'Hemolytic anemia'],
    correctIndex: 3,
    explanation: 'Vitamin B12 (cobalamin) is essential for the maintenance of the myelin sheath of nerves. Its deficiency can lead to irreversible neurological damage, which is a key feature distinguishing it from folate deficiency.',
    categories: [ClinicalCategory.hematologic],
  ),
  CaseItem(
    id: 364,
    question: 'What is the gold standard for measuring bone mineral density (BMD) to diagnose osteoporosis?',
    options: ['Echocardiogram (ECHO)', 'CT scan', 'MRI', 'Dual-energy X-ray absorptiometry (DXA) scan', 'Quantitative ultrasound'],
    correctIndex: 3,
    explanation: 'The DXA scan is the established standard for diagnosing osteoporosis. It is a precise and low-radiation imaging test that measures the bone density, typically at the hip and spine, to generate a T-score.',
    categories: [ClinicalCategory.boneJoint],
  ),
  CaseItem(
    id: 365,
    question: 'Which osteoporosis medication is contraindicated in patients with pre-existing hypocalcemia until the condition is corrected?',
    options: ['Teriparatide', 'Denosumab', 'Estrogen', 'Raloxifene', 'Calcitonin'],
    correctIndex: 1,
    explanation: 'Denosumab is a potent antiresorptive agent that can cause severe, symptomatic hypocalcemia. It is crucial to correct any pre-existing hypocalcemia and ensure adequate calcium and vitamin D intake before starting therapy.',
    categories: [ClinicalCategory.boneJoint],
  ),
  CaseItem(
    id: 366,
    question: 'Which of the following drug combinations should be AVOIDED in the treatment of rheumatoid arthritis due to a significantly increased risk of serious infection?',
    options: ['Methotrexate + Sulfasalazine', 'Methotrexate + Hydroxychloroquine', 'A TNF inhibitor + Methotrexate', 'Two different biologic DMARDs concurrently', 'A TNF inhibitor + a low-dose corticosteroid'],
    correctIndex: 3,
    explanation: 'Combining two biologic DMARDs (e.g., a TNF inhibitor with an IL-6 inhibitor) or a biologic with a JAK inhibitor leads to profound immunosuppression and an unacceptably high risk of serious infections. This is a strict contraindication.',
    categories: [ClinicalCategory.boneJoint],
  ),
  CaseItem(
    id: 367,
    question: 'A patient is being started on methotrexate for RA. What co-therapy is given to reduce the severity of its adverse effects without losing efficacy?',
    options: ['Vitamin E', 'Folic acid', 'Vitamin C', 'Cholestyramine', 'High-dose NSAIDs'],
    correctIndex: 1,
    explanation: 'Methotrexate is a folate antagonist. Concomitant administration of folic acid (typically 1-5 mg daily) can significantly reduce the incidence of its common side effects, such as stomatitis, GI intolerance, and hepatotoxicity.',
    categories: [ClinicalCategory.boneJoint],
  ),
  CaseItem(
    id: 368,
    question: 'What is the definitive diagnostic test for an acute gout attack?',
    options: ['X-ray of the affected joint', 'Serum uric acid level', 'MRI of the affected joint', 'Ultrasound of the affected joint', 'Aspiration and analysis of synovial fluid'],
    correctIndex: 4,
    explanation: 'While other tests are suggestive, the gold standard and only definitive way to diagnose gout is to aspirate synovial fluid from the affected joint and examine it under a polarized light microscope for the presence of needle-shaped, negatively birefringent monosodium urate crystals.',
    categories: [ClinicalCategory.boneJoint],
  ),
  CaseItem(
    id: 369,
    question: 'Which of the following is NOT a common cause of peptic ulcer disease (PUD)?',
    options: ['Chronic spicy foods ingestion', 'NSAID use', 'Stress-related mucosal damage (in critically ill patients)', 'Helicobacter pylori infection', 'All of the above are common causes'],
    correctIndex: 0,
    explanation: 'The two most common causes of PUD are H. pylori infection and the use of NSAIDs. While spicy foods can aggravate symptoms in some people, they are not a primary cause of ulcer formation.',
    categories: [ClinicalCategory.gi],
  ),
];