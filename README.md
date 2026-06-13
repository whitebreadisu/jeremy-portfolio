# jeremy-portfolio

Infrastructure and landing page for `jeremybradenapps.com` — a portal linking to Jeremy's apps, starting with [SWU Inventory Manager](https://github.com/whitebreadisu/SWU-Inventory-Manager).

This repo owns:
- The Cloud DNS managed zone for `jeremybradenapps.com` (Terraform-managed, single source of truth for every app's subdomain records)
- The portal's Firebase Hosting site (landing page, root domain as custom domain)

See `SWU_Platform_Roadmap.md` §6 in the SWU Inventory Manager repo for the decisions behind this setup.
