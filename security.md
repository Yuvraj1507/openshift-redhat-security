# Security Policy

## Supported Versions
We actively maintain and support the following versions of this project:

| Version | Supported          |
|---------|------------------|
| 1.0.x   | ✅ Active Support |
| < 1.0   | ❌ No longer supported |

## Reporting Security Vulnerabilities
If you discover a security vulnerability, please **DO NOT** open a public issue. Instead, follow these steps:

1. Email the security team at **security@yourproject.com** with:
   - A description of the vulnerability
   - Steps to reproduce (if applicable)
   - Any suggested fixes
2. Expect a response within **48 hours**.
3. Once resolved, we will disclose the vulnerability in a **security advisory**.

## Secure Development Best Practices
To maintain security in this project, we follow:
- **Role-Based Access Control (RBAC)**
- **Pod Security Policies (PSP)**
- **Regular image scanning (Trivy, Clair)**
- **Least privilege principles**
- **Automated security testing in CI/CD**

## Security Tools Used
- **Trivy**: Container vulnerability scanning
- **Clair**: Static vulnerability analysis
- **Forseti Security**: Cloud security auditing
- **RBAC Policies**: Kubernetes role-based access control
- **Network Policies**: Restrict pod communication
