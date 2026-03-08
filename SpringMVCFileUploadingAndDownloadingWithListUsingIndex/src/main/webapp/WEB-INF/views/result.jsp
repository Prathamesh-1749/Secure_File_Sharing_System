<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<link rel="stylesheet"
href="${pageContext.request.contextPath}/resources/css/external.css">
</head>
<body>
<center>
<header>
<div class="nav">
      <div class="logo">Secure File Sharing System</div>
      <nav>
        <a href="#intro">Intro</a>
        <a href="#result">Result</a>
        <a href="#ext">Extintions Allowed</a>
        <a href="#contact">Contact</a>
         <a href="#out">Logout</a>
      </nav>
    </div>
</header>
<div class="hero" id="intro">
    <div class="grid">
      <div class="card">
    <h1>What Is File Sharing</h1>
      <p> File sharing is the practice of distributing or providing access to digital media, such as computer programs, multimedia (audio, images and video), documents or electronic books. Common methods of storage, transmission and dispersion include removable media, centralized servers on computer networks, Internet-based hyperlinked documents, and the use of distributed peer-to-peer networking.</p>
    <p>Below are the links for Login and Registration</p>
    <a href=" https://www.google.com/search?q=secure+file+sharing+system+wikipedia&sca_esv=21256c7cb193ba88&sxsrf=ANbL-n5ckcfW55R2lLeW5VWsqps1115Wtg%3A1771264412227&ei=nFmTaajLDZOZvr0P1ZWeiAY&biw=1536&bih=730&oq=Secure+file+sharing+system+wiki&gs_lp=Egxnd3Mtd2l6LXNlcnAiH1NlY3VyZSBmaWxlIHNoYXJpbmcgc3lzdGVtIHdpa2kqAggAMgUQIRigATIFECEYoAEyBRAhGKABSMKb_wFQsf79AVjwif8BcAR4AJABAJgBhAKgAccyqgEHMC4yMC4xM7gBAcgBAPgBAZgCJaAClzSoAhTCAggQABiwAxjvBcICCxAAGLADGKIEGIkFwgIHECMYJxjqAsICEBAAGAMYtAIY6gIYjwHYAQHCAhAQLhgDGLQCGOoCGI8B2AEBwgIEECMYJ8ICDBAjGIAEGBMYJxiKBcICChAAGIAEGEMYigXCAg4QABiABBixAxiDARiKBcICCBAAGIAEGLEDwgILEAAYgAQYsQMYgwHCAgUQABiABMICEBAAGIAEGLEDGEMYgwEYigXCAg4QLhiABBixAxiDARiKBcICBxAAGIAEGBPCAgcQLhiABBgTwgIJEAAYgAQYExgNwgIJEC4YgAQYExgNwgIIEAAYgAQYywHCAg4QLhiABBjHARjLARivAcICCBAuGIAEGMsBwgIOEC4YgAQY0QMYxwEYywHCAhEQLhiABBjHARjLARiOBRivAcICChAAGIAEGAoYywHCAgYQABgWGB7CAggQABiABBiiBMICBRAAGO8FwgIHECEYoAEYCpgDEPEFS62bnyky8hOIBgGQBgW6BgYIARABGAqSBwc0LjE0LjE5oAfDuAGyBwcwLjE0LjE5uAf7M8IHCTAuMTguMTUuNMgHkgGACAA&sclient=gws-wiz-serp" class="btn">Learn More</a>
    </div>
    </div>
  </div>

<section id="result">
 <div class="grid">
      <div class="card">
 <h2>Download Uploaded File</h2>

<h2>${msg}</h2>
<c:if test="${not empty fileName}">
    File Name: ${fileName} <br><br>
    <a href="download?name=${fileName}" class="btn"> Download</a>
</c:if>
</div>
<div class="card">
<h2>Click On The Link Below To Upload Another File</h2>
<p>Upload another file here</p>
<a href="upload" class="btn">Upload Another File</a>
</div>
<div class="card">
  <h2>View and Download Upload Files</h2> 
                      <p>If you want to view or download your uploaded files,then please click on the link below </p>
                 		        <a href=files class="btn">View Uploaded Files</a>
                 		       </div>
</div>
</section>
<section id="ext">
<details>
<summary><h2> See Alowed Extensions</h2></summary>

.pdf<br/>
.jpg<br/>
.png<br/>
.jpeg<br/>
.txt<br/>
.docx
</details>
</section>
<section id="contact">
  <div class="grid">
  <details>
    <summary><h2>About Me</h2></summary>
     <div class="card">
        <h3>A short info about me</h3>
      <p>I'm a web developer, I love developing web applications using Java Technologies</p>
      </div>
    </details>
     <details>
    <summary><h2>Developer Name</h2></summary>
      <div class="card">
        <h3>Developer name goes below:-</h3>
   <p>This project has been developed by:</p>
      <p><i><b>Prathamesh Kumawat :)</b></i></p>
     </div>
    </details>
  <details>
   <summary> <h2>Follow Me</h2></summary>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <a href="https://www.instagram.com/pratham_17498/" class="fa fa-instagram"></a>
    </details>
    </div>
</section>
<section id="out">
<div class="card">
 <h2>Logout</h2>
 <p>If you are a new user,then please click below to Register</p>
<a href=logout1 class="btn">Logout</a>
 </div>
 </section>
<footer>
  <p><h5><u><b>(Note:- This Project Is A Personal Project and All Work Done Is My Original Work.)</b></u><h5></p><br>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  &copy;Follow Me:<a href="https://www.instagram.com/pratham_17498/" class="fa fa-instagram"></a>
</footer>
</body>
</html>