We can config to use the mock API or the real one creating a sga-settings.json on the image folder. The file should follow this format:

{
    "current": "mock",
    "mock": 
        {
            "url": "http://localhost:8282", 
            "prefix": "",
            "version": ""
        },
    "desenv": 
        {
            "url": "https://www-d.fgv.br/EBAPE/GestaoAcad", 
            "prefix": "api",
            "version": "v1"
        }      
}