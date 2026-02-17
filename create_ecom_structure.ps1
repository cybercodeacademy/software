# E-Commerce Seller Management System - Folder Structure Creator (PowerShell)
# This script creates a comprehensive folder structure for managing an e-commerce business

param(
    [string]$BaseDir = "$PWD\EcomManagementSystem",
    [switch]$CreateReadme = $true
)

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "E-Commerce Seller Management System" -ForegroundColor Cyan
Write-Host "Folder Structure Creator (PowerShell)" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Creating folder structure at: $BaseDir" -ForegroundColor Yellow
Write-Host ""

# Create main directory
if (-not (Test-Path $BaseDir)) {
    New-Item -Path $BaseDir -ItemType Directory -Force | Out-Null
}

# Define folder structure
$folderStructure = @{
    "Products" = @(
        "Catalog",
        "Images\Main",
        "Images\Thumbnails",
        "Images\Gallery",
        "Descriptions",
        "Specifications",
        "PriceSheets",
        "Inventory",
        "Categories"
    )
    "Orders" = @(
        "Pending",
        "Processing",
        "Shipped",
        "Delivered",
        "Cancelled",
        "Returns",
        "Invoices",
        "PackingSlips"
    )
    "Customers" = @(
        "Database",
        "Reviews",
        "Feedback",
        "Communications",
        "SupportTickets",
        "Loyalty"
    )
    "Marketing" = @(
        "Campaigns",
        "Promotions",
        "Coupons",
        "EmailTemplates",
        "SocialMedia",
        "Analytics",
        "Advertisements",
        "ContentCreation"
    )
    "Inventory" = @(
        "StockLevels",
        "Warehouse",
        "Suppliers",
        "PurchaseOrders",
        "Restocking",
        "Audits"
    )
    "Financial" = @(
        "Revenue",
        "Expenses",
        "Taxes",
        "PaymentRecords",
        "Refunds",
        "Reports",
        "Budgets",
        "BankStatements"
    )
    "Shipping" = @(
        "Carriers",
        "TrackingInfo",
        "Labels",
        "Rates",
        "International",
        "ReturnLabels"
    )
    "Reports" = @(
        "Sales",
        "Performance",
        "CustomerInsights",
        "MarketTrends",
        "CompetitorAnalysis",
        "Monthly",
        "Quarterly",
        "Annual"
    )
    "Legal" = @(
        "Contracts",
        "TermsAndConditions",
        "PrivacyPolicy",
        "Licenses",
        "Compliance",
        "Disputes"
    )
    "Platforms" = @(
        "Amazon",
        "eBay",
        "Shopify",
        "Etsy",
        "WooCommerce",
        "OwnWebsite"
    )
    "Content" = @(
        "ProductPhotos",
        "Videos",
        "Manuals",
        "Brochures",
        "Catalogs",
        "BlogPosts"
    )
    "TeamManagement" = @(
        "Employees",
        "Schedules",
        "Training",
        "Performance",
        "Payroll"
    )
    "Documentation" = @(
        "SOPs",
        "Processes",
        "Guidelines",
        "Templates",
        "UserManuals"
    )
    "Backups" = @(
        "Daily",
        "Weekly",
        "Monthly"
    )
    "Archives" = @(
        "OldProducts",
        "CompletedOrders",
        "PastCampaigns"
    )
    "Tools" = @(
        "Scripts",
        "Templates",
        "Calculators",
        "Utilities"
    )
}

# Create folders
$totalFolders = 0
foreach ($category in $folderStructure.Keys) {
    Write-Host "Creating $category folders..." -ForegroundColor Green
    foreach ($subfolder in $folderStructure[$category]) {
        $fullPath = Join-Path $BaseDir "$category\$subfolder"
        New-Item -Path $fullPath -ItemType Directory -Force | Out-Null
        $totalFolders++
    }
}

# Create README files if requested
if ($CreateReadme) {
    Write-Host ""
    Write-Host "Creating README files..." -ForegroundColor Green
    
    # Main README
    $mainReadme = @"
# E-Commerce Seller Management System

This folder structure is designed to help sellers organize and manage all aspects of their e-commerce business.

## Folder Structure Overview

### Products
- **Catalog**: Product listings and catalog files
- **Images**: Product images (main, thumbnails, gallery)
- **Descriptions**: Product descriptions and details
- **Specifications**: Technical specifications
- **PriceSheets**: Pricing information
- **Inventory**: Current inventory tracking
- **Categories**: Product categorization files

### Orders
- Manage orders through their lifecycle: Pending → Processing → Shipped → Delivered
- Track cancellations, returns, invoices, and packing slips

### Customers
- Customer database and contact information
- Reviews, feedback, and communications
- Support tickets and loyalty program data

### Marketing
- Marketing campaigns and promotions
- Email templates and social media content
- Analytics and advertising materials

### Inventory
- Stock levels and warehouse management
- Supplier information and purchase orders
- Restocking schedules and inventory audits

### Financial
- Revenue, expenses, and tax records
- Payment records and refunds
- Financial reports and budgets

### Shipping
- Carrier information and tracking
- Shipping labels and rates
- International shipping and returns

### Reports
- Sales reports and performance metrics
- Customer insights and market trends
- Monthly, quarterly, and annual reports

### Legal
- Contracts and legal documents
- Terms of service and privacy policies
- Licenses and compliance documents

### Platforms
- Platform-specific folders for Amazon, eBay, Shopify, Etsy, etc.
- Manage data for each selling platform separately

### Content
- Product photos and videos
- Manuals, brochures, and catalogs
- Blog posts and marketing content

### Team Management
- Employee information and schedules
- Training materials and performance reviews
- Payroll documents

### Documentation
- Standard Operating Procedures (SOPs)
- Process documentation and guidelines
- Templates and user manuals

### Backups & Archives
- Regular backups (daily, weekly, monthly)
- Archived old products and completed orders
- Past marketing campaigns

### Tools
- Scripts and utilities
- Templates and calculators
- Business tools

## Getting Started

1. Start by organizing your existing files into the appropriate folders
2. Customize the structure as needed for your specific business
3. Set up regular backup schedules
4. Document your processes in the Documentation folder
5. Train your team on where to store different types of files

## Best Practices

- Keep files organized and use consistent naming conventions
- Regularly backup your data
- Archive old files to keep active folders clean
- Document important processes and procedures
- Review and update your folder structure periodically

Created: $(Get-Date -Format "yyyy-MM-ddTHH:mm:sszzz")
"@

    Set-Content -Path (Join-Path $BaseDir "README.md") -Value $mainReadme

    # Create .gitkeep files to preserve empty directories in git
    $gitkeepFolders = @(
        "Products\Catalog",
        "Orders\Pending",
        "Customers\Database",
        "Marketing\Campaigns",
        "Inventory\StockLevels",
        "Financial\Revenue",
        "Shipping\Carriers",
        "Reports\Sales",
        "Legal\Contracts",
        "Backups\Daily"
    )
    
    foreach ($folder in $gitkeepFolders) {
        $gitkeepPath = Join-Path $BaseDir "$folder\.gitkeep"
        New-Item -Path $gitkeepPath -ItemType File -Force | Out-Null
    }
}

Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "Folder structure created successfully!" -ForegroundColor Green
Write-Host "Location: $BaseDir" -ForegroundColor Yellow
Write-Host "Total folders created: $totalFolders" -ForegroundColor Yellow
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Your e-commerce management system is ready to use!" -ForegroundColor Green
Write-Host ""

# Open the folder in Explorer
$openFolder = Read-Host "Would you like to open the folder now? (Y/N)"
if ($openFolder -eq 'Y' -or $openFolder -eq 'y') {
    Invoke-Item $BaseDir
} else {
    Write-Host "Folder not opened. You can find it at: $BaseDir" -ForegroundColor Yellow
}
