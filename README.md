
<body>
  <h1>Terraform Hyper-V Configuration</h1>
  <p>
    This project uses <strong>Terraform</strong> to manage virtual machines on <strong>Hyper-V</strong>, with modular organization to facilitate maintenance and reusability. 
    It includes network switch configurations, disk (VHD) management, ISO configuration, and VM creation.
  </p>

  <h2>📂 Project Structure</h2>
  <pre>
  terraform/
  ├── main.tf              # Main file that invokes the modules
  ├── variables.tf         # Global variable definitions
  ├── terraform.tfvars     # Values for the variables
  ├── outputs.tf           # Global outputs from Terraform
  ├── modules/
  │   ├── hyperv_vm/       # Module for creating virtual machines
  │   ├── hyperv_network/  # Module for managing network switches
  │   ├── hyperv_storage/  # Module for managing VHDs and ISOs
  </pre>

  <h2>⚙️ Features</h2>
  <ul>
    <li>Manage Hyper-V virtual machines with Terraform.</li>
    <li>Organized into modules for VM, network, and storage management.</li>
    <li>Supports creating VHDs and using ISO files for installation.</li>
    <li>Reusable modules for flexible configuration.</li>
  </ul>

  <h2>🚀 Getting Started</h2>
  <ol>
    <li>Ensure Terraform is installed on your machine.</li>
    <li>Clone this repository: <code>git clone https://github.com/limaum87/terraform-hyperv</code></li>
    <li>Navigate to the project directory: <code>cd terraform-hyperv</code></li>
    <li>Set up the <code>terraform.tfvars</code> file with your Hyper-V credentials and configuration.</li>
    <li>Initialize Terraform: <code>terraform init</code></li>
    <li>Apply the configuration: <code>terraform apply</code></li>
  </ol>

  <h2>🔧 Modules</h2>
  <ul>
    <li><strong>hyperv_vm:</strong> Creates and manages virtual machines.</li>
    <li><strong>hyperv_network:</strong> Configures virtual network switches.</li>
    <li><strong>hyperv_storage:</strong> Manages VHDs and ISO configurations.</li>
  </ul>

  <h2>📘 Documentation</h2>
  <p>
    For detailed usage, refer to the Terraform <a href="https://www.terraform.io/docs/index.html" target="_blank">official documentation</a>.
  </p>

  <h2>👤 Author</h2>
  <p>
    Created by <strong>Felipe Lima</strong>. For questions or issues, feel free to contact me at <a href="mailto:contact@felipeolima.xyz">contact@felipeolima.xyz</a>.
  </p>
</body>
</html>
