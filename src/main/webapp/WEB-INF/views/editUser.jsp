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
                <div x-data="{ isOpen: false }" class="relative">
                    <!-- Mobile Menu Button -->
                    <button type="button"
                        class="lg:hidden fixed top-4 left-4 z-50 rounded-lg bg-gray-800 p-2 text-gray-400 hover:bg-gray-700 hover:text-white focus:outline-none focus:ring-2 focus:ring-white"
                        @click="isOpen = !isOpen" aria-controls="mobile-menu" :aria-expanded="isOpen">
                        <span x-show="!isOpen" x-cloak>
                            <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M4 6h16M4 12h16M4 18h16" />
                            </svg>
                        </span>
                        <span x-show="isOpen" x-cloak>
                            <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M6 18L18 6M6 6l12 12" />
                            </svg>
                        </span>
                    </button>

                    <!-- Sidebar -->
					<jsp:include page="sidebar.jsp" />
                </div>

                <main class="flex-1 overflow-y-auto bg-gray-100">
                    <MountPoint>

                        <script>
                            document.addEventListener('DOMContentLoaded', function () {
                                const navLinks = document.querySelectorAll('.nav-link');

                                const setActiveLink = (hash) => {
                                    navLinks.forEach(link => {
                                        if (link.getAttribute('href') === hash) {
                                            link.classList.add('active-link');
                                        } else {
                                            link.classList.remove('active-link');
                                        }
                                    });
                                };

                                navLinks.forEach(link => {
                                    link.addEventListener('click', (e) => {
                                        navLinks.forEach(l => l.classList.remove('active-link'));
                                        link.classList.add('active-link');
                                    });
                                });

                                window.addEventListener('hashchange', () => {
                                    setActiveLink(window.location.hash || '#dashboard');
                                });

                                setActiveLink(window.location.hash || '#dashboard');
                            });
                        </script>
</element>
<element id="6bc066c0-f4f2-4009-aa02-f5dcfcf5e150" data-section-id="6bc066c0-f4f2-4009-aa02-f5dcfcf5e150">

    <htmlCode>
        <div id="root" class="min-h-screen bg-neutral-900">
            <div x-data="{ isOpen: false }" class="min-h-screen">
                <!-- Main Content -->
                <div class="lg:pl-64">
                    <section id="user_profile" class="p-6">
                        <div class="max-w-4xl mx-auto">
                            <div class="bg-neutral-800 rounded-lg border border-neutral-700/30 overflow-hidden">
                                

                                <!-- Profile Navigation -->
                                <div class="border-b border-neutral-700/30">
                                    <nav class="flex overflow-x-auto">
                                        <button class="px-6 py-4 text-white border-b-2 border-blue-500">Personal
                                            Info</button>
                                        <button class="px-6 py-4 text-neutral-400 hover:text-white">Security</button>
                                        <button class="px-6 py-4 text-neutral-400 hover:text-white">Preferences</button>
                                        <button
                                            class="px-6 py-4 text-neutral-400 hover:text-white">Notifications</button>
                                    </nav>
                                </div>

                                <!-- Profile Content -->
                                <div class="p-6">
                                    <form class="space-y-6" action="updateprofile" method="post" enctype="multipart/form-data">
		                                        <!-- Profile Header -->
		                                <div class="p-6 bg-neutral-700/30">
		                                    <div class="flex flex-col md:flex-row items-center">
		                                        <div class="mb-4 md:mb-0 md:mr-6">
		                                            <div class="relative">
		                                                <img src="${user.profile_path}" alt="Profile"
		                                                    class="w-24 h-24 rounded-full border-4 border-neutral-600">
		                                                <!-- Hidden File Input -->
        												<input type="file" id="user-image" name="profilePic" accept="image/*" class="hidden" onchange="previewImage(event)">
        
		                                                <label for="user-image"
		                                                    class="absolute bottom-0 right-0 bg-blue-600 p-2 rounded-full text-white hover:bg-blue-700">
		                                                    <svg class="w-4 h-4" fill="none" stroke="currentColor"
		                                                        viewBox="0 0 24 24">
		                                                        <path stroke-linecap="round" stroke-linejoin="round"
		                                                            stroke-width="2"
		                                                            d="M3 9a2 2 0 012-2h.93a2 2 0 001.664-.89l.812-1.22A2 2 0 0110.07 4h3.86a2 2 0 011.664.89l.812 1.22A2 2 0 0018.07 7H19a2 2 0 012 2v9a2 2 0 01-2 2H5a2 2 0 01-2-2V9z" />
		                                                        <path stroke-linecap="round" stroke-linejoin="round"
		                                                            stroke-width="2" d="M15 13a3 3 0 11-6 0 3 3 0 016 0z" />
		                                                    </svg>
		                                                </label>
		                                                <!-- <input type="file" id="user-image" name="profilePic" class="d-none" accept="image/*"> -->
		                                            </div>
		                                        </div>
		                                        <div class="text-center md:text-left">
		                                            <h1 class="text-2xl font-bold text-white">${user.firstname} ${user.lastname}</h1>
		                                            <p class="text-neutral-400">${user.email}</p>
		                                        </div>
		                                    </div>
		                                </div> 
                                        
                                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                                            <div>
                                                <label class="block text-sm font-medium text-neutral-300 mb-1">First
                                                    Name</label>
                                                <input type="text" value="${user.firstname}" name="firstname"
                                                    class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
                                            </div>
                                            <div>
                                                <label class="block text-sm font-medium text-neutral-300 mb-1">Last
                                                    Name</label>
                                                <input type="text" value="${user.lastname}" name="lastname"
                                                    class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
                                            </div>
                                            <div>
                                                <label class="block text-sm font-medium text-neutral-300 mb-1">Email
                                                    Address</label>
                                                <input type="email" value="${user.email}" name="email"
                                                    class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
                                            </div>
                                            <div>
                                                <label class="block text-sm font-medium text-neutral-300 mb-1">Phone
                                                    Number</label>
                                                <input type="tel" value="${user.mobile}" name="mobile"
                                                    class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
                                            </div>
                                        </div>

                                        <div
                                            class="flex items-center justify-between pt-4 border-t border-neutral-700/30">
                                            <a href="forgetpassword">
	                                            <button type="button"
	                                                class="text-blue-500 hover:text-blue-400">
	                                                Change Password
	                                            </button>
                                            </a>
                                            <input type="submit"
                                                class="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700"
                                                value="Save Changes">
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
    function previewImage(event) {
        const reader = new FileReader();
        reader.onload = function () {
            const imageElement = document.querySelector('img[alt="Profile"]');
            imageElement.src = reader.result;
        };
        reader.readAsDataURL(event.target.files[0]);
    }
        console.log('Page complete');
    </script>
    </body>

    </html>

<%-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - Expense Manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	 <style>
        .profile-image {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid #ccc;
        }
        .upload-icon {
            bottom: 5px;
            right: 5px;
            background-color: #007bff;
            color: #fff;
            border-radius: 50%;
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            font-size: 16px;
        }
        .upload-icon:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body class="bg-primary d-flex justify-content-center align-items-center vh-100">
    <div class="container bg-white rounded shadow p-4" style="max-width: 400px;">
        <h2 class="text-center mb-4">Edit Profile</h2>
        <form action="updateprofile" method="post" enctype="multipart/form-data">
        	<input type="hidden" name="userId" value="${user.userId}">
        	<div class="position-relative d-flex justify-content-center mb-4">
                <img src="${user.profile_path}" alt="Profile Image" class="profile-image" id="profileImagePreview">
                <label for="user-image" class="upload-icon position-absolute">
                    <i class="fa-solid fa-pen"></i>
                </label>
                <input type="file" id="user-image" name="profilePic" class="d-none" accept="image/*">
            </div>
            <div class="mb-3">
                <label for="firstname" class="form-label">First Name</label>
                <input type="text" id="firstname" value="${user.firstname}" name="firstname" class="form-control" placeholder="Enter your first name" required>
            </div>
            <div class="mb-3">
                <label for="lastname" class="form-label">Last Name</label>
                <input type="text" id="lastname" value="${user.lastname}" name="lastname" class="form-control" placeholder="Enter your last name" required>
            </div>
            <div class="mb-3">
                <label for="email-signup" class="form-label">Email</label>
                <input type="email" id="email-signup" value="${user.email}" name="email" class="form-control" placeholder="Enter your email" required>
            </div>
            <div class="mb-3">
                <label for="mobile" class="form-label">Mobile</label>
                <input type="tel" id="mobile" value="${user.mobile}" name="mobile" class="form-control" placeholder="Enter your mobile number" required>
            </div>
            <a href="forgetpassword" class="btn btn-warning w-100" style="margin: 1rem 0;">Change Password</a>
            <button type="submit" class="btn btn-primary w-100">Update</button>
            <div class="d-flex justify-content-between mt-3">
                <a href="dashboard" class="text-decoration-none">Back</a>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html> --%>