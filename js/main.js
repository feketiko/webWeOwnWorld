let features = document.getElementsByClassName("feature");

for (let i = 0; i < features.length; i++) {
    features[i].onmouseover = function() {
        this.style.borderWidth = "3px";
        this.style.backgroundColor = "rgba(124,101,0,0.1)";
    }
    features[i].onmouseout = function() {
        this.style.borderWidth = "0px";
        this.style.backgroundColor = "rgba(124,101,0,0)";
    }
}