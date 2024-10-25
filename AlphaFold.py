import requests

def get_alphafold_info():
    url = "https://alphafold.ebi.ac.uk/"
    response = requests.get(url)
    
    if response.status_code == 200:
        print("Successfully accessed AlphaFold Protein Structure Database.")
        print("URL:", url)
        
    else:
        print("Failed to access AlphaFold Protein Structure Database.")
        print("Status Code:", response.status_code)

if __name__ == "__main__":
    get_alphafold_info()
      
import requests

def explain_uniprot_id():
    explanation = """
    A UniProt ID is a unique identifier assigned to a protein sequence in the UniProt database. 
    It ensures that each protein can be accurately referenced and retrieved, 
    providing a stable and consistent way to link protein data across various biological databases.
    """
    print(explanation)

def get_available_uniprot_ids():
    # Predefined list of UniProt IDs for demonstration
    uniprot_ids = [
        "P12345", "Q9Y2X3", "P0DTC2", "Q8N158", "P69905",
        "P68871", "P00734", "P69905", "P68871", "P00734"
    ]
    
    print("Here are some examples of UniProt IDs:")
    for uniprot_id in uniprot_ids:
        print(f"UniProt ID: {uniprot_id}")

if __name__ == "__main__":
    explain_uniprot_id()
    get_available_uniprot_ids()

import requests

def get_protein_info(uniprot_id):
    url = f"https://alphafold.ebi.ac.uk/api/prediction/{uniprot_id}"
    response = requests.get(url)
    
    if response.status_code == 200:
        data = response.json()
        print(f"Successfully accessed data for UniProt ID: {uniprot_id}")
        for entry in data:
            gene = entry.get('gene', 'N/A')
            sequence_version_date = entry.get('sequenceVersionDate', 'N/A')
            uniprot_description = entry.get('uniprotDescription', 'N/A')
            organism_scientific_name = entry.get('organismScientificName', 'N/A')
            uniprot_end = entry.get('uniprotEnd', 'N/A')
            uniprot_sequence = entry.get('uniprotSequence', 'N/A')
            model_created_date = entry.get('modelCreatedDate', 'N/A')
            pdb_url = entry.get('pdbUrl', 'N/A')
            
            print(f"Gene: {gene}")
            print(f"Sequence Version Date: {sequence_version_date}")
            print(f"UniProt Description: {uniprot_description}")
            print(f"Organism Scientific Name: {organism_scientific_name}")
            print(f"UniProt End: {uniprot_end}")
            print(f"UniProt Sequence: {uniprot_sequence}")
            print(f"Model Created Date: {model_created_date}")
            print("-" * 40)
        
        if pdb_url != 'N/A':
            print(f"PDB URL: {pdb_url}")
        else:
            print("No .pdb file available for this UniProt ID.")
    else:
        print(f"Failed to access data for UniProt ID: {uniprot_id}")
        print("Status Code:", response.status_code)

if __name__ == "__main__":
    uniprot_id = input("Enter a UniProt ID to see specific information: ")
    get_protein_info(uniprot_id)