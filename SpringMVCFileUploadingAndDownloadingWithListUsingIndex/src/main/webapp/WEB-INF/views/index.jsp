<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List, java.io.File" %>

<!DOCTYPE html>
<html>
<head>
    <title>File Upload Download Home</title>
   <link rel="stylesheet"
href="${pageContext.request.contextPath}/resources/css/external.css">
</head>
<body >


  <header>
    <div class="nav">
      <div class="logo">Secure File Sharing System</div>
      <nav>
        <a href="#intro">Intro</a>
        <a href="#tech">Technologies</a>
        <a href="#about">About</a>
        <a href="#login">Login/Registration</a>
        <a href="#contact">Contact</a>
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
    <section id="tech">
    <h2>Technologies,Programming Languages,Framework and Database Used</h2>
    <div class="grid">
      <div class="card">
        <h3>Technologies Used</h3>
        <ul>
          <li>Java Web Technologies</li>
        </ul>
      </div>
      <div class="card">
        <h3>Programming Languages Used</h3>
        <ul>
          <li>Core Java</li>
          <li>JSP</li>
           <li>Servlets</li>
            <li>JDBC</li>
        </ul>
      </div>
            <div class="card">
        <h3>Framework Used</h3>
        <ul>
          <li>Spring(IOC)</li>
          <li>Spring(MVC)</li>
        </ul>
      </div>
      <div class="card">
        <h3>Database Used</h3>
        <ul>
          <li>Oracle SQL</li>
        </ul>
      </div>
      <div class="card">
        <h3>IDEs Used</h3>
        <ul>
          <li>Eclipse IDE</li>
        </ul>
      </div>
      <div class="card">
        <h3>Server Used</h3>
        <ul>
          <li>Apache Tomcat Web Application</li>
        </ul>
      </div>
      </div>
      </section>
       <section id="about">
   <h2>What this project contains</h2>
   <div class="grid">
   <div class="card">
        <h3>Project Contains</h3>
        <ul>
          <li>Restricted unauthorized access</li>
          <li>Safe User Authorization</li>
           <li>Secure sharing validation</li>
            <li>Minimal performance overhead</li>
             <li>File Uploading and Downloading</li>
              <li>Database Encryption</li>
               <li>View Uploaded Files</li>
               <li>Safe User Logout</li>
        </ul>
      </div>
           </div>
  </section>
 <section id="login">
    <div class="grid">
      <div class="card">
          <h2>User Login</h2>
        <h3>Login As An Existing User</h3>
        <p>If you are a existing user,then please click below to Login</p>
        <a href=login1 class="btn">Login</a> 
      </div>
      <div class="card">
<h2>User Registration</h2>
        <h3>Register As New User</h3>
        <p>If you are a new user,then please click below to Register</p>
        <a href=registration class="btn">Register</a> 
      </div>
      </div>
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
<footer>
  <p><h5><u><b>(Note:- This Project Is A Personal Project and All Work Done Is My Original Work.)</b></u><h5></p><br>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  &copy;Follow Me:<a href="https://www.instagram.com/pratham_17498/" class="fa fa-instagram"></a>
</footer>
</body>
</html>