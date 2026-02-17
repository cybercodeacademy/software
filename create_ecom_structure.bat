@echo off
REM E-Commerce Seller Management System - Folder Structure Creator
REM This script creates a comprehensive folder structure for managing an e-commerce business

echo ============================================
echo E-Commerce Seller Management System
echo Folder Structure Creator
echo ============================================
echo.

REM Set the base directory (default is current directory)
set BASE_DIR=%CD%\EcomManagementSystem

echo Creating folder structure at: %BASE_DIR%
echo.

REM Create main directory
if not exist "%BASE_DIR%" mkdir "%BASE_DIR%"

REM 1. Products Management
echo Creating Products folders...
mkdir "%BASE_DIR%\Products"
mkdir "%BASE_DIR%\Products\Catalog"
mkdir "%BASE_DIR%\Products\Images"
mkdir "%BASE_DIR%\Products\Images\Main"
mkdir "%BASE_DIR%\Products\Images\Thumbnails"
mkdir "%BASE_DIR%\Products\Images\Gallery"
mkdir "%BASE_DIR%\Products\Descriptions"
mkdir "%BASE_DIR%\Products\Specifications"
mkdir "%BASE_DIR%\Products\PriceSheets"
mkdir "%BASE_DIR%\Products\Inventory"
mkdir "%BASE_DIR%\Products\Categories"

REM 2. Orders Management
echo Creating Orders folders...
mkdir "%BASE_DIR%\Orders"
mkdir "%BASE_DIR%\Orders\Pending"
mkdir "%BASE_DIR%\Orders\Processing"
mkdir "%BASE_DIR%\Orders\Shipped"
mkdir "%BASE_DIR%\Orders\Delivered"
mkdir "%BASE_DIR%\Orders\Cancelled"
mkdir "%BASE_DIR%\Orders\Returns"
mkdir "%BASE_DIR%\Orders\Invoices"
mkdir "%BASE_DIR%\Orders\PackingSlips"

REM 3. Customer Management
echo Creating Customer folders...
mkdir "%BASE_DIR%\Customers"
mkdir "%BASE_DIR%\Customers\Database"
mkdir "%BASE_DIR%\Customers\Reviews"
mkdir "%BASE_DIR%\Customers\Feedback"
mkdir "%BASE_DIR%\Customers\Communications"
mkdir "%BASE_DIR%\Customers\SupportTickets"
mkdir "%BASE_DIR%\Customers\Loyalty"

REM 4. Marketing & Promotions
echo Creating Marketing folders...
mkdir "%BASE_DIR%\Marketing"
mkdir "%BASE_DIR%\Marketing\Campaigns"
mkdir "%BASE_DIR%\Marketing\Promotions"
mkdir "%BASE_DIR%\Marketing\Coupons"
mkdir "%BASE_DIR%\Marketing\EmailTemplates"
mkdir "%BASE_DIR%\Marketing\SocialMedia"
mkdir "%BASE_DIR%\Marketing\Analytics"
mkdir "%BASE_DIR%\Marketing\Advertisements"
mkdir "%BASE_DIR%\Marketing\ContentCreation"

REM 5. Inventory Management
echo Creating Inventory folders...
mkdir "%BASE_DIR%\Inventory"
mkdir "%BASE_DIR%\Inventory\StockLevels"
mkdir "%BASE_DIR%\Inventory\Warehouse"
mkdir "%BASE_DIR%\Inventory\Suppliers"
mkdir "%BASE_DIR%\Inventory\PurchaseOrders"
mkdir "%BASE_DIR%\Inventory\Restocking"
mkdir "%BASE_DIR%\Inventory\Audits"

REM 6. Financial Management
echo Creating Financial folders...
mkdir "%BASE_DIR%\Financial"
mkdir "%BASE_DIR%\Financial\Revenue"
mkdir "%BASE_DIR%\Financial\Expenses"
mkdir "%BASE_DIR%\Financial\Taxes"
mkdir "%BASE_DIR%\Financial\PaymentRecords"
mkdir "%BASE_DIR%\Financial\Refunds"
mkdir "%BASE_DIR%\Financial\Reports"
mkdir "%BASE_DIR%\Financial\Budgets"
mkdir "%BASE_DIR%\Financial\BankStatements"

REM 7. Shipping & Logistics
echo Creating Shipping folders...
mkdir "%BASE_DIR%\Shipping"
mkdir "%BASE_DIR%\Shipping\Carriers"
mkdir "%BASE_DIR%\Shipping\TrackingInfo"
mkdir "%BASE_DIR%\Shipping\Labels"
mkdir "%BASE_DIR%\Shipping\Rates"
mkdir "%BASE_DIR%\Shipping\International"
mkdir "%BASE_DIR%\Shipping\ReturnLabels"

REM 8. Reports & Analytics
echo Creating Reports folders...
mkdir "%BASE_DIR%\Reports"
mkdir "%BASE_DIR%\Reports\Sales"
mkdir "%BASE_DIR%\Reports\Performance"
mkdir "%BASE_DIR%\Reports\CustomerInsights"
mkdir "%BASE_DIR%\Reports\MarketTrends"
mkdir "%BASE_DIR%\Reports\CompetitorAnalysis"
mkdir "%BASE_DIR%\Reports\Monthly"
mkdir "%BASE_DIR%\Reports\Quarterly"
mkdir "%BASE_DIR%\Reports\Annual"

REM 9. Legal & Compliance
echo Creating Legal folders...
mkdir "%BASE_DIR%\Legal"
mkdir "%BASE_DIR%\Legal\Contracts"
mkdir "%BASE_DIR%\Legal\TermsAndConditions"
mkdir "%BASE_DIR%\Legal\PrivacyPolicy"
mkdir "%BASE_DIR%\Legal\Licenses"
mkdir "%BASE_DIR%\Legal\Compliance"
mkdir "%BASE_DIR%\Legal\Disputes"

REM 10. Platform Management
echo Creating Platform folders...
mkdir "%BASE_DIR%\Platforms"
mkdir "%BASE_DIR%\Platforms\Amazon"
mkdir "%BASE_DIR%\Platforms\eBay"
mkdir "%BASE_DIR%\Platforms\Shopify"
mkdir "%BASE_DIR%\Platforms\Etsy"
mkdir "%BASE_DIR%\Platforms\WooCommerce"
mkdir "%BASE_DIR%\Platforms\OwnWebsite"

REM 11. Content & Media
echo Creating Content folders...
mkdir "%BASE_DIR%\Content"
mkdir "%BASE_DIR%\Content\ProductPhotos"
mkdir "%BASE_DIR%\Content\Videos"
mkdir "%BASE_DIR%\Content\Manuals"
mkdir "%BASE_DIR%\Content\Brochures"
mkdir "%BASE_DIR%\Content\Catalogs"
mkdir "%BASE_DIR%\Content\BlogPosts"

REM 12. HR & Team Management
echo Creating HR folders...
mkdir "%BASE_DIR%\TeamManagement"
mkdir "%BASE_DIR%\TeamManagement\Employees"
mkdir "%BASE_DIR%\TeamManagement\Schedules"
mkdir "%BASE_DIR%\TeamManagement\Training"
mkdir "%BASE_DIR%\TeamManagement\Performance"
mkdir "%BASE_DIR%\TeamManagement\Payroll"

REM 13. Documentation & SOPs
echo Creating Documentation folders...
mkdir "%BASE_DIR%\Documentation"
mkdir "%BASE_DIR%\Documentation\SOPs"
mkdir "%BASE_DIR%\Documentation\Processes"
mkdir "%BASE_DIR%\Documentation\Guidelines"
mkdir "%BASE_DIR%\Documentation\Templates"
mkdir "%BASE_DIR%\Documentation\UserManuals"

REM 14. Backups & Archives
echo Creating Backup folders...
mkdir "%BASE_DIR%\Backups"
mkdir "%BASE_DIR%\Backups\Daily"
mkdir "%BASE_DIR%\Backups\Weekly"
mkdir "%BASE_DIR%\Backups\Monthly"
mkdir "%BASE_DIR%\Archives"
mkdir "%BASE_DIR%\Archives\OldProducts"
mkdir "%BASE_DIR%\Archives\CompletedOrders"
mkdir "%BASE_DIR%\Archives\PastCampaigns"

REM 15. Tools & Resources
echo Creating Tools folders...
mkdir "%BASE_DIR%\Tools"
mkdir "%BASE_DIR%\Tools\Scripts"
mkdir "%BASE_DIR%\Tools\Templates"
mkdir "%BASE_DIR%\Tools\Calculators"
mkdir "%BASE_DIR%\Tools\Utilities"

echo.
echo ============================================
echo Folder structure created successfully!
echo Location: %BASE_DIR%
echo ============================================
echo.
echo Your e-commerce management system is ready to use.
echo.
pause
