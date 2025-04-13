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
<!-- Chart CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.umd.min.js" integrity="sha512-CQBWl4fJHWbryGE+Pc7UAxWMUMNMWzWxF4SQo9CgkJIN1kx6djDQZjh3Y8SZ1d+6I+1zze6Z7kHXO7q3UyZAWw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

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
								<p class="text-2xl font-bold text-green-500">${totalBalance}</p>
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
								<h3 class="text-lg font-semibold text-white">Monthly Total Expenses</h3>
								<p class="text-2xl font-bold text-red-500">${monthlyTotalExpense}</p>
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
								<h3 class="text-lg font-semibold text-white">Monthly Total Income</h3>
								<p class="text-2xl font-bold text-blue-500">${monthlyTotalIncome}</p>
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
									<c:forEach items="${tra}" var="t" varStatus="status">
										<tr class="border-b border-neutral-700/30">
											<td class="px-6 py-4">${t.transactionDate}</td>
											<td class="px-6 py-4">${t.description}</td>
											<td class="px-6 py-4">${t.category}</td>
											<td class="px-6 py-4 text-red-500">${t.amount}</td>
											<td class="px-6 py-4"><span
												class="px-2 py-1 text-xs rounded-full bg-green-500/10 text-green-500">${t.status}</span>
											</td>
										</tr>
									</c:forEach>	
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
					<form action="downloadreport" method="post">
						<div class="flex space-x-4">
							<select name="days"
								class="px-4 py-2 bg-neutral-700 border border-neutral-600 rounded-lg text-white focus:outline-none focus:border-blue-500">
								<option value="30">Last 30 Days</option>
								<option value="90">Last 90 Days</option>
								<option value="6">Last 6 Months</option>
								<option value="1">Last Year</option>
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
					</form>
				</div>

				<!-- Summary Cards -->
				<div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-6">
					<div
						class="bg-neutral-800 rounded-lg border border-neutral-700/30 p-6">
						<div class="flex items-center justify-between">
							<div>
								<p class="text-neutral-400">Yearly Total Income</p>
								<h3 class="text-2xl font-bold text-green-500">${totalIncome}</h3>
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
								<p class="text-neutral-400">Yearly Total Expenses</p>
								<h3 class="text-2xl font-bold text-red-500">${totalExpense}</h3>
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
							<canvas id="expenseIncomeChart"></canvas>
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
 <script>
        // Define labels and data for income and expenses

        let incomeData = '${incomes}';
        let parseIncomeData = JSON.parse(incomeData);
        let expenseData = '${expenses}';
        let parseExpenseData = JSON.parse(expenseData);
        
        let incomeKeys = Object.keys(parseIncomeData);
        let expenseKeys = Object.keys(parseExpenseData);
        
        let incomeVals = Object.values(parseIncomeData);
        let expenseVals = Object.values(parseExpenseData);
        
        const labels = Object.keys(parseIncomeData).map(function(yearMonth) {
        	 let yearMonthStr = yearMonth.toString();
        	 
	       	 let year = yearMonthStr.substring(0, 4);
	       	 let month = yearMonthStr.substring(4, 6); // Make sure month is always 2 digits
	       	 return year + '-' + month; // Return as 'YYYY-MM'
        })
        
        // Data configuration
        const data = {
            labels: labels,
            datasets: [
                {
                    label: 'Income',
                    data: incomeVals,
                    backgroundColor: 'rgba(54, 162, 235, 0.5)', // Blue
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1,
                    color: '#F1F3F4'
                },
                {
                    label: 'Expenses',
                    data: expenseVals,
                    backgroundColor: 'rgba(255, 99, 132, 0.5)', // Red
                    borderColor: 'rgba(255, 99, 132, 1)',
                    borderWidth: 1,
                    color: '#F1F3F4'
                }
            ]
        };

        // Chart configuration
        const config = {
            type: 'bar',
            data: data,
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Expense vs Income (Monthly)',
                        color: '#F1F3F4'
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        title: {
                            display: true,
                            text: 'Amount (₹)',
                            color: '#F1F3F4'
                        },
                        ticks: {
                            font: {
                                size: 14,
                                weight: 'bold',
                                family: 'Arial', // Optional: Use a custom font family
                                color: '#FFFFFF' // Bright color for axis ticks
                            }
                        }
                    },
                    x: {
                        title: {
                            display: true,
                            text: 'Months',
                            color: '#F1F3F4'
                        },
                        ticks: {
                            font: {
                                size: 14,
                                weight: 'bold',
                                family: 'Arial', // Optional: Use a custom font family
                                color: '#FFFFFF' // Bright color for axis ticks
                            }
                        }
                    }
                }
            },
        };

        // Create the chart
        const ctx = document.getElementById('expenseIncomeChart').getContext('2d');
        new Chart(ctx, config);
    </script>

	</html>

	<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>This is Dashboard</h1>
	<a href="editprofile">Update Profile</a> <br>
	<a href="listaccounts">Your accounts</a> <br>
	<a href="addvendor">Add Vendor</a> <br>
	<a href="/">Log out</a>
</body>
</html> -->