"use strict";

let process = [{priority: 3, duration: 3, isCompleted:false},
               {priority: 4, duration: 3, isCompleted:false}, 
               {priority: 1, duration: 9, isCompleted:false}, 
               {priority: 2, duration: 2, isCompleted:false}, 
              ];

let states = [];
let statesN = [];
let table = [];

for (let i = 0; i < process.length; i++) 
    states.push([]);

for (let i = 0; i < process.length; i++)
    for (let j = 0; j < process.length - 1; j++)
        if (process[j + 1].duration < process[j].duration)
        {
            let pch = process[j + 1];
            process[j + 1] = process[j];
            process[j] = pch;
        }

let numOfExPr = 0;
let q = 0;

while (numOfExPr != 4 )
{

    if (process[numOfExPr].duration != 0)
    {
        console.log(`Process ${numOfExPr} is executing with priority ${process[numOfExPr].priority}`);
        
        for (let i = 0; i < process.length; i++)
            if (i != numOfExPr && !process[i].isCompleted)
                states[i].push(["W", process[i].priority]);
            else if (process[i].isCompleted)
                states[i].push(["C", process[i].priority]);
            else if (numOfExPr == i)
                states[i].push(["E", process[i].priority]);
        
        process[numOfExPr].duration--;
    } 
    else if (process[numOfExPr].duration == 0) 
    {
        console.log(`Process ${numOfExPr} is over!`);
        
        process[numOfExPr].isCompleted = true;
        numOfExPr++;
    }
    
    statesN.push(q++);
}

table.push(["#", ...statesN.slice(0, Math.max(...states.map(el => el.length)))]);

for (let i = 0; i < process.length; i++)
    table.push(...states[i]);

if (window) 
{
    document.write("<table border='1'>");

    document.write("<thead>");
    document.write("<tr>");

    table[0].forEach((el) => {
        document.write(`<td>${el}</td>`);
    })

    document.write("</tr>");
    document.write("</thead>");

    document.write("<tbody>");

    for (let i = 0; i < process.length; i++)
    {
        document.write("<tr>");
        document.write(`<td>${states[i][0][1]}</td>`);

        states[i].forEach((el) => {
            (el[0] == "C") ? document.write(`<td></td>`) : document.write(`<td>${el[0]}</td>`);  
        });

        document.write("</tr>");
    }

    document.write("</tbody>");

    document.write("</table>");
}


