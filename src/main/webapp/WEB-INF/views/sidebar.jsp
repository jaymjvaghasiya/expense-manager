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
<script defer
	src="https://cdnjs.cloudflare.com/ajax/libs/alpinejs/3.13.3/cdn.min.js"></script>
<script defer
	src="https://cdnjs.cloudflare.com/ajax/libs/apexcharts/3.45.1/apexcharts.min.js"></script>

<!-- Optimized Font Loading -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Montserrat:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Icons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="/css/styles.css">
<!-- Enhanced Image Handler -->
<script src="/js/demo.js"></script>

</head>

<body class="antialiased text-gray-800 min-h-screen flex flex-col">
	<!-- Skip to main content link for accessibility -->
	<a href="#main-content"
		class="sr-only focus:not-sr-only focus:absolute focus:top-0 focus:left-0 focus:z-50 focus:p-4 focus:bg-white focus:text-black">
		Skip to main content </a>

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
<element id="c1fb1615-f645-47ce-8775-0db3c4ba1344"
	data-section-id="c1fb1615-f645-47ce-8775-0db3c4ba1344"> <htmlCode>
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
#dropdownMenu {
    display: none;
    opacity: 0;
    transform: scale(0.95);
    transition: opacity 0.3s ease, transform 0.3s ease;
}

#dropdownMenu.show {
    display: block;
    opacity: 1;
    transform: scale(1);
}


</style>
</head>

<body class="bg-[#E5E7EB]">
	<!-- Sidebar -->
	<nav id="sidebar"
		class="fixed top-0 left-0 z-40 h-screen w-64 transform bg-gray-800 transition-transform duration-300 ease-in-out lg:translate-x-0"
		:class="{'translate-x-0': isOpen, '-translate-x-full': !isOpen}"
		@click.away="isOpen = false"
		@resize.window="if (window.innerWidth > 1024) isOpen = false">
		<div class="flex h-full flex-col">
			<!-- Logo -->
			<div
				class="flex h-16 items-center justify-center border-b border-gray-700">
				<span class="text-xl font-bold text-white">ExpenseManager</span>
			</div>

			<!-- User Profile -->
			<div class="relative border-t border-gray-700 p-4">
			    <!-- User Profile Toggle -->
			    <button id="userProfileButton" class="flex items-center w-full focus:outline-none">
			        <img class="h-8 w-8 rounded-full" src="${sessionScope.user.profile_path}" alt="User avatar">
			        <div class="ml-3 text-left">
			            <p class="text-sm font-medium text-white">${sessionScope.user.firstname} ${sessionScope.user.lastname}</p>
			            <p class="text-xs text-gray-400">${sessionScope.user.email}</p>
			        </div>
			        <svg class="ml-auto h-5 w-5 text-gray-400" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
			            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
			        </svg>
			    </button>
			
			    <!-- Dropdown Menu -->
				<div id="dropdownMenu" 
				     class="hidden absolute right-4 top-full mt-2 w-48 bg-white rounded-md shadow-lg z-10">
				    <ul class="py-1">
				        <li>
				            <a href="editprofile" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">View Profile</a>
				        </li>
				        <li>
				            <a href="/" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Logout</a>
				        </li>
				    </ul>
				</div>

			</div>


			<!-- Navigation Links -->
			<div class="flex-1 overflow-y-auto py-4">
				<nav class="space-y-1 px-2">
					<a href="dashboard"
						class="nav-link active-link flex items-center rounded-lg px-4 py-2 text-sm font-medium text-gray-300">
						<svg class="mr-3 h-6 w-6" fill="none" viewBox="0 0 24 24"
							stroke="currentColor">
                                            <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
                                        </svg> Dashboard
					</a> <a href="listaccounts"
						class="nav-link flex items-center rounded-lg px-4 py-2 text-sm font-medium text-gray-300">
						<svg class="mr-3 h-6 w-6" fill="none" viewBox="0 0 24 24"
							stroke="currentColor">
                                            <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M3 10h18M7 15h1m4 0h1m-7 4h12a3 3 0 003-3V8a3 3 0 00-3-3H6a3 3 0 00-3 3v8a3 3 0 003 3z" />
                                        </svg> Accounts
					</a> <a href="#expense"
						class="nav-link flex items-center rounded-lg px-4 py-2 text-sm font-medium text-gray-300">
						<svg class="mr-3 h-6 w-6" fill="none" viewBox="0 0 24 24"
							stroke="currentColor">
                                            <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M15 12H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z" />
                                        </svg> Expense
					</a> <a href="#income"
						class="nav-link flex items-center rounded-lg px-4 py-2 text-sm font-medium text-gray-300">
						<svg class="mr-3 h-6 w-6" fill="none" viewBox="0 0 24 24"
							stroke="currentColor">
                                            <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
                                        </svg> Income
					</a> <a href="#vendor"
						class="nav-link flex items-center rounded-lg px-4 py-2 text-sm font-medium text-gray-300">
						<svg class="mr-3 h-6 w-6" fill="none" viewBox="0 0 24 24"
							stroke="currentColor">
                                            <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
                                        </svg> Vendors
					</a> <a href="#category"
						class="nav-link flex items-center rounded-lg px-4 py-2 text-sm font-medium text-gray-300">
						<svg class="mr-3 h-6 w-6" fill="none" viewBox="0 0 24 24"
							stroke="currentColor">
                                            <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M7 7h.01M7 3h5c.512 0 1.024.195 1.414.586l7 7a2 2 0 010 2.828l-7 7a2 2 0 01-2.828 0l-7-7A1.994 1.994 0 013 12V7a4 4 0 014-4z" />
                                        </svg> Category
					</a>
				</nav>
			</div>
		</div>
	</nav>


	<main class="flex-1 overflow-y-auto bg-gray-100">
		<MountPoint> <script>
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
                            const userProfileButton = document.getElementById('userProfileButton');
                            const dropdownMenu = document.getElementById('dropdownMenu');

                            // Toggle dropdown visibility
                            userProfileButton.addEventListener('click', () => {
                                dropdownMenu.classList.toggle('hidden');
                                dropdownMenu.classList.toggle('show');
                            });

                            // Close dropdown when clicking outside
                            document.addEventListener('click', (event) => {
                                if (!userProfileButton.contains(event.target) && !dropdownMenu.contains(event.target)) {
                                    dropdownMenu.classList.add('hidden');
                                    dropdownMenu.classList.remove('show');
                                }
                            });

                        </script></element>

</body>
</html>
