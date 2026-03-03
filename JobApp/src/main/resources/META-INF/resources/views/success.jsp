<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Post Success - JobApp</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="/style.css">
    </head>

    <body class="bg-light vh-100 d-flex align-items-center">
        <div class="container text-center">
            <div class="card border-0 shadow-sm p-5 mx-auto" style="max-width: 500px;">
                <div class="display-1 text-success mb-3">✓</div>
                <h2 class="fw-bold mb-3">${message != null ? message : "Success!"}</h2>
                <p class="text-muted mb-4">Your request has been processed successfully.</p>
                <div class="d-grid gap-2">
                    <a href="/viewalljobs" class="btn btn-primary py-3">View Job Board</a>
                    <a href="/" class="btn btn-outline-secondary">Go to Home</a>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>

    </html>