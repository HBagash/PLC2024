//Create list of ints from 1 to 5, Haskell equivalent [1..5]
function arrFunc(a, b){
    let arr = [];
    for (let i = a; i<=b; i++) {
        arr.push(i);
    }
    return arr;    
}

function applicatorFunc(inpFunc,a , b, s){
    if(s=='s'){
        const arr = inpFunc(a, b);        
        let sum = arr.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
        return sum;
    }
    else{        
        const arr = inpFunc(a, b);
        let sum = arr.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
        return sum/b;
    }
}

let x = applicatorFunc(arrFunc, 1, 5, 's');
let y = applicatorFunc(arrFunc, 1, 5, 'a');
console.log(x);
console.log(y);