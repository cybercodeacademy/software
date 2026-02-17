# E-Commerce Management System Folder Structure Scripts

This repository contains Windows scripts to automatically create a comprehensive folder structure for managing an e-commerce seller business.

## Available Scripts

### 1. Batch File (`create_ecom_structure.bat`)
A simple Windows batch script that creates the complete folder structure.

**How to use:**
1. Double-click the `create_ecom_structure.bat` file
2. The script will create a folder called `EcomManagementSystem` in the same directory
3. Press any key when complete

**Or via Command Prompt:**
```cmd
create_ecom_structure.bat
```

### 2. PowerShell Script (`create_ecom_structure.ps1`)
An advanced PowerShell script with additional features like README generation.

**How to use:**
1. Right-click on `create_ecom_structure.ps1` and select "Run with PowerShell"
2. Or open PowerShell and run:
```powershell
.\create_ecom_structure.ps1
```

**Advanced options:**
```powershell
# Create structure in a custom location
.\create_ecom_structure.ps1 -BaseDir "C:\MyEcommerce"

# Skip README creation
.\create_ecom_structure.ps1 -CreateReadme:$false
```

## Folder Structure

The scripts create the following comprehensive folder structure:

### 📦 Products
- **Catalog** - Product listings and catalog files
- **Images** - Product images organized by type (Main, Thumbnails, Gallery)
- **Descriptions** - Product descriptions and details
- **Specifications** - Technical specifications
- **PriceSheets** - Pricing information and price lists
- **Inventory** - Current inventory tracking
- **Categories** - Product categorization and taxonomy

### 📋 Orders
- **Pending** - New orders awaiting processing
- **Processing** - Orders currently being prepared
- **Shipped** - Orders that have been dispatched
- **Delivered** - Completed deliveries
- **Cancelled** - Cancelled orders
- **Returns** - Return requests and processed returns
- **Invoices** - Order invoices and billing documents
- **PackingSlips** - Packing slips and shipping documents

### 👥 Customers
- **Database** - Customer information and contact details
- **Reviews** - Customer reviews and ratings
- **Feedback** - Customer feedback and suggestions
- **Communications** - Email correspondence and messages
- **SupportTickets** - Customer support tickets and resolutions
- **Loyalty** - Loyalty program data and rewards

### 📢 Marketing
- **Campaigns** - Marketing campaigns and promotions planning
- **Promotions** - Active and planned promotions
- **Coupons** - Coupon codes and discount management
- **EmailTemplates** - Email marketing templates
- **SocialMedia** - Social media content and schedules
- **Analytics** - Marketing performance analytics
- **Advertisements** - Ad creatives and campaign materials
- **ContentCreation** - Marketing content production

### 📊 Inventory
- **StockLevels** - Current stock levels and alerts
- **Warehouse** - Warehouse organization and locations
- **Suppliers** - Supplier information and contacts
- **PurchaseOrders** - Purchase orders to suppliers
- **Restocking** - Restocking schedules and plans
- **Audits** - Inventory audit reports

### 💰 Financial
- **Revenue** - Revenue reports and tracking
- **Expenses** - Business expenses and receipts
- **Taxes** - Tax documents and filings
- **PaymentRecords** - Payment transaction records
- **Refunds** - Refund requests and processed refunds
- **Reports** - Financial reports and statements
- **Budgets** - Budget plans and forecasts
- **BankStatements** - Bank statements and reconciliation

### 🚚 Shipping
- **Carriers** - Shipping carrier information
- **TrackingInfo** - Package tracking details
- **Labels** - Shipping labels and documentation
- **Rates** - Shipping rates and cost calculations
- **International** - International shipping documents
- **ReturnLabels** - Return shipping labels

### 📈 Reports
- **Sales** - Sales reports and metrics
- **Performance** - Business performance analytics
- **CustomerInsights** - Customer behavior and insights
- **MarketTrends** - Market analysis and trends
- **CompetitorAnalysis** - Competitor research
- **Monthly** - Monthly summary reports
- **Quarterly** - Quarterly business reviews
- **Annual** - Annual reports and summaries

### ⚖️ Legal
- **Contracts** - Business contracts and agreements
- **TermsAndConditions** - Terms of service documents
- **PrivacyPolicy** - Privacy policy and GDPR compliance
- **Licenses** - Business licenses and permits
- **Compliance** - Compliance documents and certifications
- **Disputes** - Dispute records and resolutions

### 🏪 Platforms
- **Amazon** - Amazon seller central files
- **eBay** - eBay listings and data
- **Shopify** - Shopify store management
- **Etsy** - Etsy shop files
- **WooCommerce** - WooCommerce store data
- **OwnWebsite** - Own website e-commerce files

### 🎨 Content
- **ProductPhotos** - Professional product photography
- **Videos** - Product videos and demonstrations
- **Manuals** - Product manuals and guides
- **Brochures** - Marketing brochures and flyers
- **Catalogs** - Product catalogs
- **BlogPosts** - Blog content and articles

### 👔 Team Management
- **Employees** - Employee records and information
- **Schedules** - Work schedules and shift planning
- **Training** - Training materials and records
- **Performance** - Performance reviews and evaluations
- **Payroll** - Payroll documents and records

### 📚 Documentation
- **SOPs** - Standard Operating Procedures
- **Processes** - Business process documentation
- **Guidelines** - Company guidelines and policies
- **Templates** - Document templates and forms
- **UserManuals** - User guides and manuals

### 💾 Backups & Archives
- **Backups/Daily** - Daily backup files
- **Backups/Weekly** - Weekly backup files
- **Backups/Monthly** - Monthly backup files
- **Archives/OldProducts** - Discontinued products
- **Archives/CompletedOrders** - Archived order history
- **Archives/PastCampaigns** - Past marketing campaigns

### 🛠️ Tools
- **Scripts** - Automation scripts and utilities
- **Templates** - Business templates and forms
- **Calculators** - ROI and pricing calculators
- **Utilities** - Various business utilities

## Best Practices

1. **Consistent Naming**: Use consistent file naming conventions across all folders
2. **Regular Backups**: Set up automated backups to the Backups folder
3. **Archive Old Files**: Move completed items to Archives to keep active folders clean
4. **Documentation**: Keep SOPs and processes updated in the Documentation folder
5. **Access Control**: Implement proper access controls for sensitive folders (Financial, Legal, Customers)
6. **Regular Reviews**: Periodically review and update the folder structure as your business evolves

## Customization

Feel free to modify the scripts to add, remove, or reorganize folders based on your specific business needs:

1. Open the `.bat` or `.ps1` file in a text editor
2. Add or remove folder creation commands
3. Save and run the modified script

## Requirements

- **Batch Script**: Windows (any version)
- **PowerShell Script**: Windows PowerShell 5.1 or later (included in Windows 10/11)

## Troubleshooting

### PowerShell Execution Policy
If you get an error about execution policies when running the PowerShell script:

1. Open PowerShell as Administrator
2. Run: `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`
3. Type 'Y' to confirm
4. Try running the script again

Or run it with bypass:
```powershell
powershell -ExecutionPolicy Bypass -File .\create_ecom_structure.ps1
```

### Permission Issues
If you encounter permission errors:
- Ensure you have write permissions to the directory where you're running the script
- Try running as Administrator (right-click → Run as Administrator)

## License

This project is provided as-is for anyone to use and modify for their e-commerce business needs.

## Contributing

Feel free to submit improvements, additional folder structures, or bug fixes.

---

**Note**: This folder structure is a template. Customize it based on your specific business requirements, size, and workflow.
