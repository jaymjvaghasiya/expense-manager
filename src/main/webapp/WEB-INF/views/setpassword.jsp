
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" class="scroll-smooth">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="AI-generated website">
    <meta name="theme-color" content="#ffffff">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="robots" content="index, follow">

    <!-- Performance optimization: Preload critical resources -->
    <link rel="preload" href="https://cdn.tailwindcss.com" as="script">
    <link rel="preload"
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Montserrat:wght@400;500;600;700&display=swap"
        as="style">

    <!-- {headerScripts} -->

    <!-- Core CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="/js/demo2.js"></script>
    
    <!-- Utilities and Components -->
    <script defer src="https://cdnjs.cloudflare.com/ajax/libs/alpinejs/3.13.3/cdn.min.js"></script>
    <script defer src="https://cdnjs.cloudflare.com/ajax/libs/apexcharts/3.45.1/apexcharts.min.js"></script>

    <!-- Optimized Font Loading -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Montserrat:wght@400;500;600;700&display=swap"
        rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Base Styles -->
    <link rel="stylesheet" href="/css/styles.css">
    <!-- Enhanced Image Handler -->
    <script src="/js/demo.js"></script>
    
</head>

<body class="antialiased text-gray-800 min-h-screen flex flex-col">
    <!-- Skip to main content link for accessibility -->
    <a href="#main-content"
        class="sr-only focus:not-sr-only focus:absolute focus:top-0 focus:left-0 focus:z-50 focus:p-4 focus:bg-white focus:text-black">
        Skip to main content
    </a>

    <!-- Header -->
    <header class="relative z-50 bg-white dark:bg-gray-900">
        <!-- Header content goes here -->
    </header>

    <!-- Main content area -->
    <main id="main-content" class="flex-1 relative ">
        <!-- Content will be injected here -->
    </main>

    <!-- {bodyScripts} -->

</body>

</html>
<element id="c1fb1615-f645-47ce-8775-0db3c4ba1344" data-section-id="c1fb1615-f645-47ce-8775-0db3c4ba1344">

    <htmlCode>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Expense Manager Dashboard</title>
            <script src="https://cdn.tailwindcss.com"></script>
            <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
            <style>
                [x-cloak] {
                    display: none !important;
                }

                html {
                    scroll-behavior: smooth;
                }

                .active-link {
                    background-color: #4B5563;
                    color: white;
                }

                .nav-link:hover {
                    background-color: #374151;
                    transition: all 0.3s ease;
                }
            </style>
        </head>

        <body class="bg-[#E5E7EB]">
            <div id="root" class="flex h-screen overflow-hidden">
                <main class="flex-1 overflow-y-auto bg-gray-100">
                    <MountPoint>
</element>
<element id="6bc066c0-f4f2-4009-aa02-f5dcfcf5e150" data-section-id="6bc066c0-f4f2-4009-aa02-f5dcfcf5e150">

    <htmlCode>
        <div id="root" class="min-h-screen bg-neutral-900">
            <div x-data="{ isOpen: false, showChangePassword: true }" class="min-h-screen">
                <!-- Main Content -->
                <div class="lg:pl-64">
                    <section id="user_profile" class="p-6">
                        <!-- Change Password Modal -->
                        <div x-show="showChangePassword" class="fixed inset-0 z-50 overflow-y-auto" x-cloak>
                            <div class="flex items-center justify-center min-h-screen px-4">
                                <div class="fixed inset-0 bg-black opacity-50"></div>
                                <div class="relative bg-neutral-800 rounded-lg max-w-md w-full p-6">
                                    <div class="flex justify-between items-center mb-4">
                                        <h3 class="text-xl font-bold text-white">Change Password</h3>
                                        
                                    </div>
                                    <form class="space-y-4" action="changepass" method="post">
                                    	<input type="hidden" name="token" value="${param.token}">
                                        <div>
                                            <label class="block text-sm font-medium text-neutral-300 mb-1">New
                                                Password</label>
                                            <input type="password" name="password"
                                                class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
                                        </div>
                                        <div>
                                            <label class="block text-sm font-medium text-neutral-300 mb-1">Confirm New
                                                Password</label>
                                            <input type="password" name="cnf_password"
                                                class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
                                        </div>
                                        <div class="flex justify-end space-x-3">
                                            <button type="submit"
                                                class="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700">
                                                Update Password
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </htmlCode>
</element>
<div id="page_complete">
    <script>
        console.log('Page complete');
    </script>
    </body>

    </html>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Password Form</title>
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2 class="text-center">Set Password</h2>
        <form action="changepass" method="post">
        	<input type="hidden" name="token" value="${param.token}">
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" name="password" class="form-control" id="password" placeholder="Enter your password" required>
            </div>
            <div class="form-group">
                <label for="confirmPassword">Confirm Password</label>
                <input type="password" name="cnf_password" class="form-control" id="confirmPassword" placeholder="Confirm your password" required>
            </div>
            <div class="alert alert-danger d-none" id="errorAlert">Passwords do not match!</div>
            <button type="submit" class="btn btn-primary btn-block">Submit</button>
        </form>
    </div>

</body>
</html> --%>