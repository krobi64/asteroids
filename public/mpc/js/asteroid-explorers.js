
function goBack() {
    window.history.back();
}


function questionFocus_in(ae_question) {

    //make text have focus style 
    //var a = "ae-info-"+ae_question;
    
    //make button have focus style
    var b = "ae-btn-"+ae_question;
    
    //make quotes ahve focus style
    var c1 = "ae-quote-"+ae_question;
    var c2 = "ae-quote-"+ae_question+"-end";

    //document.getElementById(a).className = "ae-text-explore-hover";
    document.getElementById(b).className = "btn btn-block ae-btn-explore-hover"; 
    document.getElementById(c1).className = "q-quote-hover";
    document.getElementById(c2).className = "q-quote-hover";
     
}


function questionFocus_out(ae_question) {

    //make text have focus style 
    //var a = "ae-info-"+ae_question;
    
    //make button have focus style
    var b = "ae-btn-"+ae_question;

     //make quotes ahve focus style
    var c1 = "ae-quote-"+ae_question;
    var c2 = "ae-quote-"+ae_question+"-end";
    
    //document.getElementById(a).className = "q-text"; 
    document.getElementById(b).className = "btn btn-block ae-btn-explore";
    document.getElementById(c1).className = "q-quote";
    document.getElementById(c2).className = "q-quote";
     
}
