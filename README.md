# Full-Stack UTBK Tutoring Platform (PHP & MySQL)

This is a comprehensive, full-stack web application for an online UTBK/SNBT tutoring service (Bimbel). Built with **native PHP** and a **relational MySQL database**, this project is not just a landing page but a complete management system.

It features a secure, dual-panel architecture: a feature-rich **client-facing website** for users and a powerful **admin management dashboard** for staff.

---

## Core Architecture & Features

* **Dual-Panel System:** A complete separation between the public-facing user site and the secure admin backend, both connected to the same database.
* **Industrial-Standard Security:** Implements `password_hash()` and `password_verify()` for both user and admin authentication, protecting all credentials against database breaches.
* **Relational Database:** A robust 7-table relational schema (`users`, `admins`, `service_packages`, `transactions`, `payments`, `reports`) designed for data integrity and scalability.
* **Secure File Uploads:** A secure system for users to upload payment confirmations, which can then be validated by admins.

---

## 1. Client-Facing Features (User Panel)

* **Secure Registration:** User sign-up with password hashing.
* **Secure Login:** User authentication with `password_verify()` and a password visibility toggle.
* **Modern Landing Page:** A complete homepage with `About`, `FAQ`, and `Testimonial` sections, featuring smooth-scrolling navigation.
* **Package Selection:** A functional (hardcoded) page for browsing available tutoring packages.
* **Payment Confirmation:** A dedicated page for users to upload their proof of payment (file upload).
* **Transaction History:** A responsive, personal dashboard for users to track the status of their transactions.
* **Custom Design:** Features a custom background with gradients and motifs.

## 2. Admin Panel (Management Dashboard)

* **Secure Admin Login:** Separate, secure login system for administrators, also using `password_hash()`.
* **Dynamic Dashboard:** A modern dashboard with 4 dynamic statistic cards that calculate real-time data (e.g., total users, pending transactions, total revenue).
* **Recent Activity Table:** A quick-glance table on the dashboard showing the latest site activities.
* **Transaction Validation:** The core admin feature to **Approve** or **Reject** pending user transactions.
* **Transaction History Management:** Full CRUD (Create, Read, Update, Delete) capabilities for all transactions, including a secure delete function.
* **Admin Log Report:** An essential security feature that logs all actions taken by admins for accountability.
* **Multi-Admin Management:** Secure CRUD for managing other admin accounts (Add, View, Delete other admins).
* **Consistent UI:** A clean and consistent design language across the entire admin panel.

---

## 🛠️ Tech Stack

* **Backend:** Native PHP
* **Frontend:** HTML5, CSS3, JavaScript (ES6+)
* **Database:** MySQL (MariaDB)
* **Security:** `password_hash()` / `password_verify()` for password management.

---

## 🚀 How to Run (Setup)

**NOTE:** You must provide the `.sql` database file for this project to run.

### Prerequisites

* A local server environment (XAMPP, WAMP, MAMP, or Laragon).
* A database management tool (like phpMyAdmin).

### Installation

1.  Clone the repository:
    ```bash
    git clone [https://github.com/your-username/your-repo-name.git](https://github.com/your-username/your-repo-name.git)
    ```
2.  Move the project folder to your server's `htdocs` (for XAMPP) or `www` (for WAMP) directory.
3.  **Import the Database:**
    * Open `phpMyAdmin`.
    * Create a new database (e.g., `bimbel_utbk`).
    * Import the provided `.sql` file into this new database.
4.  **Configure Connection:**
    * Find the database configuration file (e.g., `koneksi.php`).
    * Update the database `hostname`, `username`, `password`, and `database_name` to match your local setup.
5.  **Run:**
    * Start your Apache and MySQL servers, i recomended XAMPP.
    * Open your browser and navigate to `http://localhost/your-repo-name/`.
    * To access the admin panel, navigate to `http://localhost/your-repo-name/admin/` (or the correct path).

---

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.
