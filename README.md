# e_commerce

```markdown
# Project: Product Display UI with API Integration

---

## Overview

This project involves creating a user interface (UI) to display product details fetched from a given API. The tasks include:

- Designing a custom UI to display the API response in a structured and user-friendly manner.
- Creating data models based on the API response.
- Testing the API integration and displaying data in the UI.
- Recreating a specific UI design from a provided Figma link and integrating the API.

---

## Task 1: Custom UI & API Integration

- **Objective:**  
  Design a UI according to your imagination to display the product details fetched from the API.

- **API Endpoint:**  
  [https://bmdublog.com/my_mobi_mart/api/get-products-details](https://bmdublog.com/my_mobi_mart/api/get-products-details)

- **Sample JSON Response:**

```json
{
  "status": true,
  "message": "Product images fetched successfully",
  "data": {
    "details": [
      {
        "name": "haldidiram",
        "description": null,
        "MRP": "50",
        "unit": "pcs",
        "images": [
          "https://bmdublog.com/my_mobi_mart/public/storage/products/U87hIO2cSvw92iVsWEE89IcWevi1tyKqc6BVHZM1.jpg",
          "https://bmdublog.com/my_mobi_mart/public/storage/products/PwMSOT9tvazgTjgTnLuN5txAq8ZptZTeDhuvucsD.jpg",
          "https://bmdublog.com/my_mobi_mart/public/storage/products/FDSyy2bgACXHK1LR2jqH5GGlxHxt0WR2T3XD3v0x.jpg"
        ]
      },
      {
        "name": "Palak maggi",
        "description": "green maggi",
        "MRP": "28",
        "unit": "units",
        "images": [
          "https://bmdublog.com/my_mobi_mart/public/storage/products/bjGcGROOU89U1awTr6xp9ntvyi7OLXS8RgGOhBsp.jpg",
          "https://bmdublog.com/my_mobi_mart/public/storage/products/Tat90gYb0m0Z4VvtWv7eRfwnGMONmddzUKIS8Gwf.jpg",
          "https://bmdublog.com/my_mobi_mart/public/storage/products/6zQSOTykjROq9mgigPlPEZKouQLj7GpYDZtFEb1k.jpg"
        ]
      },
      {
        "name": "250 ltr sunflower oil",
        "description": "this is best oil",
        "MRP": "135",
        "unit": "liters",
        "images": [
          "https://bmdublog.com/my_mobi_mart/public/storage/products/EV1SSPQQzNtCbZUpRUHmaysj4hxngFWODPNyh4hk.jpg",
          "https://bmdublog.com/my_mobi_mart/public/storage/products/HQTVEfRRkzcKP0STxvqLmyMwT4i5KJq1NUVmUdc0.jpg",
          "https://bmdublog.com/my_mobi_mart/public/storage/products/6zQSOTykjROq9mgigPlPEZKouQLj7GpYDZtFEb1k.jpg"
        ]
      }
    ]
  }
}
```

- **Steps to Complete:**
    1. Fetch data from the API.
    2. Create appropriate data models/classes to parse the JSON response.
    3. Design and build a responsive UI to display the data clearly and attractively.
    4. Test the API calls and UI rendering.

---

## Task 2: Figma UI Implementation & API Integration

- **Objective:**  
  Code the UI design from the provided Figma link and integrate it with the API to show live data.

- **Figma Design Link:**  
  [https://www.figma.com/design/AxO0WblLLkBqJApXGc3tMl/Untitled?node-id=0-1&t=CxSSl2arfQRbeizU-1](https://www.figma.com/design/AxO0WblLLkBqJApXGc3tMl/Untitled?node-id=0-1&t=CxSSl2arfQRbeizU-1)

- **Steps to Complete:**
    1. Analyze the Figma design and replicate the UI in your development environment.
    2. Integrate the provided API to fetch product data.
    3. Bind the API data dynamically to the UI components.
    4. Ensure the UI matches the design and functions well on different devices.

---
