## Description

Drug manufacturers and distributors submit documentation about their products to FDA in the Structured Product Labeling (SPL) format. The openFDA drug product labeling API returns data from this dataset.

The labeling is a 'living document' that changes over time to reflect increased knowledge about the safety and effectiveness of the drug.

The openFDA drug product labels API returns data from these submissions for both prescription and over-the-counter (OTC) drugs. The labels are broken into sections, such as indications for use (prescription drugs) or purpose (OTC drugs), adverse reactions, and so forth. There is considerable variation between drug products in terms of these sections and their contents, since the information required for safe and effective use varies with the unique characteristics of each drug product.

## Properties

- `spl_product_data_elements`: Usually a list of ingredients in a drug product
- `purpose`: Information about the drug product’s indications for use
- `active_ingredient`: A list of the active, medicinal ingredients in the drug product
- `indications_and_usage`: A statement of each of the drug product’s indications for use, such as for the treatment, prevention, mitigation, cure, or diagnosis of a disease or condition, or of a manifestation of a recognized disease or condition, or for the relief of symptoms associated with a recognized disease or condition. This field may also describe any relevant limitations of use
- `keep_out_of_reach_of_children`: Information pertaining to whether the product should be kept out of the reach of children, and instructions about what to do in the case of accidental contact or ingestion, if appropriate
- `warnings`: Information about serious adverse reactions and potential safety hazards, including limitations in use imposed by those hazards and steps that should be taken if they occur
- `dosage_and_administration`: Information about the drug product’s dosage and administration recommendations, including starting dose, dose range, titration regimens, and any other clinically sigificant information that affects dosing recommendations
- `inactive_ingredient`: A list of inactive, non-medicinal ingredients in a drug product
- `package_label_principal_display_panel`: The content of the principal display panel of the product package, usually including the product’s name, dosage forms, and other key information about the drug product
- `set_id`: The Set ID, A globally unique identifier (GUID) for the labeling, stable across all versions or revisions
- `id`: The document ID, A globally unique identifier (GUID) for the particular revision of a labeling document
- `effective_time`: Date reference to the particular version of the labeling document
- `version`: A sequentially increasing number identifying the particular version of a document, starting with `1`
- `openfda`: Object containing the following items
    - `brand_name`: Brand or trade name of the drug product
    - `generic_name`: Generic name(s) of the drug product
    - `manufacturer_name`: Name of manufacturer or company that makes this drug product, corresponding to the labeler code segment of the NDC
    - `product_ndc`: The labeler manufacturer code and product code segments of the NDC number, separated by a hyphen
    - `product_type`: N/A
    - `route`: The route of administation of the drug product
    - `substance_name`: The list of active ingredients of a drug product
    - `spl_id`: Unique identifier for a particular version of a Structured Product Label for a product. Also referred to as the document ID
    - `spl_set_id`: Unique identifier for the Structured Product Label for a product, which is stable across versions of the label. Also referred to as the set ID
    - `package_ndc`: This number, known as the NDC, identifies the labeler, product, and trade package size. The first segment, the labeler code, is assigned by the FDA. A labeler is any firm that manufactures (including repackers or relabelers), or distributes (under its own name) the drug
    - `is_original_packager`: Whether or not the drug has been repackaged for distribution
    - `nui`: Unique identifier applied to a drug concept within the National Drug File Reference Terminology (NDF-RT)
    - `pharm_class_epc`: Established pharmacologic class associated with an approved indication of an active moiety (generic drug) that the FDA has determined to be scientifically valid and clinically meaningful. Takes the form of the pharmacologic class, followed by `[EPC]` (such as `Thiazide Diuretic [EPC]` or `Tumor Necrosis Factor Blocker [EPC]`)
    - `pharm_class_pe`: Physiologic effect or pharmacodynamic effect—tissue, organ, or organ system level functional activity—of the drug’s established pharmacologic class. Takes the form of the effect, followed by `[PE]` (such as `Increased Diuresis [PE]` or `Decreased Cytokine Activity [PE]`)
    - `pharm_class_cs`: Chemical structure classification of the drug product’s pharmacologic class. Takes the form of the classification, followed by `[Chemical/Ingredient]` (such as `Thiazides [Chemical/Ingredient]` or `Antibodies, Monoclonal [Chemical/Ingredient])
    - `unii`: Unique Ingredient Identifier, which is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information

## Data Source

Dataset obtained from https://open.fda.gov/apis/drug/label/download/