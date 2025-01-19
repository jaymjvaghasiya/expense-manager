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
      <link rel="preload" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Montserrat:wght@400;500;600;700&display=swap" as="style">
      
      <!-- {headerScripts} -->

      <!-- Core CSS -->
      <script src="https://cdn.tailwindcss.com"></script>
      <script src="/js/loginScript2.js"></script>
      
      <!-- Utilities and Components -->
      <script defer src="https://cdnjs.cloudflare.com/ajax/libs/alpinejs/3.13.3/cdn.min.js"></script>
      <script defer src="https://cdnjs.cloudflare.com/ajax/libs/apexcharts/3.45.1/apexcharts.min.js"></script>
      
      <!-- Optimized Font Loading -->
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">
      
      <!-- Icons -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" 
            integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />

      <!-- Base Styles -->
     <link rel="stylesheet" href="/css/loginStyle.css">
      <!-- Enhanced Image Handler -->
      <script src="/js/loginScript.js"></script>
      
   </head>
   <body class="antialiased text-gray-800 min-h-screen flex flex-col">
      <!-- Skip to main content link for accessibility -->

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
<element id="dbc161b4-685e-42e6-93a2-590919a480de" data-section-id="dbc161b4-685e-42e6-93a2-590919a480de">

<htmlCode>
<div id="root">
    <section id="registration" class="py-20 bg-neutral-100">
        <div class="max-w-3xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="bg-white rounded-lg shadow-xl p-8 animate__animated animate__fadeIn">
                <h2 class="text-3xl font-bold text-center text-neutral-900 mb-8">Create an Account</h2>
                
                <form class="space-y-6" action="createuser" method="post" enctype="multipart/form-data">
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div>
                            <label class="block text-sm font-medium text-neutral-700 mb-2" for="first-name">First Name</label>
                            <input type="text" name="firstname" id="first-name" required class="w-full px-4 py-2 border border-neutral-300 rounded-md focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-neutral-700 mb-2" for="last-name">Last Name</label>
                            <input type="text" name="lastname" id="last-name" required class="w-full px-4 py-2 border border-neutral-300 rounded-md focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
                        </div>
                    </div>
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div>
                            <label class="block text-sm font-medium text-neutral-700 mb-2" for="reg-email">Email Address</label>
                            <input type="email" name="email" id="reg-email" required class="w-full px-4 py-2 border border-neutral-300 rounded-md focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-neutral-700 mb-2" for="reg-mobile">Mobile</label>
                            <input type="text" name="mobile" id="reg-mobile" required class="w-full px-4 py-2 border border-neutral-300 rounded-md focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
                        </div>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-neutral-700 mb-2" for="reg-password">Password</label>
                        <div class="relative">
                            <input type="password" name="password" id="reg-password" required class="w-full px-4 py-2 border border-neutral-300 rounded-md focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
                            <button type="button" id="reg-toggle-password" class="absolute right-3 top-1/2 transform -translate-y-1/2 text-neutral-500">
                                <svg class="h-5 w-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                                </svg>
                            </button>
                        </div>
                        <div class="mt-2">
                            <div class="text-xs text-neutral-500">Password must contain:</div>
                            <ul class="text-xs text-neutral-500 list-disc list-inside mt-1">
                                <li>At least 8 characters</li>
                                <li>One uppercase letter</li>
                                <li>One number</li>
                                <li>One special character</li>
                            </ul>
                        </div>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-neutral-700 mb-2" for="confirm-password">Confirm Password</label>
                        <input type="password" name="cnf_password" id="confirm-password" required class="w-full px-4 py-2 border border-neutral-300 rounded-md focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
                    </div>
                    <div class="space-y-2">
                        <label class="block text-sm font-medium text-neutral-700" for="user-image">Upload Image</label>
                        <div class="relative border border-neutral-300 rounded-md bg-neutral-50 p-4 hover:border-blue-500 focus-within:ring-2 focus-within:ring-blue-500">
                            <input type="file" name="profilePic" id="user-image" accept="image/*" required 
                                   class="absolute inset-0 w-full h-full opacity-0 cursor-pointer z-10">
                            <div class="flex items-center space-x-3">
                                <svg class="h-8 w-8 text-neutral-400" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 12c2.209 0 4-1.791 4-4S14.209 4 12 4 8 5.791 8 8s1.791 4 4 4z"></path>
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.477 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path>
                                </svg>
                                <span id="upload-instruction" class="text-sm text-neutral-500">
                                    Drag and drop your image here, or <span class="text-blue-600 font-medium hover:text-blue-500">browse</span>.
                                </span>
                            </div>
                        </div>
                        <p id="file-name" class="text-xs text-neutral-500 mt-2 hidden">Selected file: <span class="font-medium"></span></p>
                        <p class="text-xs text-neutral-500">Supported formats: JPEG, PNG, GIF (Max size: 2MB)</p>
                    </div>
                    
                    <div class="flex items-start">
                        <div class="flex items-center h-5">
                            <input id="terms" type="checkbox" required class="h-4 w-4 text-blue-600 border-neutral-300 rounded focus:ring-blue-500">
                        </div>
                        <div class="ml-3">
                            <label for="terms" class="text-sm text-neutral-600">
                                I agree to the <a href="#" class="text-blue-600 hover:text-blue-500">Terms of Service</a> and <a href="#" class="text-blue-600 hover:text-blue-500">Privacy Policy</a>
                            </label>
                        </div>
                    </div>
                    <input value="Create Account" type="submit" class="w-full bg-blue-600 text-white py-2 px-4 rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 transition duration-150">
                        
                </form>
                
                <div class="mt-6 text-center text-sm">
                    <p class="text-neutral-600">
                        Already have an account? 
                        <a href="/" class="text-blue-600 hover:text-blue-500 font-medium">Sign in</a>
                    </p>
                </div>
            </div>
        </div>
    </section>

    <script>
        document.getElementById('reg-toggle-password').addEventListener('click', function() {
            const passwordInput = document.getElementById('reg-password');
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
            
            // Toggle icon
            this.innerHTML = type === 'password' ? 
                '<svg class="h-5 w-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" /><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" /></svg>' :
                '<svg class="h-5 w-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13.875 18.825A10.05 10.05 0 0112 19c-4.478 0-8.268-2.943-9.543-7a9.97 9.97 0 011.563-3.029m5.858.908a3 3 0 114.243 4.243M9.878 9.878l4.242 4.242M9.88 9.88l-3.29-3.29m7.532 7.532l3.29 3.29M3 3l3.59 3.59m0 0A9.953 9.953 0 0112 5c4.478 0 8.268 2.943 9.543 7a10.025 10.025 0 01-4.132 5.411m0 0L21 21" /></svg>';
        });
        const fileInput = document.getElementById('user-image');
        const fileNameDisplay = document.getElementById('file-name');
        const fileNameSpan = fileNameDisplay.querySelector('span');

        fileInput.addEventListener('change', () => {
            const file = fileInput.files[0]; // Get the uploaded file
            if (file) {
                fileNameSpan.textContent = file.name; // Display the file name
                fileNameDisplay.classList.remove('hidden'); // Show the file name section
            } else {
                fileNameSpan.textContent = ''; // Clear the file name
                fileNameDisplay.classList.add('hidden'); // Hide the file name section
            }
        });
    </script>
</div>
</htmlCode></element>

<element id="02ad3da0-3f2a-4102-b9e9-ab7d2c2c5134" data-section-id="02ad3da0-3f2a-4102-b9e9-ab7d2c2c5134">

<htmlCode>
<div id="root">
    <footer id="footer" class="bg-neutral-900 text-white">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
                <div class="space-y-4">
                    <h3 class="text-lg font-bold mb-4">SecureLogin</h3>
                    <p class="text-neutral-400 text-sm">Providing secure authentication solutions for modern applications.</p>
                    <div class="flex space-x-4">
                        <a href="#" class="text-neutral-400 hover:text-white">
                            <span class="sr-only">Facebook</span>
                            <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
                                <path fill-rule="evenodd" d="M22 12c0-5.523-4.477-10-10-10S2 6.477 2 12c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V12h2.54V9.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.988C18.343 21.128 22 16.991 22 12z" clip-rule="evenodd"/>
                            </svg>
                        </a>
                        <a href="#" class="text-neutral-400 hover:text-white">
                            <span class="sr-only">Twitter</span>
                            <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M8.29 20.251c7.547 0 11.675-6.253 11.675-11.675 0-.178 0-.355-.012-.53A8.348 8.348 0 0022 5.92a8.19 8.19 0 01-2.357.646 4.118 4.118 0 001.804-2.27 8.224 8.224 0 01-2.605.996 4.107 4.107 0 00-6.993 3.743 11.65 11.65 0 01-8.457-4.287 4.106 4.106 0 001.27 5.477A4.073 4.073 0 01.8 7.713v.052a4.105 4.105 0 003.292 4.022 4.095 4.095 0 01-1.853.07 4.108 4.108 0 003.834 2.85A8.233 8.233 0 010 16.407a11.616 11.616 0 006.29 1.84"/>
                            </svg>
                        </a>
                        <a href="#" class="text-neutral-400 hover:text-white">
                            <span class="sr-only">GitHub</span>
                            <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
                                <path fill-rule="evenodd" d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z" clip-rule="evenodd"/>
                            </svg>
                        </a>
                    </div>
                </div>

                <div>
                    <h3 class="text-sm font-semibold uppercase tracking-wider mb-4">Quick Links</h3>
                    <ul class="space-y-3">
                        <li><a href="#loginform" class="text-neutral-400 hover:text-white text-sm">Login</a></li>
                        <li><a href="#registration" class="text-neutral-400 hover:text-white text-sm">Register</a></li>
                        <li><a href="#features" class="text-neutral-400 hover:text-white text-sm">Features</a></li>
                        <li><a href="#security" class="text-neutral-400 hover:text-white text-sm">Security</a></li>
                    </ul>
                </div>

                <div>
                    <h3 class="text-sm font-semibold uppercase tracking-wider mb-4">Support</h3>
                    <ul class="space-y-3">
                        <li><a href="#faq" class="text-neutral-400 hover:text-white text-sm">FAQ</a></li>
                        <li><a href="#support" class="text-neutral-400 hover:text-white text-sm">Help Center</a></li>
                        <li><a href="#passwordrecovery" class="text-neutral-400 hover:text-white text-sm">Password Recovery</a></li>
                        <li><a href="#" class="text-neutral-400 hover:text-white text-sm">Contact Us</a></li>
                    </ul>
                </div>

                <div>
                    <h3 class="text-sm font-semibold uppercase tracking-wider mb-4">Legal</h3>
                    <ul class="space-y-3">
                        <li><a href="#" class="text-neutral-400 hover:text-white text-sm">Privacy Policy</a></li>
                        <li><a href="#" class="text-neutral-400 hover:text-white text-sm">Terms of Service</a></li>
                        <li><a href="#" class="text-neutral-400 hover:text-white text-sm">Cookie Policy</a></li>
                        <li><a href="#" class="text-neutral-400 hover:text-white text-sm">GDPR</a></li>
                    </ul>
                </div>
            </div>

            <div class="border-t border-neutral-800 mt-12 pt-8">
                <div class="flex flex-col md:flex-row justify-between items-center">
                    <p class="text-neutral-400 text-sm">© 2024 SecureLogin. All rights reserved.</p>
                    <div class="mt-4 md:mt-0 flex space-x-6">
                        <a href="#" class="text-neutral-400 hover:text-white text-sm">Status</a>
                        <a href="#" class="text-neutral-400 hover:text-white text-sm">API</a>
                        <a href="#" class="text-neutral-400 hover:text-white text-sm">Documentation</a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>
</htmlCode></element>
            <div id="page_complete">
            <script>
                console.log('Page complete');
            </script>
            </body>
            </html>
          

<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - Expense Manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-primary d-flex justify-content-center align-items-center vh-100">
    <div class="container bg-white rounded shadow p-4" style="max-width: 400px;">
        <h2 class="text-center mb-4">Sign Up</h2>
        <form action="createuser" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="firstname" class="form-label">First Name</label>
                <input type="text" id="firstname" name="firstname" class="form-control" placeholder="Enter your first name" required>
            </div>
            <div class="mb-3">
                <label for="lastname" class="form-label">Last Name</label>
                <input type="text" id="lastname" name="lastname" class="form-control" placeholder="Enter your last name" required>
            </div>
            <div class="mb-3">
                <label for="email-signup" class="form-label">Email</label>
                <input type="email" id="email-signup" name="email" class="form-control" placeholder="Enter your email" required>
            </div>
            <div class="mb-3">
                <label for="mobile" class="form-label">Mobile</label>
                <input type="tel" id="mobile" name="mobile" class="form-control" placeholder="Enter your mobile number" required>
            </div>
            <div class="mb-3">
                <label for="password-signup" class="form-label">Password</label>
                <input type="password" id="password-signup" name="password" class="form-control" placeholder="Create a password" required>
            </div>
            <div class="mb-3">
                <label for="password-signup" class="form-label">Confirm Password</label>
                <input type="password" id="password-signup" name="cnf_password" class="form-control" placeholder="Confirm password" required>
            </div>
            <div class="mb-3">
                <label for="user-image" class="form-label">Upload Image</label>
                <input type="file" id="user-image" name="profilePic" class="form-control" accept="image/*">
            </div>
            <button type="submit" class="btn btn-primary w-100">Sign Up</button>
            <div class="d-flex justify-content-between mt-3">
                <a href="/" class="text-decoration-none">Already have an account? Log in</a>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html> -->