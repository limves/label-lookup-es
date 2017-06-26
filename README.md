# label-lookup-es
Spanish Wikipedia label-lookup

    git clone https://github.com/brmson/label-lookup.git
    cd label-lookup

### Usage, Just run the script
python lookup-service.py sorted_list_es.dat
* http://localhost:5000/search/persona
* http://localhost:5000/search/testito

## PORT 5001 CrossWikiLookup
    #install sparqlwrapper 
    git clone https://github.com/RDFLib/sparqlwrapper.git
    cd sparqlwrapper
    python setup.py install 
    cd ..
  
    # The database will be created automatically. To initialize the database, run
    # curl -O http://nlp.stanford.edu/data/crosswikis-data.tar.bz2/dictionary.bz2
    curl -O https://nlp.stanford.edu/data/crosswikis-data.tar.bz2/dictionary.bz2
    
### There is not a versioin of the dictionary.bz2 in Spanish.
    python sqlite-init.py labels.db dictionary.bz2 
    
    # Then, start it like this:
    python  lookup-service-sqlite.py labels.db
    http://localhost:5001/search/alabama?addPageId=1
    
#### Paper
A Cross-Lingual Dictionary for English Wikipedia Concepts 
* https://nlp.stanford.edu/pubs/crosswikis.pdf
