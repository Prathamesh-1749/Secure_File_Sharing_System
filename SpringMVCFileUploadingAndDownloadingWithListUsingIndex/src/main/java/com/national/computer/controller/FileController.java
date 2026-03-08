package com.national.computer.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class FileController {

	private static final String UPLOAD_DIR = "F:/secure-uploads/";
    private static final long MAX_FILE_SIZE = 5 * 1024 * 1024; // 5MB

    // Allowed file extensions
    private static final List<String> ALLOWED_EXTENSIONS =
            List.of("pdf", "jpg", "jpeg", "png", "txt", "docx");

    
    @GetMapping("/")
    	public String Home() {
    	
        return "index";
    }
    @GetMapping("/login1")
    public String loginPage() {
        return "login";
    }
    @GetMapping("/registration")
    public String registrationPage() {
        return "registration";
    }
    // Upload Page
    @GetMapping("/upload")
    public String uploadPage()
    {
        return "upload";
    }

    // Upload File
    @PostMapping("/uploadFile")
    public String uploadFile(@RequestParam("file") MultipartFile file, Model model) {

        try {

            if (file.isEmpty()) {
                model.addAttribute("msg", "Please select a file");
                return "result";
            }

            // 1️⃣ Check file size
            if (file.getSize() > MAX_FILE_SIZE) {
                model.addAttribute("msg", "File size exceeds 5MB limit");
                return "result";
            }

            String originalName = file.getOriginalFilename();
            String extension = getFileExtension(originalName);

            // 2️⃣ Validate extension
            if (!ALLOWED_EXTENSIONS.contains(extension.toLowerCase())) {
                model.addAttribute("msg", "Invalid file type!");
                return "result";
            }

            // 3️⃣ Prevent path traversal
            if (originalName.contains("..")) {
                model.addAttribute("msg", "Invalid file name!");
                return "result";
            }

            // 4️⃣ Rename file using UUID
            String newFileName = UUID.randomUUID() + "." + extension;

            File dir = new File(UPLOAD_DIR);
            if (!dir.exists()) dir.mkdirs();

            File saveFile = new File(dir, newFileName);

            file.transferTo(saveFile);

            model.addAttribute("msg", "File uploaded securely!");
            model.addAttribute("fileName", newFileName);

        } catch (Exception e) {
            model.addAttribute("msg", "Upload failed!");
        }

        return "result";
    }
    // List All Files
    @GetMapping("/files")
    public String listFiles(Model model) {

        File folder = new File(UPLOAD_DIR);
        File[] files = folder.listFiles();

        List<File> fileList = files != null ? Arrays.asList(files) : List.of();
        model.addAttribute("files", fileList);

        return "list";
    }

    // Download File
    @GetMapping("/download")
    public void downloadFile(@RequestParam("name") String fileName,
                             HttpServletResponse response) {

        try {

            // Prevent path traversal
            if (fileName.contains("..")) {
                response.getWriter().write("Invalid file name!");
                return;
            }

            Path filePath = Paths.get(UPLOAD_DIR).resolve(fileName).normalize();

            File file = filePath.toFile();

            if (!file.exists()) {
                response.getWriter().write("File not found!");
                return;
            }

            response.setContentType(Files.probeContentType(filePath));
            response.setHeader("Content-Disposition",
                    "attachment; filename=\"" + file.getName() + "\"");

            Files.copy(filePath, response.getOutputStream());
            response.getOutputStream().flush();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // ===============================
    // Utility Method
    // ===============================
    private String getFileExtension(String fileName) {
        if (fileName == null) return "";
        int lastDot = fileName.lastIndexOf(".");
        return lastDot == -1 ? "" : fileName.substring(lastDot + 1);
    }
    @GetMapping("/logout1")
    public String logout(HttpSession session) {

        if (session != null) {
            session.invalidate();   // Destroy session (Security purpose)
        }

        return "logout";  // returns logout.html or logout.jsp
    }
}


/*
     upload      → Upload page
    /uploadFile  → Upload file
    /files       → List all files
    /download    → Download selected file
 

*/