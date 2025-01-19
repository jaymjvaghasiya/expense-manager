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

<!-- Base Styles -->
<link rel="stylesheet" href="/css/styles.css">
<!-- Enhanced Image Handler -->
<script src="/js/demo2.js"></script>
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
			<!-- <nav id="sidebar"
				class="fixed top-0 left-0 z-40 h-screen w-64 transform bg-gray-800 transition-transform duration-300 ease-in-out lg:translate-x-0"
				:class="{'translate-x-0': isOpen, '-translate-x-full': !isOpen}"
				@click.away="isOpen = false"
				@resize.window="if (window.innerWidth > 1024) isOpen = false">
				<div class="flex h-full flex-col">
					Logo
					<div
						class="flex h-16 items-center justify-center border-b border-gray-700">
						<span class="text-xl font-bold text-white">ExpenseManager</span>
					</div>

					Navigation Links
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
							</a> <a href="#accounts"
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

					User Profile
					<div class="border-t border-gray-700 p-4">
						<div class="flex items-center">
							<img class="h-8 w-8 rounded-full"
								src="https://avatar.iran.liara.run/public/35" alt="User avatar">
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
                        </script></element>

<element id="6eed37f4-9321-4d68-bd2a-945b086fb5f4"
	data-section-id="6eed37f4-9321-4d68-bd2a-945b086fb5f4"> <htmlCode>
<div id="root" class="min-h-screen bg-neutral-900">
	<div x-data="{ isOpen: false, showAddModal: false }"
		class="min-h-screen">
		
		<!-- Main Content -->
		<div class="lg:pl-64">
			<!-- Top Navigation (Same as previous) -->
			<nav class="bg-neutral-800 border-b border-neutral-700/30">
				<!-- Navigation content same as previous -->
			</nav>

			<!-- Accounts Management Section -->
			<section id="accounts_management" class="p-6">
				<div class="flex justify-between items-center mb-6">
					<h1 class="text-2xl font-bold text-white">Accounts Management</h1>
					<button @click="showAddModal = true"
						class="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors duration-200 flex items-center">
						<svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor"
							viewBox="0 0 24 24">
                                    <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
                                </svg>
						Add New Account
					</button>
				</div>

				<!-- Accounts Grid -->
				<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
					<!-- Account Card 1 -->
					<c:forEach items="${accounts}" var="a" varStatus="status">
					    <div class="bg-neutral-800 rounded-lg border border-neutral-700/30 p-6">
					        <div class="flex justify-between items-start mb-4">
					            <div class="flex items-center">
					                <div class="p-3 bg-blue-500/10 rounded-full mr-4">
					                    <svg class="w-6 h-6 text-blue-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
					                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 6l3 1m0 0l-3 9a5.002 5.002 0 006.001 0M6 7l3 9M6 7l6-2m6 2l3-1m-3 1l-3 9a5.002 5.002 0 006.001 0M18 7l3 9m-3-9l-6-2m0-2v2m0 16V5m0 16H9m3 0h3" />
					                    </svg>
					                </div>
					                <div>
					                    <h3 class="text-lg font-semibold text-white">${a.title}</h3>
					                    <p class="text-neutral-400">${a.account_type}</p>
					                </div>
					            </div>
					            <div class="relative dropdown">
					                <button id="dropdownButton-${status.index}" class="text-neutral-400 hover:text-white focus:outline-none">
					                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
					                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 5v.01M12 12v.01M12 19v.01M12 6a1 1 0 110-2 1 1 0 010 2zm0 7a1 1 0 110-2 1 1 0 010 2zm0 7a1 1 0 110-2 1 1 0 010 2z" />
					                    </svg>
					                </button>
					                <ul id="dropdownMenu-${status.index}" class="absolute right-0 mt-2 bg-neutral-800 border border-neutral-700/30 text-white rounded-lg shadow-lg hidden">
					                    <li class="px-4 py-2 hover:bg-neutral-700 cursor-pointer" onclick="editItem(${a.id})"><a href="editaccount?accountId=${a.id}">Update</a></li>
					                    <li class="px-4 py-2 hover:bg-neutral-700 cursor-pointer" onclick="deleteItem(${a.id})"><a href="deleteaccount?accountId=${a.id}">Delete</a></li>
					                </ul>
					            </div>
					        </div>
					        <div class="mb-4">
					            <span class="text-2xl font-bold text-white">${a.amount}</span>
					        </div>
					    </div>
					</c:forEach>
				</div>

				<!-- Add Account Modal -->
				<div x-show="showAddModal"
					class="fixed inset-0 z-50 overflow-y-auto" x-cloak>
					<div class="flex items-center justify-center min-h-screen px-4">
						<div class="fixed inset-0 bg-black opacity-50"></div>
						<div
							class="relative bg-neutral-800 rounded-lg max-w-md w-full p-6">
							<div class="flex justify-between items-center mb-4">
								<h3 class="text-xl font-bold text-white">Add New Account</h3>
								<button @click="showAddModal = false"
									class="text-neutral-400 hover:text-white">
									<svg class="w-6 h-6" fill="none" stroke="currentColor"
										viewBox="0 0 24 24">
                                                <path
											stroke-linecap="round" stroke-linejoin="round"
											stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                                            </svg>
								</button>
							</div>
							<form class="space-y-4" action="addnewaccount" method="post">
								<div>
									<label class="block text-sm font-medium text-neutral-300 mb-1">Account
										Name</label> <input type="text" name="title"
										class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
								</div>
								<div>
									<label class="block text-sm font-medium text-neutral-300 mb-1">Account
										Type</label> <select name="account_type"
										class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
										<option value="Savings">Savings</option>
										<option value="Current">Current</option>
										<option value="Debit Card">Debit Card</option>
										<option value="Credit Card">Credit Card</option>
									</select>
								</div>
								<div>
									<label class="block text-sm font-medium text-neutral-300 mb-1">Initial
										Balance</label> <input type="number" name="amount"
										class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
								</div>
								<!-- <div>
									<label class="block text-sm font-medium text-neutral-300 mb-1">Description
										</label> <input type="text" name="description"
										class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
								</div> -->
								<div>
                                    <label
                                        class="block text-sm font-medium text-neutral-300 mb-1">Description</label>
                                    <textarea name="description"
                                        class="w-full px-3 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500"
                                        rows="3"></textarea>
                                </div>
								<div class="flex justify-end space-x-3">
									<button type="button" @click="showAddModal = false"
										class="px-4 py-2 text-neutral-400 hover:text-white">
										Cancel</button>
									<button type="submit"
										class="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700">
										Add Account</button>
								</div>
							</form>
						</div>
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
	<script>
	    // Function to toggle dropdown visibility for each account
	    document.addEventListener("click", function (event) {
	        const allDropdowns = document.querySelectorAll("[id^='dropdownMenu-']");
	        allDropdowns.forEach(menu => {
	            if (!menu.contains(event.target) && !menu.previousElementSibling.contains(event.target)) {
	                menu.classList.add("hidden");
	            }
	        });
	
	        if (event.target.closest("button[id^='dropdownButton-']")) {
	            const buttonId = event.target.closest("button[id^='dropdownButton-']").id;
	            const menuId = buttonId.replace("dropdownButton", "dropdownMenu");
	            const menu = document.getElementById(menuId);
	            menu.classList.toggle("hidden");
	        }
	    });
	
	    // Edit and Delete action handlers
	    function editItem(index) {
	        /* alert(`Edit item ${index} clicked`); */
	        // Add your edit logic here
	    }
	
	    function deleteItem(index) {
	        /* alert(`Delete item ${index} clicked`); */
	        // Add your delete logic here
	    }
	</script>
	</html>

	<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div>
		<a href="addaccount">Add acount + </a> | <a href="dashboard">Back</a>
	</div>
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col"></th>
				<th scope="col">#</th>
				<th scope="col">Title</th>
				<th scope="col">Amount</th>
				<th scope="col">Description</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${accounts}" var="a" varStatus="status">
				<tr>
					<td><input type="radio" name="primaryAccount" value="${a.id}"
						<c:if test="">checked</c:if> /></td>
					<th scope="row">${status.index + 1}</th>
					<td>${a.title}</td>
					<td>${a.amount}</td>
					<td>${a.description}</td>
					<td>
						<a href="editaccount?accountId=${a.id}">Update</a> | 
						<a href="deleteaccount?accountId=${a.id}">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<!-- Bootstrap JS (Optional for interactive components) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html> --%>