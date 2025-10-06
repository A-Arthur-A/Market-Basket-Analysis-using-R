# 🛒 Market Basket Analysis using R (arules)

This repository contains an implementation of **Market Basket Analysis (MBA)** using the **Apriori algorithm** from the `arules` package in R.  
The project demonstrates how to identify associations between items purchased together using transactional data.

---

## 📖 Description
The project performs **association rule mining** on a transactional dataset using the Apriori algorithm.  
It loads transaction data, explores it using `inspect()`, and generates rules with defined `support` and `confidence` thresholds.  
Finally, it filters the results to show only rules with a **lift value greater than 1**, indicating meaningful associations.

---

## 🧩 Features
- Import and preprocess transactional data using `read.transactions()`
- Explore individual transactions using `inspect()`
- Generate association rules using `apriori()`
- Filter and interpret rules with significant `lift` values
- Simple, educational example for learning association rule mining in R

---

## 🧠 Tech Stack
- **Language:** R  
- **Libraries:** arules  
---

