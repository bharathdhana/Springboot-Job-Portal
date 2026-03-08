<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Post a Job - JobApp</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="../style.css">
    </head>

    <body class="bg-light">
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-5 shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="/">JobApp</a>
                <div class="navbar-nav ms-auto">
                    <a class="nav-link" href="/">Home</a>
                    <a class="nav-link" href="/viewalljobs">Browse Jobs</a>
                </div>
            </div>
        </nav>

        <main class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card border-0 shadow-sm p-5">
                        <h2 class="mb-4 fw-bold">Post a New Job</h2>
                        <hr class="mb-4">

                        <form action="/handleForm" method="post">
                            <div class="row g-3">
                                <div class="col-md-4">
                                    <label for="postId" class="form-label">Job ID</label>
                                    <input type="number" class="form-control" id="postId" name="postId" required>
                                </div>
                                <div class="col-md-8">
                                    <label for="postProfile" class="form-label">Job Profile</label>
                                    <input type="text" class="form-control" id="postProfile" name="postProfile"
                                        placeholder="e.g. Java Developer" required>
                                </div>
                                <div class="col-12">
                                    <label for="postDesc" class="form-label">Description</label>
                                    <textarea class="form-control" id="postDesc" name="postDesc" rows="4"
                                        required></textarea>
                                </div>
                                <div class="col-md-6">
                                    <label for="reqExperience" class="form-label">Required Experience (Years)</label>
                                    <input type="number" class="form-control" id="reqExperience" name="reqExperience"
                                        required>
                                </div>
                                <div class="col-md-6">
                                    <label for="postTechStack" class="form-label">Tech Stack (comma separated)</label>
                                    <input type="text" class="form-control" id="postTechStack" name="postTechStack"
                                        placeholder="Java, Spring, etc." required>
                                </div>
                                <div class="col-12 mt-4 text-end">
                                    <button type="submit" class="btn btn-primary btn-lg px-5">Publish Job</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </main>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>

    </html>