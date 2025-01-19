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
                    <!-- <nav id="sidebar"
                        class="fixed top-0 left-0 z-40 h-screen w-64 transform bg-gray-800 transition-transform duration-300 ease-in-out lg:translate-x-0"
                        :class="{'translate-x-0': isOpen, '-translate-x-full': !isOpen}" @click.away="isOpen = false"
                        @resize.window="if (window.innerWidth > 1024) isOpen = false">
                        <div class="flex h-full flex-col">
                            Logo
                            <div class="flex h-16 items-center justify-center border-b border-gray-700">
                                <span class="text-xl font-bold text-white">ExpenseManager</span>
                            </div>

                            Navigation Links
                            <div class="flex-1 overflow-y-auto py-4">
                                <nav class="space-y-1 px-2">
                                    <a href="#dashboard"
                                        class="nav-link active-link flex items-center rounded-lg px-4 py-2 text-sm font-medium text-gray-300">
                                        <svg class="mr-3 h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
                                        </svg>
                                        Dashboard
                                    </a>
                                    <a href="#accounts"
                                        class="nav-link flex items-center rounded-lg px-4 py-2 text-sm font-medium text-gray-300">
                                        <svg class="mr-3 h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M3 10h18M7 15h1m4 0h1m-7 4h12a3 3 0 003-3V8a3 3 0 00-3-3H6a3 3 0 00-3 3v8a3 3 0 003 3z" />
                                        </svg>
                                        Accounts
                                    </a>
                                    <a href="#expense"
                                        class="nav-link flex items-center rounded-lg px-4 py-2 text-sm font-medium text-gray-300">
                                        <svg class="mr-3 h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M15 12H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z" />
                                        </svg>
                                        Expense
                                    </a>
                                    <a href="#income"
                                        class="nav-link flex items-center rounded-lg px-4 py-2 text-sm font-medium text-gray-300">
                                        <svg class="mr-3 h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
                                        </svg>
                                        Income
                                    </a>
                                    <a href="#vendor"
                                        class="nav-link flex items-center rounded-lg px-4 py-2 text-sm font-medium text-gray-300">
                                        <svg class="mr-3 h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
                                        </svg>
                                        Vendors
                                    </a>
                                    <a href="#category"
                                        class="nav-link flex items-center rounded-lg px-4 py-2 text-sm font-medium text-gray-300">
                                        <svg class="mr-3 h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M7 7h.01M7 3h5c.512 0 1.024.195 1.414.586l7 7a2 2 0 010 2.828l-7 7a2 2 0 01-2.828 0l-7-7A1.994 1.994 0 013 12V7a4 4 0 014-4z" />
                                        </svg>
                                        Category
                                    </a>
                                </nav>
                            </div>

                            User Profile
                            <div class="border-t border-gray-700 p-4">
                                <div class="flex items-center">
                                    <img class="h-8 w-8 rounded-full" src="https://avatar.iran.liara.run/public/35"
                                        alt="User avatar">
                                    <div class="ml-3">
                                        <p class="text-sm font-medium text-white">John Doe</p>
                                        <p class="text-xs text-gray-400">john@example.com</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </nav>
                	 --><jsp:include page="sidebar.jsp" />
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

<element id="997f9fb4-0616-4757-bb4c-8b78bd1bd1a9" data-section-id="997f9fb4-0616-4757-bb4c-8b78bd1bd1a9">

    <htmlCode>
        <section id="category_settings" class="p-6">
            <div x-data="{ isOpen: false, showAddVendor: false }" class="min-h-screen">
                <!-- Main Content -->
                <div class="lg:pl-64">
                    <!-- Header with Add Category Button -->
                    <div class="flex justify-between items-center mb-6">
                        <h1 class="text-2xl font-semibold text-gray-800">Category Settings</h1>
                        <button @click="showAddVendor = true"
                            class="bg-gray-800 text-white px-4 py-2 rounded-lg flex items-center gap-2 hover:bg-gray-700 transition-colors">
                            <svg class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
                            </svg>
                            Add New Category
                        </button>
                    </div>

                    <!-- Category Rules Table -->
                    <div class="border border-gray-200 rounded-lg bg-white">
                        <div class="p-6 border-b border-gray-200">
                            <h2 class="text-lg font-semibold text-gray-800">Category Rules</h2>
                        </div>
                        <div class="overflow-x-auto">
                            <table class="w-full">
                                <thead class="bg-gray-50">
                                    <tr>
                                        <th
                                            class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Category</th>
                                        <th
                                            class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Budget Limit</th>
                                        <th
                                            class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Alert Threshold</th>
                                        <th
                                            class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Auto-Categorize Rules</th>
                                        <th
                                            class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Actions</th>
                                    </tr>
                                </thead>
                                <tbody class="bg-white divide-y divide-gray-200">
                                	<c:forEach items="${categories}" var="c" varStatus="status">
	                                    <tr>
	                                        <td class="px-6 py-4 whitespace-nowrap">
	                                            <div class="flex items-center">
	                                                <div class="p-2 bg-blue-100 rounded-full mr-3">
	                                                    <svg class="h-4 w-4 text-blue-600" fill="none" viewBox="0 0 24 24"
	                                                        stroke="currentColor">
	                                                        <path stroke-linecap="round" stroke-linejoin="round"
	                                                            stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z" />
	                                                    </svg>
	                                                </div>
	                                                <div class="text-sm font-medium text-gray-900">${c.title}</div>
	                                            </div>
	                                        </td>
	                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">$1,500.00</td>
	                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">80%</td>
	                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">Contains:
	                                            'electric', 'water', 'gas'</td>
	                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
	                                            <div class="flex gap-3">
	                                                <a href="editcategory?categoryId=${c.categoryId}">
		                                                <button class="text-gray-400 hover:text-gray-600">
		                                                    <svg class="h-5 w-5" fill="none" viewBox="0 0 24 24"
		                                                        stroke="currentColor">
		                                                        <path stroke-linecap="round" stroke-linejoin="round"
		                                                            stroke-width="2"
		                                                            d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z" />
		                                                    </svg>
		                                                </button>
	                                                </a>
	                                                <a href="deletecategory?categoryId=${c.categoryId}">
		                                                <button class="text-gray-400 hover:text-red-600">
		                                                    <svg class="h-5 w-5" fill="none" viewBox="0 0 24 24"
		                                                        stroke="currentColor">
		                                                        <path stroke-linecap="round" stroke-linejoin="round"
		                                                            stroke-width="2"
		                                                            d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
		                                                    </svg>
		                                                </button>
	                                                </a>
	                                            </div>
	                                        </td>
	                                    </tr>
                                    </c:forEach>
                            	</tbody>
                            </table>
                        </div>
                    </div>
                    
                    <!-- Add Vendor Modal -->
                        <div x-show="showAddVendor" class="fixed inset-0 z-50 overflow-y-auto" x-cloak>
						    <div class="flex items-center justify-center min-h-screen px-4">
						        <div class="fixed inset-0 bg-black opacity-50"></div>
						        <div class="relative bg-neutral-800 rounded-lg max-w-md w-full p-6">
						            <div class="flex justify-between items-center mb-4">
						                <h3 class="text-xl font-bold text-white">Add New Category</h3>
						                <button @click="showAddVendor = false" class="text-neutral-400 hover:text-white">
						                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
						                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
						                            d="M6 18L18 6M6 6l12 12" />
						                    </svg>
						                </button>
						            </div>
						            <form class="space-y-4" action="addcategory" method="post">
						                <div>
						                    <label class="block text-sm font-medium text-neutral-300 mb-1">Category Name</label>
						                    <input type="text" name="title" x-ref="vendorName"
						                        class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-purple-500"
						                        x-model="vendorName">
						                </div>
						                <div class="flex justify-end space-x-3">
						                    <button type="button" @click="showAddVendor = false" class="px-4 py-2 text-neutral-400 hover:text-white">
						                        Cancel
						                    </button>
						                    <input type="submit" value="Add Category"
						                        class="px-4 py-2 bg-purple-600 text-white rounded-lg hover:bg-purple-700 disabled:bg-gray-600">
						                </div>
						            </form>
						        </div>
						    </div>
						</div>
					
                </div>
            </div>
        </section>
    </htmlCode>
</element>

<div id="page_complete">
    <script>
        console.log('Page complete');
    </script>
    </body>

    </html>