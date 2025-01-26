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
	<div id="root" class="flex h-screen overflow-hidden">
		<div x-data="{ isOpen: false }" class="relative">
			<!-- Mobile Menu Button -->
			<button type="button"
				class="lg:hidden fixed top-4 left-4 z-50 rounded-lg bg-gray-800 p-2 text-gray-400 hover:bg-gray-700 hover:text-white focus:outline-none focus:ring-2 focus:ring-white"
				@click="isOpen = !isOpen" aria-controls="mobile-menu"
				:aria-expanded="isOpen">
				<span x-show="!isOpen" x-cloak> <svg class="h-6 w-6"
						fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round"
							stroke-linejoin="round" stroke-width="2"
							d="M4 6h16M4 12h16M4 18h16" />
                            </svg>
				</span> <span x-show="isOpen" x-cloak> <svg class="h-6 w-6"
						fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round"
							stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                            </svg>
				</span>
			</button>

			<!-- Sidebar -->
			<%-- <nav id="sidebar"
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

					<!-- Navigation Links -->
					<div class="flex-1 overflow-y-auto py-4">
						<nav class="space-y-1 px-2">
							<a href="#dashboard"
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

					<!-- User Profile -->
					<div class="border-t border-gray-700 p-4">
					<a href="editprofile">
						<div class="flex items-center">
							<img class="h-8 w-8 rounded-full"
								src="${user.profile_path}" alt="User avatar">
							<div class="ml-3">
								<p class="text-sm font-medium text-white">${user.firstname}  ${user.lastname}</p>
								<p class="text-xs text-gray-400">${user.email}</p>
							</div>
						</div>
					</a>
					</div>
				</div>
			</nav>
			 --%>
			 <jsp:include page="sidebar.jsp" />
		</div>

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
<element id="80a407f8-866d-4dff-a77f-105554b6b16f"
	data-section-id="80a407f8-866d-4dff-a77f-105554b6b16f"> <htmlCode>
<div id="root" class="min-h-screen bg-neutral-900">
	<div x-data="{ isOpen: false }" class="min-h-screen">
		
		<!-- Main Content -->
		<div class="lg:pl-64">
			<!-- Top Navigation -->
			<nav class="bg-neutral-800 border-b border-neutral-700/30">
				<div class="px-4 mx-auto">
					<div class="flex justify-between h-16">
						<div class="flex items-center lg:hidden">
							<button @click="isOpen = !isOpen"
								class="text-neutral-400 hover:text-white focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white">
								<svg class="w-6 h-6" fill="none" stroke="currentColor"
									viewBox="0 0 24 24">
                                            <path stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2"
										d="M4 6h16M4 12h16M4 18h16"></path>
                                        </svg>
							</button>
						</div>
						<div class="flex items-center justify-end flex-1">
							<button class="p-1 text-neutral-400 hover:text-white">
								<svg class="w-6 h-6" fill="none" stroke="currentColor"
									viewBox="0 0 24 24">
                                            <path stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2"
										d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9">
                                            </path>
                                        </svg>
							</button>
							<div class="ml-4 relative">
								<div class="flex items-center">
									<button id="userProfileButton"
										class="flex text-sm rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-neutral-800 focus:ring-white">
										<img class="h-8 w-8 rounded-full"
											src="${user.profile_path}" alt="User avatar">
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
							</div>
						</div>
					</div>
				</div>
			</nav>

			<!-- Dashboard Content -->
			<section id="dashboard_overview" class="p-6">
				<div class="grid grid-cols-1 gap-6 mb-6 lg:grid-cols-3">
					<div
						class="p-6 bg-neutral-800 rounded-lg border border-neutral-700/30">
						<div class="flex items-center justify-between">
							<div>
								<h3 class="text-lg font-semibold text-white">Total Balance</h3>
								<p class="text-2xl font-bold text-green-500">$24,500.00</p>
							</div>
							<div class="p-3 bg-green-500/10 rounded-full">
								<svg class="w-6 h-6 text-green-500" fill="none"
									stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2"
										d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z">
                                            </path>
                                        </svg>
							</div>
						</div>
					</div>

					<div
						class="p-6 bg-neutral-800 rounded-lg border border-neutral-700/30">
						<div class="flex items-center justify-between">
							<div>
								<h3 class="text-lg font-semibold text-white">Total Expenses</h3>
								<p class="text-2xl font-bold text-red-500">$12,750.00</p>
							</div>
							<div class="p-3 bg-red-500/10 rounded-full">
								<svg class="w-6 h-6 text-red-500" fill="none"
									stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2"
										d="M15 12H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                        </svg>
							</div>
						</div>
					</div>

					<div
						class="p-6 bg-neutral-800 rounded-lg border border-neutral-700/30">
						<div class="flex items-center justify-between">
							<div>
								<h3 class="text-lg font-semibold text-white">Total Income</h3>
								<p class="text-2xl font-bold text-blue-500">$37,250.00</p>
							</div>
							<div class="p-3 bg-blue-500/10 rounded-full">
								<svg class="w-6 h-6 text-blue-500" fill="none"
									stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2"
										d="M12 6v6m0 0v6m0-6h6m-6 0H6"></path>
                                        </svg>
							</div>
						</div>
					</div>
				</div>

				<!-- Recent Transactions -->
				<div class="bg-neutral-800 rounded-lg border border-neutral-700/30">
					<div class="p-6">
						<h2 class="text-xl font-bold text-white mb-4">Recent
							Transactions</h2>
						<div class="overflow-x-auto">
							<table class="w-full text-sm text-left text-neutral-300">
								<thead class="text-xs uppercase bg-neutral-700/30">
									<tr>
										<th class="px-6 py-3">Date</th>
										<th class="px-6 py-3">Description</th>
										<th class="px-6 py-3">Category</th>
										<th class="px-6 py-3">Amount</th>
										<th class="px-6 py-3">Status</th>
									</tr>
								</thead>
								<tbody>
									<tr class="border-b border-neutral-700/30">
										<td class="px-6 py-4">2024-01-15</td>
										<td class="px-6 py-4">Office Supplies</td>
										<td class="px-6 py-4">Expenses</td>
										<td class="px-6 py-4 text-red-500">-$250.00</td>
										<td class="px-6 py-4"><span
											class="px-2 py-1 text-xs rounded-full bg-green-500/10 text-green-500">Completed</span>
										</td>
									</tr>
									<tr class="border-b border-neutral-700/30">
										<td class="px-6 py-4">2024-01-14</td>
										<td class="px-6 py-4">Client Payment</td>
										<td class="px-6 py-4">Income</td>
										<td class="px-6 py-4 text-green-500">+$1,500.00</td>
										<td class="px-6 py-4"><span
											class="px-2 py-1 text-xs rounded-full bg-green-500/10 text-green-500">Completed</span>
										</td>
									</tr>
									<tr class="border-b border-neutral-700/30">
										<td class="px-6 py-4">2024-01-13</td>
										<td class="px-6 py-4">Server Costs</td>
										<td class="px-6 py-4">Expenses</td>
										<td class="px-6 py-4 text-red-500">-$350.00</td>
										<td class="px-6 py-4"><span
											class="px-2 py-1 text-xs rounded-full bg-yellow-500/10 text-yellow-500">Pending</span>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</div>
</htmlCode> </element>

<element id="5a71c9dc-7d32-43a2-b639-0ddea10d4bc3"
	data-section-id="5a71c9dc-7d32-43a2-b639-0ddea10d4bc3"> <htmlCode>
<div id="root" class="min-h-screen bg-neutral-900">
	<div x-data="{ isOpen: false }" class="min-h-screen">
		<!-- Main Content -->
		<div class="lg:pl-64">
			<section id="reports_analytics" class="p-6">
				<div class="flex justify-between items-center mb-6">
					<h1 class="text-2xl font-bold text-white">Reports & Analytics</h1>
					<div class="flex space-x-4">
						<select
							class="px-4 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
							<option>Last 30 Days</option>
							<option>Last 90 Days</option>
							<option>Last 6 Months</option>
							<option>Last Year</option>
						</select>
						<button
							class="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors duration-200 flex items-center">
							<svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor"
								viewBox="0 0 24 24">
                                        <path stroke-linecap="round"
									stroke-linejoin="round" stroke-width="2"
									d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4" />
                                    </svg>
							Export Report
						</button>
					</div>
				</div>

				<!-- Summary Cards -->
				<div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-6">
					<div
						class="bg-neutral-800 rounded-lg border border-neutral-700/30 p-6">
						<div class="flex items-center justify-between">
							<div>
								<p class="text-neutral-400">Total Income</p>
								<h3 class="text-2xl font-bold text-green-500">$45,750.00</h3>
								<p class="text-sm text-green-400">+12.5% vs last month</p>
							</div>
							<div class="p-3 bg-green-500/10 rounded-full">
								<svg class="w-6 h-6 text-green-500" fill="none"
									stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2"
										d="M7 11l5-5m0 0l5 5m-5-5v12" />
                                        </svg>
							</div>
						</div>
					</div>

					<div
						class="bg-neutral-800 rounded-lg border border-neutral-700/30 p-6">
						<div class="flex items-center justify-between">
							<div>
								<p class="text-neutral-400">Total Expenses</p>
								<h3 class="text-2xl font-bold text-red-500">$32,450.00</h3>
								<p class="text-sm text-red-400">+8.2% vs last month</p>
							</div>
							<div class="p-3 bg-red-500/10 rounded-full">
								<svg class="w-6 h-6 text-red-500" fill="none"
									stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2"
										d="M17 13l-5 5m0 0l-5-5m5 5V6" />
                                        </svg>
							</div>
						</div>
					</div>

					<div
						class="bg-neutral-800 rounded-lg border border-neutral-700/30 p-6">
						<div class="flex items-center justify-between">
							<div>
								<p class="text-neutral-400">Net Savings</p>
								<h3 class="text-2xl font-bold text-blue-500">$13,300.00</h3>
								<p class="text-sm text-blue-400">+5.8% vs last month</p>
							</div>
							<div class="p-3 bg-blue-500/10 rounded-full">
								<svg class="w-6 h-6 text-blue-500" fill="none"
									stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2"
										d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                        </svg>
							</div>
						</div>
					</div>

					<div
						class="bg-neutral-800 rounded-lg border border-neutral-700/30 p-6">
						<div class="flex items-center justify-between">
							<div>
								<p class="text-neutral-400">Budget Status</p>
								<h3 class="text-2xl font-bold text-purple-500">75%</h3>
								<p class="text-sm text-purple-400">Of monthly budget used</p>
							</div>
							<div class="p-3 bg-purple-500/10 rounded-full">
								<svg class="w-6 h-6 text-purple-500" fill="none"
									stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2"
										d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z" />
                                        </svg>
							</div>
						</div>
					</div>
				</div>

				<!-- Charts Section -->
				<div class="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-6">
					<div
						class="bg-neutral-800 rounded-lg border border-neutral-700/30 p-6">
						<h3 class="text-lg font-semibold text-white mb-4">Income vs
							Expenses</h3>
						<div
							class="h-80 bg-neutral-700/30 rounded-lg flex items-center justify-center">
							<p class="text-neutral-400">Chart Placeholder</p>
						</div>
					</div>

					<div
						class="bg-neutral-800 rounded-lg border border-neutral-700/30 p-6">
						<h3 class="text-lg font-semibold text-white mb-4">Expense
							Categories</h3>
						<div
							class="h-80 bg-neutral-700/30 rounded-lg flex items-center justify-center">
							<p class="text-neutral-400">Chart Placeholder</p>
						</div>
					</div>
				</div>

				<!-- Recent Transactions -->
				<div
					class="bg-neutral-800 rounded-lg border border-neutral-700/30 p-6">
					<h3 class="text-lg font-semibold text-white mb-4">Transaction
						Analysis</h3>
					<div class="overflow-x-auto">
						<table class="w-full">
							<thead
								class="text-xs uppercase bg-neutral-700/30 text-neutral-300">
								<tr>
									<th class="px-6 py-3 text-left">Category</th>
									<th class="px-6 py-3 text-left">Total Transactions</th>
									<th class="px-6 py-3 text-left">Total Amount</th>
									<th class="px-6 py-3 text-left">Average</th>
									<th class="px-6 py-3 text-left">Change</th>
								</tr>
							</thead>
							<tbody class="text-neutral-300">
								<tr class="border-b border-neutral-700/30">
									<td class="px-6 py-4">Utilities</td>
									<td class="px-6 py-4">45</td>
									<td class="px-6 py-4 text-red-500">$2,450.00</td>
									<td class="px-6 py-4">$54.44</td>
									<td class="px-6 py-4"><span class="text-green-500">↑
											2.4%</span></td>
								</tr>
								<tr class="border-b border-neutral-700/30">
									<td class="px-6 py-4">Groceries</td>
									<td class="px-6 py-4">68</td>
									<td class="px-6 py-4 text-red-500">$3,200.00</td>
									<td class="px-6 py-4">$47.06</td>
									<td class="px-6 py-4"><span class="text-red-500">↓
											1.2%</span></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</section>
		</div>
	</div>
</div>
</htmlCode> </element>

<div id="page_complete">
	<script>
        console.log('Page complete');
    </script>
	</body>

	</html>