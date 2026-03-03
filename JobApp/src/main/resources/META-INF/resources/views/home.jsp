<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JobApp - Home</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style.css">
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="/">JobApp</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link active" href="/">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="viewalljobs">Browse Jobs</a></li>
                        <li class="nav-item"><a class="btn btn-light ms-lg-3" href="addjob">Post a Job</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <header class="hero-section text-center">
            <div class="container">
                <h1 class="display-3 fw-bold">Find Your Dream Career</h1>
                <p class="lead mb-4">The simplest way to connect with top employers and developers.</p>
                <div class="d-grid gap-3 d-sm-flex justify-content-sm-center">
                    <a href="viewalljobs" class="btn btn-light btn-lg px-4 gap-3">Browse Jobs</a>
                    <a href="addjob" class="btn btn-outline-light btn-lg px-4">Employer Portal</a>
                </div>
            </div>
        </header>

        <main class="container mb-5">
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card h-100 border-0 shadow-sm p-4">
                        <h3 class="h5">Easy to Use</h3>
                        <p class="text-muted">Simple interface designed for efficiency. Post or find jobs in seconds.
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card h-100 border-0 shadow-sm p-4">
                        <h3 class="h5">Modern Stack</h3>
                        <p class="text-muted">Built with Spring Boot and JSP for robust performance.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card h-100 border-0 shadow-sm p-4">
                        <h3 class="h5">Free to Post</h3>
                        <p class="text-muted">No hidden fees. Just great opportunities for everyone.</p>
                    </div>
                </div>
            </div>
        </main>

        <footer class="py-4 bg-white border-top text-center mt-auto">
            <p class="text-muted mb-0">&copy; 2026 JobApp. Simple & Fast.</p>
        </footer>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>

    </html>