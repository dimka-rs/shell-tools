// go to next unread comment on habr.com
// paste into dev console

i = 0;
comments = document.getElementsByClassName("js-comment_new");
num = comments.length;
// repeat this line (up arrow) to scroll to next comment
if(i < num) comments[i++].scrollIntoView();

// document.getElementsByClassName("js-comment_new")[i++].scrollIntoView();
