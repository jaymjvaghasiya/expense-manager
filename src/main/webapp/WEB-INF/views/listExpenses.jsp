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
                <!--     <nav id="sidebar"
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


<element id="c6def221-3126-4029-bf1d-87abb5341e41" data-section-id="c6def221-3126-4029-bf1d-87abb5341e41">

    <htmlCode>
        <div id="root" class="min-h-screen bg-neutral-900">
            <div x-data="{ isOpen: false, showAddExpense: false }" class="min-h-screen">
                <!-- Main Content -->
                <div class="lg:pl-64">
                    <section id="expense_tracking" class="p-6">
                        <div class="flex justify-between items-center mb-6">
                            <h1 class="text-2xl font-bold text-white">Expense Tracking</h1>
                            <button @click="showAddExpense = true"
                                class="px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 transition-colors duration-200 flex items-center">
                                <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                        d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
                                </svg>
                                Add New Expense
                            </button>
                        </div>

                        <!-- Expense Summary Cards -->
                        <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-6">
                            <div class="bg-neutral-800 rounded-lg border border-neutral-700/30 p-6">
                                <h3 class="text-neutral-400 mb-2">Total Expenses This Month</h3>
                                <p class="text-2xl font-bold text-red-500">$3,250.00</p>
                            </div>
                            <div class="bg-neutral-800 rounded-lg border border-neutral-700/30 p-6">
                                <h3 class="text-neutral-400 mb-2">Highest Category</h3>
                                <p class="text-2xl font-bold text-yellow-500">Utilities</p>
                            </div>
                            <div class="bg-neutral-800 rounded-lg border border-neutral-700/30 p-6">
                                <h3 class="text-neutral-400 mb-2">Average Daily Expense</h3>
                                <p class="text-2xl font-bold text-blue-500">$108.33</p>
                            </div>
                        </div>

                        <!-- Expense Table -->
                        <div class="bg-neutral-800 rounded-lg border border-neutral-700/30 overflow-hidden">
                            <div class="p-4">
                                <div class="flex justify-between items-center mb-4">
                                    <h2 class="text-lg font-semibold text-white">Recent Expenses</h2>
                                    <div class="flex space-x-2">
                                        <input type="text" placeholder="Search expenses..."
                                            class="px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
                                        <select
                                            class="px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
                                            <option>All Categories</option>
                                            <option>Utilities</option>
                                            <option>Groceries</option>
                                            <option>Transportation</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="overflow-x-auto">
                                    <table class="w-full text-left">
                                        <thead class="text-xs uppercase bg-neutral-700/30 text-neutral-300">
                                            <tr>
                                                <th class="px-6 py-3">Transaction Date</th>
                                                <th class="px-6 py-3">Expense Title</th>
                                                <th class="px-6 py-3">Category</th>
                                                <th class="px-6 py-3">Sub-category</th>
                                                <th class="px-6 py-3">Amount</th>
                                                <th class="px-6 py-3">Vendor</th>
                                                <th class="px-6 py-3">Account</th>
                                                <th class="px-6 py-3">Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody class="text-neutral-300">
                                        	<c:forEach items="${expenses}" var="e" varStatus="status">
	                                            <tr class="border-b border-neutral-700/30">
	                                                <td class="px-6 py-4">${e.transactionDate}</td>
	                                                <td class="px-6 py-4">${e.title}</td>
	                                                <td class="px-6 py-4">
	                                                    <span
	                                                        class="px-2 py-1 text-xs rounded-full bg-blue-500/10 text-blue-300">${e.category.title}</span>
	                                                </td>
	                                                <td class="px-6 py-4">
	                                                    <span
	                                                        class="px-2 py-1 text-xs rounded-full bg-purple-500/10 text-purple-300">${e.subcategory.title}</span>
	                                                </td>
	                                                <td class="px-6 py-4 text-red-500">${e.amount}</td>
	                                                <td class="px-6 py-4">${e.vendor.title}</td>
	                                                <td class="px-6 py-4">${e.account.title}</td>
	                                                <td class="px-6 py-4">
	                                                    <div class="flex space-x-2">
	                                                    	<a href="editexpense?expenseId=${e.expenseId}">
		                                                        <button class="text-blue-500 hover:text-blue-400">
		                                                            <svg class="w-5 h-5" fill="none" stroke="currentColor"
		                                                                viewBox="0 0 24 24">
		                                                                <path stroke-linecap="round" stroke-linejoin="round"
		                                                                    stroke-width="2"
		                                                                    d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z" />
		                                                            </svg>
	                                                        </button>
	                                                        </a>
	                                                        <a href="deleteexpense?expenseId=${e.expenseId}">
		                                                        <button class="text-red-500 hover:text-red-400">
		                                                            <svg class="w-5 h-5" fill="none" stroke="currentColor"
		                                                                viewBox="0 0 24 24">
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
                        </div>

                        <!-- Add Expense Modal -->
                    	<div x-show="showAddExpense" class="fixed inset-0 z-50 overflow-y-auto" x-cloak>
						    <div class="flex items-center justify-center min-h-screen px-4">
						        <div class="fixed inset-0 bg-black opacity-50"></div>
						        <div class="relative bg-neutral-800 rounded-lg max-w-3xl w-full p-6">
						            <div class="flex justify-between items-center mb-4">
						                <h3 class="text-xl font-bold text-white">Add New Expense</h3>
						                <button @click="showAddExpense = false" class="text-neutral-400 hover:text-white">
						                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
						                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
						                    </svg>
						                </button>
						            </div>
						            <form class="space-y-4" action="addnewexpense" method="post">
						                <!-- Expense Title and Amount -->
						                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
						                    <div>
						                        <label class="block text-sm font-medium text-neutral-300 mb-1">Expense Title</label>
						                        <input type="text" name="title"
						                            class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
						                    </div>
						                    <div>
						                        <label class="block text-sm font-medium text-neutral-300 mb-1">Amount</label>
						                        <input type="number" name="amount"
						                            class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
						                    </div>
						                </div>
						                <!-- Category and Subcategory -->
						                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
						                    <div>
						                        <label class="block text-sm font-medium text-neutral-300 mb-1">Category</label>
						                        <select name="category_no"
						                            class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
						                            <c:forEach items="${categories}" var="c" varStatus="status">
						                                <option value="${c.categoryId}">${c.title}</option>
						                            </c:forEach>
						                        </select>
						                    </div>
						                    <div>
						                        <label class="block text-sm font-medium text-neutral-300 mb-1">Sub-category</label>
						                        <select name="subcategory_no"
						                            class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
						                            <c:forEach items="${subcategories}" var="sc" varStatus="status">
						                                <option value="${sc.subCatId}">${sc.title}</option>
						                            </c:forEach>
						                        </select>
						                    </div>
						                </div>
						                <!-- Vendor and Account -->
						                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
						                    <div>
						                        <label class="block text-sm font-medium text-neutral-300 mb-1">Vendor</label>
						                        <select name="vendor_no"
						                            class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
						                            <c:forEach items="${vendors}" var="v" varStatus="status">
						                                <option value="${v.vendorId}">${v.title}</option>
						                            </c:forEach>
						                        </select>
						                    </div>
						                    <div>
						                        <label class="block text-sm font-medium text-neutral-300 mb-1">Account</label>
						                        <select name="account_no"
						                            class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
						                            <c:forEach items="${accounts}" var="a" varStatus="status">
						                                <option value="${a.id}">${a.title}</option>
						                            </c:forEach>
						                        </select>
						                    </div>
						                </div>
						                <!-- Status and Transaction Date -->
						                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
						                    <div>
						                        <label class="block text-sm font-medium text-neutral-300 mb-1">Status</label>
						                        <select name="status"
						                            class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
						                            <option value="Done">Done</option>
						                            <option value="Not Done">Not Done</option>
						                        </select>
						                    </div>
						                    <div>
						                        <label class="block text-sm font-medium text-neutral-300 mb-1">Transaction Date</label>
						                        <input type="date" name="transactionDate"
						                            class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
						                    </div>
						                </div>
						                <!-- Description -->
						                <div>
						                    <label class="block text-sm font-medium text-neutral-300 mb-1">Description</label>
						                    <textarea name="description"
						                        class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500"
						                        rows="3"></textarea>
						                </div>
						                <!-- Buttons -->
						                <div class="flex justify-end space-x-3">
						                    <button type="button" @click="showAddExpense = false"
						                        class="px-4 py-2 text-neutral-400 hover:text-white">
						                        Cancel
						                    </button>
						                    <button type="submit" class="px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700">
						                        Add Expense
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