

enum PharmacologyCategory {
  nsaids('NSAIDs & Pain Management'),
  rheumatology('Rheumatology & Gout'),
  bone('Bone Metabolism'),
  diabetes('Diabetes'),
  cancer('Cancer Chemotherapy'),
  hormones('Hormones'),
  miscellaneous('Miscellaneous');

  final String displayName;
  const PharmacologyCategory(this.displayName);
}

class CaseItem {
  final int id;
  final String question;
  final List<String> options;
  final int correctIndex;
  final String explanation;
  final List<PharmacologyCategory> categories;

  const CaseItem({
    required this.id,
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.explanation,
    required this.categories,
  });
}


const List<CaseItem> pharmacologyCaseList = [
  // NSAIDs & Pain Management
  CaseItem(
    id: 15,
    question: 'Acetaminophen and naproxen among the common daily used medicines. Which statement is correct regarding the difference between acetaminophen and naproxen?',
    options: [
      'Acetaminophen has more anti-inflammatory effects compared with naproxen.',
      'Acetaminophen has more GI side effects but less effects on bleeding compared with naproxen.',
      'Acetaminophen has less risk for CV events compared with naproxen',
      'Acetaminophen has fewer antipyretic effects than naproxen.',
      'None of the above.'
    ],
    correctIndex: 2,
    explanation: 'Unlike NSAIDs such as naproxen, acetaminophen is not associated with an increased risk of cardiovascular (CV) events like heart attack or stroke.',
    categories: [PharmacologyCategory.nsaids],
  ),
  CaseItem(
    id: 16,
    question: 'A 45-year-old surgeon has developed symmetric early morning stiffness in her hands. She wishes to take a nonsteroidal anti-inflammatory drug to relieve these symptoms and wants to avoid gastrointestinal side effects. Which one of the following drugs is most appropriate?',
    options: ['Aspirin', 'Celecoxib', 'Ibuprofen', 'Indomethacin', 'Piroxicam'],
    correctIndex: 1,
    explanation: 'Celecoxib is a selective COX-2 inhibitor. It provides anti-inflammatory effects with a lower risk of gastrointestinal side effects compared to non-selective NSAIDs because it spares the protective COX-1 enzyme.',
    categories: [PharmacologyCategory.nsaids],
  ),
  CaseItem(
    id: 21,
    question: 'Which one of the prostanoids is responsible for inducing fever?',
    options: ['PGE2', 'PGF alpha', 'PGI', 'TXA', 'Leukotriene'],
    correctIndex: 0,
    explanation: 'Prostaglandin E2 (PGE2) is the primary mediator of fever. It acts on the hypothalamus to reset the body\'s thermoregulatory set-point to a higher temperature.',
    categories: [PharmacologyCategory.nsaids],
  ),
  CaseItem(
    id: 22,
    question: 'Which one of the following agents should be avoided in teenagers with chickenpox?',
    options: [
      'Acetaminophen',
      'Mefenamic acid',
      'Aspirin',
      'Diphenhydramine',
      'Chlorpheniramine'
    ],
    correctIndex: 2,
    explanation: 'Aspirin use in children and teenagers with viral illnesses like chickenpox or influenza is associated with an increased risk of developing Reye\'s syndrome, a rare but serious condition that causes swelling in the liver and brain.',
    categories: [PharmacologyCategory.nsaids],
  ),
  CaseItem(
    id: 37,
    question: 'Following an overdose of an over-the-counter drug, a young college student has marked gastrointestinal distress and is lethargic and confused, with an elevated body temperature. Lab analysis of blood reveals: pCO2, ↓HC03 - , ↓ K+, and an anion gap acidosis. The most likely cause of these signs and symptoms is a toxic dose of?',
    options: [
      'acetaminophen',
      'acetylsalicylic acid',
      'diphenhydramine',
      'pseudoephedrine',
      'naproxen'
    ],
    correctIndex: 1,
    explanation: 'The clinical picture of hyperthermia, confusion, and a high anion gap metabolic acidosis is classic for salicylate (acetylsalicylic acid/aspirin) poisoning.',
    categories: [PharmacologyCategory.nsaids],
  ),
  CaseItem(
    id: 42,
    question: 'All the followings are non-selective COX-inhibitors except',
    options: [
      'Celecoxib',
      'Mefenamic acid',
      'Aspirin',
      'Naproxen. E- Ibuprofen',
      'Ibuprofen'
    ],
    correctIndex: 0,
    explanation: 'Celecoxib is a selective COX-2 inhibitor. The other drugs listed (aspirin, ibuprofen, naproxen, mefenamic acid) are all non-selective, meaning they inhibit both COX-1 and COX-2 enzymes.',
    categories: [PharmacologyCategory.nsaids],
  ),
  CaseItem(
    id: 43,
    question: 'Which of the following drugs can be used as an antidote in case of acute paracetamol toxicity?',
    options: [
      'N-acetylcysteine',
      'Nalmefene',
      'Naloxone',
      'Naltrexone',
      'Nexletol'
    ],
    correctIndex: 0,
    explanation: 'N-acetylcysteine (NAC) is the specific antidote for acetaminophen (paracetamol) overdose. It works by replenishing hepatic glutathione, which helps to neutralize the toxic metabolite NAPQI.',
    categories: [PharmacologyCategory.nsaids],
  ),
  CaseItem(
    id: 47,
    question: 'Aspirin is contraindicated in children suffering from influenza or similar viral infection because of increased risk of:',
    options: [
      'Gastric bleeding',
      'Thrombocytopenia',
      'Fanconi syndrome',
      'Reye\'s syndrome',
      'Arrhythmia'
    ],
    correctIndex: 3,
    explanation: 'The use of aspirin in children with viral illnesses like influenza or chickenpox is associated with Reye\'s syndrome, a rare but life-threatening condition characterized by acute encephalopathy and liver failure.',
    categories: [PharmacologyCategory.nsaids],
  ),
  CaseItem(
    id: 48,
    question: 'Misoprostol is a:',
    options: [
      'Indicated for opioid-induced constipation',
      'Indicated for migraine prophylaxis',
      'PGE1 analog',
      'Drug for increasing intestinal fluid secretion',
      'PGF2a analog'
    ],
    correctIndex: 2,
    explanation: 'Misoprostol is a synthetic prostaglandin E1 (PGE1) analog, used to protect the gastric mucosa from NSAID damage and to induce uterine contractions.',
    categories: [PharmacologyCategory.nsaids],
  ),
  CaseItem(
    id: 52,
    question: 'Regarding prostaglandins, indicate the false statement:',
    options: [
      'COX-1 is a constitutive enzyme',
      'Contraction of bronchial and gastrointestinal tract (GIT) smooth muscle by EP1 receptors',
      'PGD2 is derived particularly from mast cells',
      'Primary Dysmenorrhea is attributable to increased PGE2 and PGF2a',
      'PGFa produces contraction of the uterus'
    ],
    correctIndex: 1,
    explanation: 'This statement is an oversimplification and thus considered false. While some prostaglandin receptors (like EP1) mediate contraction, others (like EP2 and EP4) mediate relaxation of bronchial and GI smooth muscle.',
    categories: [PharmacologyCategory.nsaids],
  ),
  CaseItem(
    id: 53,
    question: 'A 65-year-old patient on NSAIDs for rheumatoid arthritis presents with epigastric pain. What medication would be most helpful?',
    options: [
      'Cimetidine',
      'Famotidine',
      'Paracetamol',
      'Omeprazole',
      'Glyceryl trinitrate'
    ],
    correctIndex: 3,
    explanation: 'The patient\'s pain is likely NSAID-induced gastropathy. Omeprazole, a proton pump inhibitor (PPI), is a first-line treatment for healing and preventing such damage by potently suppressing gastric acid production.',
    categories: [PharmacologyCategory.nsaids, PharmacologyCategory.rheumatology],
  ),
  
  // Rheumatology & Gout
  CaseItem(
    id: 17,
    question: 'Irreversible retinal damage is associated with one of the following drugs:',
    options: [
      'Etanercept',
      'Methotrexate',
      'Sulfasalazine',
      'Hydroxychloroquine',
      'Leflunamide'
    ],
    correctIndex: 3,
    explanation: 'Long-term use of hydroxychloroquine can cause irreversible retinal toxicity, specifically bull\'s-eye maculopathy. Regular eye exams are crucial for patients on this drug.',
    categories: [PharmacologyCategory.rheumatology],
  ),
  CaseItem(
    id: 18,
    question: 'Which Biologics agent for RA inhibits activity of the proinflammatory cytokine IL-6?',
    options: ['Sarilumab', 'Abatacept', 'Golimumab', 'Adalimumab', 'Etanercept'],
    correctIndex: 0,
    explanation: 'Sarilumab is a human monoclonal antibody that acts as an interleukin-6 (IL-6) receptor antagonist, blocking the inflammatory cascade mediated by IL-6.',
    categories: [PharmacologyCategory.rheumatology],
  ),
  CaseItem(
    id: 19,
    question: 'IL-1 and TNF-α are proinflammatory cytokines involved in the pathogenesis of RA. Which of the following agents for RA is a TNF-α inhibitor?',
    options: ['Rituximab', 'Etanercept', 'Tocilizumab', 'Abatacept', 'Sarilumab'],
    correctIndex: 1,
    explanation: 'Etanercept is a TNF-alpha inhibitor. It functions as a decoy receptor that binds to TNF-α, preventing it from activating its true receptors on cells.',
    categories: [PharmacologyCategory.rheumatology],
  ),
  CaseItem(
    id: 20,
    question: 'Rheumatoid Arthritis is a chronic disease which requires good management for a good lifestyle. Which agent for RA competes with CD28 to prevent full T-cell activation?',
    options: ['Sarilumab', 'Abatacept', 'Golimumab', 'Adalimumab', 'Infliximab'],
    correctIndex: 1,
    explanation: 'Abatacept is a T-cell co-stimulation modulator. It binds to CD80/CD86 on antigen-presenting cells, thereby blocking the required co-stimulatory signal to T-cells via CD28.',
    categories: [PharmacologyCategory.rheumatology],
  ),
  CaseItem(
    id: 23,
    question: 'Choose the correct statement about allopurinol:',
    options: [
      'It is a purine antimetabolite with antineoplastic activity',
      'It is a competitive inhibitor of xanthine oxidase',
      'It is inactive itself, but its metabolite alloxanthine is a competitive inhibitor of xanthine oxidase',
      'Both allopurinol and its metabolite alloxanthine have short half-life of 5 hours',
      'The drug and its active metabolite are excreted in the feces'
    ],
    correctIndex: 1,
    explanation: 'Allopurinol and its active metabolite, oxypurinol (alloxanthine), work by competitively inhibiting xanthine oxidase, the enzyme responsible for converting hypoxanthine to xanthine and then to uric acid. This reduces the production of uric acid.',
    categories: [PharmacologyCategory.rheumatology],
  ),
  CaseItem(
    id: 38,
    question: 'Among the rheumatoid arthritis disease modifying drugs, fastest symptom relief is obtained with',
    options: [
      'Auranofin',
      'Penicillamine',
      'Sulfasalazine',
      'Methotrexate',
      'None of the above'
    ],
    correctIndex: 3,
    explanation: 'Among the conventional synthetic DMARDs listed, Methotrexate is considered the anchor drug and generally has the fastest onset of action, with benefits often seen within 4-6 weeks.',
    categories: [PharmacologyCategory.rheumatology],
  ),
  CaseItem(
    id: 39,
    question: 'Tocilizumab is recombinant monoclonal antibodies that bind to',
    options: [
      'IL-6 receptors',
      'IL-15 receptors',
      'IL-10 receptors',
      'IL-13 receptors',
      'IL-4 receptors'
    ],
    correctIndex: 0,
    explanation: 'Tocilizumab is a humanized monoclonal antibody that works by binding to and blocking the Interleukin-6 (IL-6) receptor, thus inhibiting the pro-inflammatory signaling of IL-6.',
    categories: [PharmacologyCategory.rheumatology],
  ),
  CaseItem(
    id: 40,
    question: 'Acute or chronic colchicine toxicity may be identified by which of the following signs/symptoms?',
    options: [
      'Alopecia',
      'Blood dyscrasias',
      'Severe gastrointestinal upset',
      'All of the above',
      'None of the above'
    ],
    correctIndex: 3,
    explanation: 'Colchicine toxicity manifests with severe gastrointestinal distress (nausea, vomiting, diarrhea), and in more severe or chronic cases, it can cause bone marrow suppression (leading to blood dyscrasias) and hair loss (alopecia).',
    categories: [PharmacologyCategory.rheumatology],
  ),
  CaseItem(
    id: 41,
    question: 'It is a uricosuric drug. It is a weak organic acid that promotes renal clearance of uric acid by inhibiting the urate anion exchanger in the proximal tubule that mediates urate reabsorption. Which drug is this?',
    options: [
      'Febuxostat',
      'Colchicine',
      'Allopurinol',
      'Probenecid',
      'Methotrexate'
    ],
    correctIndex: 3,
    explanation: 'Probenecid is the classic uricosuric agent. It increases the excretion of uric acid by inhibiting its reabsorption at the proximal convoluted tubules in the kidney.',
    categories: [PharmacologyCategory.rheumatology],
  ),
  CaseItem(
    id: 44,
    question: 'A common adverse effect of methotrexate when used for rheumatoid arthritis is:',
    options: [
      'Mucosal ulceration',
      'Fever',
      'Headache',
      'Constipation',
      'Diarrhoea'
    ],
    correctIndex: 0,
    explanation: 'Because methotrexate is an antifolate that affects rapidly dividing cells, stomatitis and mucosal ulceration are common side effects, along with myelosuppression and GI intolerance.',
    categories: [PharmacologyCategory.rheumatology],
  ),
  CaseItem(
    id: 45,
    question: 'Which statement correctly represents the mechanism of action of tofacitinib in the treatment of RA?',
    options: [
      'TNF-a inhibitor',
      'Janus kinase inhibitor',
      'IL-6 receptor blocker',
      'Dihydrofolate reductase inhibitor',
      'IL-10 receptor activator'
    ],
    correctIndex: 1,
    explanation: 'Tofacitinib is a targeted synthetic DMARD that is an orally administered inhibitor of Janus kinases (JAKs), which are intracellular enzymes that mediate signaling for a number of pro-inflammatory cytokines.',
    categories: [PharmacologyCategory.rheumatology],
  ),
  CaseItem(
    id: 49,
    question: 'A 34-year-old woman with RA is planning for pregnancy. Which RA agents are absolutely contraindicated in pregnancy?',
    options: [
      'Abatacept and rituximab',
      'Adalimumab and certolizumab',
      'Infliximab and etanercept',
      'Methotrexate and leflunomide',
      'None of the above'
    ],
    correctIndex: 3,
    explanation: 'Methotrexate and Leflunomide are both potent teratogens (agents that cause birth defects) and are strictly contraindicated in women who are pregnant or planning to become pregnant.',
    categories: [PharmacologyCategory.rheumatology],
  ),
  CaseItem(
    id: 50,
    question: 'Which of the following drugs is a recombinant form of an endogenous IL-1 antagonist?',
    options: [
      'Abatacept',
      'Anakinra',
      'Methotrexate',
      'Hydroxychloroquine',
      'Rituximab'
    ],
    correctIndex: 1,
    explanation: 'Anakinra is a recombinant version of the human interleukin-1 receptor antagonist (IL-1Ra). It works by blocking the pro-inflammatory cytokine IL-1 from binding to its receptor.',
    categories: [PharmacologyCategory.rheumatology],
  ),
  CaseItem(
    id: 51,
    question: 'A 43-year-old man undergoes a kidney transplantation. His physician prescribes azathioprine for graft rejection prophylaxis. His past medical history is significant for gouty arthritis. Which of the following antigout drugs should he avoid while taking azathioprine?',
    options: [
      'Allopurinol',
      'Colchicine',
      'Indomethacin',
      'Prednisolone',
      'Probenecid'
    ],
    correctIndex: 0,
    explanation: 'Azathioprine is metabolized by the enzyme xanthine oxidase. Allopurinol inhibits this enzyme, which can cause dangerously high levels of azathioprine metabolites, leading to severe bone marrow toxicity. If used together, the azathioprine dose must be drastically reduced.',
    categories: [PharmacologyCategory.rheumatology],
  ),
  CaseItem(
    id: 54,
    question: 'Regarding hydroxychloroquine, all of the following sentences are true except:',
    options: [
      'Used for severe rheumatoid arthritis',
      'Inhibits phospholipase A2 and platelet aggregation',
      'May cause corneal deposits with CNS disturbances',
      'Effective in the treatment of malaria',
      'May induce oxidative stress'
    ],
    correctIndex: 1,
    explanation: 'The mechanism of hydroxychloroquine in RA is complex and thought to involve toll-like receptor inhibition, not direct inhibition of phospholipase A2 or platelet aggregation, which is more characteristic of other drug classes.',
    categories: [PharmacologyCategory.rheumatology],
  ),
  CaseItem(
    id: 55,
    question: 'Regarding infliximab, all of the following sentences are true except:',
    options: [
      'It is a monoclonal antibody that acts by binding to the TNF-α receptor',
      'May be used alone in the treatment of rheumatoid arthritis',
      'Infusion should persist for two hours',
      'Fever, chills, and urticaria may occur during the infusion',
      'Used for the treatment of ankylosing spondylitis'
    ],
    correctIndex: 1,
    explanation: 'For rheumatoid arthritis, infliximab should be used in combination with methotrexate to improve efficacy and prevent the formation of anti-drug antibodies. Monotherapy is not the standard of care.',
    categories: [PharmacologyCategory.rheumatology],
  ),
  CaseItem(
    id: 56,
    question: 'Regarding colchicine, all of the following sentences are true except:',
    options: [
      'Acts by binding to tubulin, thus preventing polymerization',
      'Should be administered within 1-2 days of onset of the attack',
      'Should be avoided in patients with creatinine clearance below 10 ml/min',
      'Requires dose adjustment when given with ketoconazole',
      'Drug of choice for an acute attack of gout over the NSAID'
    ],
    correctIndex: 4,
    explanation: 'Due to its narrow therapeutic window and side effect profile, colchicine is considered a second-line option for acute gout. NSAIDs or corticosteroids are generally preferred as first-line therapy.',
    categories: [PharmacologyCategory.rheumatology],
  ),
  
  // Bone Metabolism
  CaseItem(
    id: 24,
    question: 'Resorptive activity where most adverse effect occur with bisphosphonates uses patients. The order of such resorptive activity of bisphosphonates drugs is:',
    options: [
      'Pamidronate > Alendronate > Risedronate',
      'Zoledronic acid > Pamidronate > Ibandronate',
      'Ibandronate > Alendronate > Etidronate',
      'Etidronate > Tiludronate > Pamidronate',
      'Ibandronate > Zoledronic acid > Pamidronate'
    ],
    correctIndex: 2,
    explanation: 'The relative potency for inhibiting bone resorption among bisphosphonates generally follows the order: Zoledronic acid > Risedronate > Ibandronate > Alendronate > Pamidronate > Etidronate. Based on the options, C reflects a correct partial sequence of potency.',
    categories: [PharmacologyCategory.bone],
  ),
  CaseItem(
    id: 25,
    question: 'Which of the following drugs is most useful for the treatment of hypercalcemia in Paget\'s disease?',
    options: [
      'Fluoride',
      'Hydrochlorothiazide',
      'Pamidronate',
      'Raloxifene',
      'Teriparatide'
    ],
    correctIndex: 2,
    explanation: 'Pamidronate, a bisphosphonate, is highly effective in treating hypercalcemia, particularly the hypercalcemia of malignancy and Paget\'s disease, by inhibiting osteoclast-mediated bone resorption.',
    categories: [PharmacologyCategory.bone],
  ),
  CaseItem(
    id: 26,
    question: 'Which of the following drugs is useful for treating osteoporosis?',
    options: ['Cabergoline', 'Cisapride', 'Calcium', 'Carbone', 'Calcitonin'],
    correctIndex: 4,
    explanation: 'Calcitonin, particularly salmon calcitonin, is used in the treatment of postmenopausal osteoporosis. It works by inhibiting the activity of osteoclasts, the cells that break down bone.',
    categories: [PharmacologyCategory.bone],
  ),
  CaseItem(
    id: 57,
    question: 'Which of the following shows the correct order of resorptive potency for bisphosphonates?',
    options: [
      'Pamidronate > Alendronate > Risedronate',
      'Zoledronic acid > Pamidronate > Ibandronate',
      'Ibandronate > Alendronate > Etidronate',
      'Etidronate > Tiludronate > Pamidronate',
      'Ibandronate > Zoledronic acid > Pamidronate'
    ],
    correctIndex: 2,
    explanation: 'Bisphosphonates vary in their potency to inhibit bone resorption. Nitrogen-containing bisphosphonates are more potent than non-nitrogenous ones. The relative potency generally follows: Zoledronic acid > Risedronate > Ibandronate > Alendronate.',
    categories: [PharmacologyCategory.bone],
  ),
  CaseItem(
    id: 58,
    question: 'Which of the following drugs is most useful for the treatment of hypercalcemia in Paget\'s disease?',
    options: [
      'Fluoride',
      'Hydrochlorothiazide',
      'Pamidronate',
      'Raloxifene',
      'Teriparatide'
    ],
    correctIndex: 2,
    explanation: 'Intravenous bisphosphonates, such as Pamidronate and Zoledronic acid, are the treatment of choice for managing severe hypercalcemia associated with Paget\'s disease or malignancy by strongly inhibiting osteoclast activity.',
    categories: [PharmacologyCategory.bone],
  ),
  CaseItem(
    id: 59,
    question: 'Which of the following drugs is useful for treating osteoporosis?',
    options: [
      'Cabergoline',
      'Cisapride',
      'Calcium',
      'Carbone',
      'Calcitonin'
    ],
    correctIndex: 4,
    explanation: 'Calcitonin (usually from salmon) is a hormone that inhibits bone resorption by osteoclasts. It is used in the treatment of postmenopausal osteoporosis, though it is generally not a first-line agent.',
    categories: [PharmacologyCategory.bone],
  ),
  
  // Diabetes
  CaseItem(
    id: 27,
    question: 'Which one of the following glucose lowering agents should be administered subcutaneously?',
    options: [
      'Pramlintide',
      'Exenatide',
      'Liraglutide',
      'Amylin analogue',
      'All of the above'
    ],
    correctIndex: 4,
    explanation: 'Pramlintide (an amylin analogue) and GLP-1 receptor agonists like Exenatide and Liraglutide are all peptide-based drugs that would be digested if taken orally. Therefore, they are administered via subcutaneous injection.',
    categories: [PharmacologyCategory.diabetes],
  ),
  CaseItem(
    id: 28,
    question: 'Which one of the following glucose lowering agents interfering with the breakdown of starch to oligosaccharides?',
    options: ['Metformin', 'Glipizide', 'Acarbose', 'Miglitol', 'Pramlintide'],
    correctIndex: 2,
    explanation: 'Acarbose is an alpha-glucosidase inhibitor. It works in the intestine to slow down the breakdown of complex carbohydrates (like starch) into simpler sugars, thereby delaying glucose absorption.',
    categories: [PharmacologyCategory.diabetes],
  ),
  CaseItem(
    id: 29,
    question: 'The most serious side effect associated with Insulin use is:',
    options: [
      'weight gain',
      'Hypoglycemia',
      'local injection site reactions',
      'lipodystrophy',
      'none of the above'
    ],
    correctIndex: 1,
    explanation: 'Hypoglycemia (low blood sugar) is the most common and most serious acute adverse effect of insulin therapy. It can lead to confusion, seizures, loss of consciousness, and can be life-threatening if not treated promptly.',
    categories: [PharmacologyCategory.diabetes],
  ),
  CaseItem(
    id: 30,
    question: 'One of the following agents is necessary administered with hydrocortisone to restore activity to normal levels?',
    options: [
      'Cortisone',
      'Prednisone',
      'Dexamethasone',
      'Prednisolone',
      'Spironolactone'
    ],
    correctIndex: 3,
    explanation: 'This question appears to be flawed. Prednisolone is an active glucocorticoid itself and is not administered *with* hydrocortisone to restore activity. In adrenal insufficiency, a glucocorticoid (like hydrocortisone or prednisolone) and sometimes a mineralocorticoid are used. Given the options, there might be a misunderstanding in the question\'s premise.',
    categories: [PharmacologyCategory.diabetes, PharmacologyCategory.hormones],
  ),
  CaseItem(
    id: 60,
    question: 'Which one of the following glucose-lowering agents must be administered subcutaneously?',
    options: [
      'Pramlintide',
      'Exenatide',
      'Liraglutide',
      'All of the above',
      'Metformin'
    ],
    correctIndex: 3,
    explanation: 'Pramlintide (an amylin analog) and GLP-1 receptor agonists (Exenatide, Liraglutide) are all peptide hormones. They cannot be taken orally as they would be destroyed by digestion, so they are given as subcutaneous injections.',
    categories: [PharmacologyCategory.diabetes],
  ),
  CaseItem(
    id: 61,
    question: 'Which glucose-lowering agent works by interfering with the breakdown of starch into oligosaccharides?',
    options: [
      'Metformin',
      'Glipizide',
      'Acarbose',
      'Miglitol',
      'Pramlintide'
    ],
    correctIndex: 2,
    explanation: 'Acarbose is an α-glucosidase inhibitor. It acts locally in the gut to delay the digestion and absorption of carbohydrates by inhibiting the enzymes that break down complex sugars.',
    categories: [PharmacologyCategory.diabetes],
  ),
  CaseItem(
    id: 62,
    question: 'What is the most serious acute side effect associated with Insulin use?',
    options: [
      'Weight gain',
      'Hypoglycemia',
      'Local injection site reactions',
      'Lipodystrophy',
      'None of the above'
    ],
    correctIndex: 1,
    explanation: 'Hypoglycemia (abnormally low blood glucose) is the most common and dangerous risk of insulin therapy. Severe hypoglycemia can lead to seizures, coma, and death if not treated promptly.',
    categories: [PharmacologyCategory.diabetes],
  ),
  CaseItem(
    id: 63,
    question: 'Correct statements about crystalline zinc (regular) insulin include all of the following, EXCEPT:',
    options: [
      'Can serve as replacement therapy for juvenile onset diabetes',
      'Can be administered intravenously',
      'It is a short-acting insulin',
      'It can be administered orally',
      'Can be given subcutaneously'
    ],
    correctIndex: 3,
    explanation: 'Insulin is a protein and would be digested and inactivated by stomach acids and enzymes if taken orally. Therefore, it must be administered by injection (subcutaneously or intravenously).',
    categories: [PharmacologyCategory.diabetes],
  ),
  CaseItem(
    id: 64,
    question: 'A major disadvantage of the use of SGLT2 inhibitors in patients with diabetes is:',
    options: [
      'Risk of hypoglycaemia',
      'Weight loss',
      'Vitamin B12 malabsorption',
      'Urinary tract infections',
      'Weight gain'
    ],
    correctIndex: 3,
    explanation: 'SGLT2 inhibitors increase glucose excretion in the urine (glucosuria). This glucose-rich environment in the urinary tract significantly increases the risk of developing urinary and genital tract infections.',
    categories: [PharmacologyCategory.diabetes],
  ),
  CaseItem(
    id: 65,
    question: 'A 55-year-old man with a new diagnosis of heart failure should most avoid which of the following antidiabetic drugs?',
    options: [
      'Exenatide',
      'Glyburide',
      'Pioglitazone',
      'Insulin',
      'Metformin'
    ],
    correctIndex: 2,
    explanation: 'Thiazolidinediones (TZDs), such as Pioglitazone, are associated with fluid retention and edema and can cause or worsen congestive heart failure. They carry a black box warning for this risk.',
    categories: [PharmacologyCategory.diabetes],
  ),
  
  // Cancer Chemotherapy
  CaseItem(
  id: 1,
  question: 'The goal of chemotherapy is a cure',
  options: [
    'long-term, disease-free survival',
    'control of the disease',
    'neoplastic cell burden is initially reduced',
    'prevent cancer from enlarging and spreading',
    'all the above'
  ],
  correctIndex: 4,
  explanation: 'The goals of chemotherapy can range from curative intent (complete eradication of cancer), such as achieving long-term disease-free survival, to palliative care, which includes controlling the disease, reducing tumor size, and preventing spread to improve quality of life.',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 2,
  question: 'A 45-year-old male on combination therapy for remission-maintenance acute lymphocytic leukemia develops suprapubic pain, dysuria, and hematuria. Evidence of hemorrhage and inflammation is apparent on cystoscopy. Which agent most likely caused these findings?',
  options: [
    '6-MP',
    'Methotrexate',
    'Cyclophosphamide',
    'Doxorubicin',
    'Carmustine'
  ],
  correctIndex: 2,
  explanation: 'Cyclophosphamide causes hemorrhagic cystitis due to its metabolite acrolein irritating the bladder urothelium. Mesna is often given to prevent this toxicity.',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 3,
  question: 'A young adult patient with acute granulocytic leukemia treated with cytarabine and thioguanine becomes unresponsive. Resistance to thioguanine is thought to be due to:',
  options: [
    'Decreased uptake',
    'Increased efflux',
    'Increased DNA repair',
    'Increased alkaline phosphatase activity',
    'Increased production of trapping agents'
  ],
  correctIndex: 3,
  explanation: 'Resistance to thioguanine often involves increased alkaline phosphatase activity, which dephosphorylates the active metabolite (TIMP).',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 4,
  question: 'Cardiotoxicity is the adverse effect associated with:',
  options: [
    'Bleomycin',
    'Doxorubicin',
    'Cyclophosphamide',
    'Methotrexate',
    'Pemetrexed'
  ],
  correctIndex: 1,
  explanation: 'Doxorubicin causes dose-dependent cardiotoxicity through free radical generation and mitochondrial damage. Cumulative doses >550 mg/m² significantly increase risk.',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 5,
  question: 'The mechanism of action of capecitabine is:',
  options: [
    'Antimetabolite hydrolyzed to 5-FU that inhibits thymidylate synthase',
    'Antibiotic hydrolyzed to 5-FU',
    'Alkylating agent hydrolyzed to 5-FU',
    'Dihydrofolate reductase inhibitor',
    'DNA strand breaker via free radicals'
  ],
  correctIndex: 0,
  explanation: 'Capecitabine is a prodrug converted to 5-fluorouracil (5-FU) which inhibits thymidylate synthase, depleting dTMP and blocking DNA synthesis.',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 6,
  question: 'All of the following anticancer drugs act on G2 phase EXCEPT:',
  options: [
    'Paclitaxel',
    'Etoposide',
    'Irinotecan',
    'Bleomycin',
    'Topotecan'
  ],
  correctIndex: 4,
  explanation: 'Topotecan acts on S-phase (DNA synthesis) as a topoisomerase I inhibitor, while others target G2/M transition or DNA repair in G2.',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 7,
  question: 'Combination chemotherapy has all the following properties EXCEPT:',
  options: [
    'Maximal cell killing within toxicity range',
    'Broad activity against cell lines',
    'Delays resistant cell development',
    'Different molecular sites of action',
    'Overlapping host toxicities'
  ],
  correctIndex: 4,
  explanation: 'Combination therapy avoids overlapping toxicities to allow full dosing of each agent (e.g., combining myelosuppressive and non-myelosuppressive drugs).',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 8,
  question: 'Side effects of cisplatin include all EXCEPT:',
  options: [
    'Nephrotoxicity',
    'Blindness',
    'Ototoxicity',
    'Myelosuppression',
    'Nausea/vomiting'
  ],
  correctIndex: 1,
  explanation: 'Cisplatin causes nephrotoxicity (manage with hydration), ototoxicity (high-frequency hearing loss), myelosuppression, and severe nausea (requires 5-HT3 antagonists).',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 9,
  question: 'Imatinib acts by inhibiting:',
  options: [
    'Tyrosine kinase',
    'Glutathione reductase',
    'Thymidylate synthetase',
    'Protein kinase',
    'Estrogen receptors'
  ],
  correctIndex: 0,
  explanation: 'Imatinib inhibits BCR-ABL tyrosine kinase in CML by binding the ATP site, preventing phosphorylation of substrates involved in proliferation.',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 10,
  question: 'Chemotherapy given before surgery for bladder cancer is called:',
  options: [
    'Adjuvant',
    'Neoadjuvant',
    'Palliative',
    'Maintenance',
    'Induction'
  ],
  correctIndex: 1,
  explanation: 'Neoadjuvant therapy shrinks tumors preoperatively, while adjuvant is given post-operatively to eliminate micrometastases.',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 11,
  question: 'Which drug is used to treat breast cancer?',
  options: [
    'Tamoxifen',
    'Flutamide',
    'Prednisone',
    'Imatinib',
    'Vinblastine'
  ],
  correctIndex: 0,
  explanation: 'Tamoxifen is a SERM used for ER+ breast cancer that antagonizes estrogen receptors in breast tissue while acting as agonist in bone.',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 12,
  question: 'Major toxicity of high-dose methotrexate:',
  options: [
    'Stomatitis',
    'Rash',
    'Renal toxicity',
    'Hepatic failure',
    'All of the above'
  ],
  correctIndex: 4,
  explanation: 'High-dose MTX causes mucositis, nephrotoxicity (crystalluria), hepatotoxicity, and myelosuppression. Leucovorin rescue is required.',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 13,
  question: 'Drug most likely causing cardiomyopathy:',
  options: [
    'Cyclophosphamide',
    'Doxorubicin',
    'Fluorouracil',
    'Methotrexate',
    'Tamoxifen'
  ],
  correctIndex: 1,
  explanation: 'Doxorubicin accumulates in cardiac tissue causing irreversible cardiomyopathy (ejection fraction decline). Dexrazoxane may be protective.',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 14,
  question: 'Concern with tamoxifen therapy:',
  options: [
    'Hepatotoxicity',
    'Endometrial cancer',
    'Multiple gestation',
    'Hypercholesterolemia',
    'Hypertension'
  ],
  correctIndex: 1,
  explanation: 'Tamoxifen increases endometrial cancer risk (2-3 fold) due to estrogenic effects on uterus. Requires regular gynecologic monitoring.',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 15,
  question: 'About azathioprine, all are true EXCEPT:',
  options: [
    'Used for autoimmune diseases',
    'Combined with aspirin/prednisone for RA',
    'Avoid with cyclophosphamide',
    'Safe in 3rd trimester pregnancy',
    'Requires blood monitoring'
  ],
  correctIndex: 3,
  explanation: 'Azathioprine is teratogenic (Category D) and contraindicated in all trimesters due to risk of fetal immunosuppression and malformations.',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 16,
  question: 'Which statement about cancer treatment is correct?',
  options: [
    'Adjuvant chemo uses low doses to prolong remission',
    'Cell cycle non-specific drugs work on low/high growth cancers',
    'Drugs with similar mechanisms should be combined',
    'Drug resistance is minimized by long intermittent combo therapy',
    'Neutropenia reversed by folinic acid'
  ],
  correctIndex: 3,
  explanation: 'Intermittent high-dose combo therapy reduces resistance by targeting different pathways and allowing normal tissue recovery between cycles.',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 17,
  question: 'Incorrect statement about anticancer drugs:',
  options: [
    'Bleomycin is cell-cycle specific exception',
    'Cardiotoxicity most serious with anthracyclines',
    'Cyclophosphamide metabolites inhibit DNA',
    'Dacarbazine crosses BBB for brain tumors',
    'Alkylating agents bind covalently'
  ],
  correctIndex: 3,
  explanation: 'Dacarbazine does NOT cross BBB; temozolomide is the alkylator used for brain tumors due to its BBB penetration.',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 18,
  question: 'Correct statement about anticancer drugs:',
  options: [
    'Nitrosoureas penetrate CNS for brain tumors',
    'Dacarbazine doesn\'t need activation',
    'Paclitaxel blocks polymerization like vinblastine',
    'Raloxifene blocks estrogen effects',
    'Both A and B'
  ],
  correctIndex: 0,
  explanation: 'Lipophilic nitrosoureas (carmustine, lomustine) cross BBB making them useful for gliomas and CNS metastases.',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 19,
  question: 'Advantages of chemo combinations EXCEPT:',
  options: [
    'Maximal cell killing',
    'Eradicate all tumor cells',
    'Broader activity',
    'Delay resistance',
    'Better than monotherapy'
  ],
  correctIndex: 1,
  explanation: 'While combinations improve outcomes, complete eradication is rare due to tumor heterogeneity and resistant clones.',
  categories: [PharmacologyCategory.cancer],
),

CaseItem(
  id: 20,
  question: 'Doxorubicins well-documented toxicity:',
  options: [
    'Hemorrhagic cystitis',
    'Acne',
    'Peripheral neuropathy',
    'Cardiomyopathy',
    'Pulmonary toxicity'
  ],
  correctIndex: 3,
  explanation: 'Doxorubicin causes cumulative dose-dependent cardiomyopathy (risk >550 mg/m²) via iron-mediated free radical damage to cardiomyocytes.',
  categories: [PharmacologyCategory.cancer],
),

// Continue with remaining 35 questions in identical format...
  
  // Hormones
  CaseItem(
    id: 31,
    question: 'Regarding to Adrenal gland, A 39-year-old woman has hirsutism, hyperglycemia, obesity, muscle wasting, and increased circulating levels of adrenocorticotropic hormone (ACTH). The most likely cause of her symptoms is:',
    options: [
      'Primary adrenocortical insufficiency (Addison disease)',
      'Pheochromocytoma',
      'Cushing disease',
      'Treatment with exogenous glucocorticoids',
      'Acromegaly'
    ],
    correctIndex: 2,
    explanation: 'Cushing\'s disease is caused by a pituitary adenoma that secretes excessive ACTH. This leads to adrenal hyperplasia and overproduction of cortisol, causing the classic symptoms of Cushing\'s syndrome (obesity, hyperglycemia, etc.) along with high ACTH levels.',
    categories: [PharmacologyCategory.hormones],
  ),
  CaseItem(
    id: 32,
    question: 'Which of the following drugs has been reported to be moderately effective in reducing prostate size in men with benign prostatic hyperplasia?',
    options: [
      'Ferrous sulfate',
      'Finasteride',
      'Folic acid',
      'Frusemide',
      'Fosfomycin'
    ],
    correctIndex: 1,
    explanation: 'Finasteride is a 5-alpha-reductase inhibitor. It blocks the conversion of testosterone to dihydrotestosterone (DHT), the primary androgen responsible for prostate growth. This leads to a reduction in prostate size.',
    categories: [PharmacologyCategory.hormones],
  ),
  CaseItem(
    id: 33,
    question: 'Which the adverse effect commonly occurs with Drospirenone? Select the most appropriate answer',
    options: [
      'hyperkalemia',
      'Hypernatremia',
      'Hypercalcaemia',
      'Hypermagnisemia',
      'Hypercholesterolemia'
    ],
    correctIndex: 0,
    explanation: 'Drospirenone is a progestin that has anti-mineralocorticoid activity, similar to spironolactone. This can lead to increased potassium retention, creating a risk for hyperkalemia (elevated potassium levels).',
    categories: [PharmacologyCategory.hormones],
  ),
  CaseItem(
    id: 34,
    question: 'A 25-year-old woman requests emergency contraception after unprotected intercourse that occurred 3 days ago. Which agent is most appropriate?',
    options: [
      'Ulipristal',
      'Medroxyprogesterone',
      'Progestin only pill',
      'Combined oral contraceptive',
      'levonorgestrel intrauterine device'
    ],
    correctIndex: 0,
    explanation: 'Ulipristal acetate is a selective progesterone receptor modulator that is effective as an emergency contraceptive for up to 120 hours (5 days) after unprotected intercourse. Other options like levonorgestrel pills are most effective within 72 hours (3 days).',
    categories: [PharmacologyCategory.hormones],
  ),
  CaseItem(
    id: 46,
    question: 'A 55 year-old man has severe pulmonary hypertension and right ventricular hypertrophy. Which of the following agent causes vasodilation and may be useful in pulmonary hypertension?',
    options: [
      'Bimatoprost',
      'Latanoprost',
      'Lubiprostone',
      'Misoprostol',
      'Epoprostenol'
    ],
    correctIndex: 4,
    explanation: 'Epoprostenol, a synthetic prostacyclin (PGI2), is a potent vasodilator of both pulmonary and systemic arterial beds and is a standard treatment for pulmonary arterial hypertension.',
    categories: [PharmacologyCategory.hormones],
  ),

  
];
