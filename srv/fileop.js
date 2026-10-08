import fs from 'fs';

fs.readFile('../db/data/projectReport.json', 'utf8', (err, data) => {
    if (err) {
        console.log(err);
        return;
    }
    const rep=JSON.parse(data);
    rep.value.forEach(Project => {
        if(Project.team_size>5){
            console.log(Project);
        }
    });
    
    console.log("no data");
});