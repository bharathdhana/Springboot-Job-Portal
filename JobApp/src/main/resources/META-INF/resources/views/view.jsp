<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Job Board - JobApp</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
            <link rel="stylesheet" href="/style.css">
        </head>

        <body class="bg-light">
            <nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-4 shadow-sm">
                <div class="container">
                    <a class="navbar-brand" href="/">JobApp</a>
                    <div class="navbar-nav ms-auto">
                        <a class="nav-link" href="/">Home</a>
                        <a class="btn btn-light ms-3" href="/addjob">Post a Job</a>
                    </div>
                </div>
            </nav>

            <main class="container mb-5">
                <header class="mb-4 d-flex justify-content-between align-items-end">
                    <div>
                        <h2 class="fw-bold">Current Openings</h2>
                        <p class="text-muted mb-0">Showing all available developer roles.</p>
                    </div>
                    <div class="col-md-4">
                        <form action="/search" method="get" class="d-flex">
                            <input class="form-control me-2" type="search" name="keyword" placeholder="Search jobs..."
                                aria-label="Search">
                            <button class="btn btn-outline-primary" type="submit">Search</button>
                        </form>
                    </div>
                </header>

                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
                    <c:forEach items="${jobPosts}" var="job">
                        <div class="col">
                            <div class="card h-100 border-0 shadow-sm job-card">
                                <div class="card-body p-4">
                                    <div class="d-flex justify-content-between align-items-start mb-3">
                                        <h5 class="card-title fw-bold text-primary mb-0">${job.postProfile}</h5>
                                        <span class="badge bg-info text-dark">${job.reqExperience} Yrs</span>
                                    </div>
                                    <p class="card-text text-muted small mb-4">${job.postDesc}</p>
                                    <div class="d-flex flex-wrap gap-1">
                                        <c:forEach items="${job.postTechStack}" var="tech">
                                            <span class="badge bg-light text-primary border">${tech}</span>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div
                                    class="card-footer bg-white border-0 p-4 pt-0 d-flex justify-content-between align-items-center">
                                    <small class="text-muted">Ref: #${job.postId}</small>
                                    <div>
                                        <a href="/editjob/${job.postId}"
                                            class="btn btn-sm btn-outline-secondary me-1">Edit</a>
                                        <a href="/deletejob/${job.postId}" class="btn btn-sm btn-outline-danger"
                                            onclick="return confirm('Are you sure?')">Delete</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                    <c:if test="${empty jobPosts}">
                        <div class="col-12">
                            <div class="card border-0 shadow-sm p-5 text-center">
                                <p class="lead text-muted mb-4">No job postings available yet.</p>
                                <a href="addjob" class="btn btn-primary px-4">Be the first to post</a>
                            </div>
                        </div>
                    </c:if>
                </div>
            </main>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        </body>

        </html>