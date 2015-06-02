
function goBack() {
    window.history.back();
}


function questionFocus_in(ae_question) {

    //make text have focus style 
    var a = "ae-info-"+ae_question;
    //make button have focus style
    var b = "ae-btn-"+ae_question;
    document.getElementById(a).className = "ae-text-explore-hover"; 
    document.getElementById(b).className = "btn btn-block ae-btn-explore-hover";
     
}


function questionFocus_out(ae_question) {

    //make text have focus style 
    var a = "ae-info-"+ae_question;
    //make button have focus style
    var b = "ae-btn-"+ae_question;
    document.getElementById(a).className = "q-text"; 
    document.getElementById(b).className = "btn btn-block ae-btn-explore";
     
}
