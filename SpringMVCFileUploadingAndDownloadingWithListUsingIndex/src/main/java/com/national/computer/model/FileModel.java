package com.national.computer.model;

import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.constraints.NotNull;

public class FileModel {

    @NotNull(message = "Please select a file")
    private MultipartFile file;

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }
}