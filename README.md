# Carrot2 - Open Source Search Results Clustering Engine

## Overview

Carrot2 is an open-source search results clustering engine written in Java that automatically organizes messy, unstructured text (such as search results or document abstracts) into neat, thematic groups. Instead of displaying a long overwhelming list of results, Carrot2 clusters information into topics, enabling users to quickly grasp the big picture and zoom into what matters.

---

## History

- **2001**: Started as a Master’s thesis project by Dawid Weiss, testing a clustering algorithm on Polish search results.
- **2002**: Went open source.
- **2006**: First official release (v1.0).
- Subsequent versions:
  - **v2.0**: Improved UI.
  - **v3.0 (2009)**: Boosted clustering quality.
  - **v4.0 (2020)**: Simplified API, replaced desktop Workbench with web-based version in v4.1.0 (2021).
- Now maintained by Carrot Search, a company founded in 2005, specializing in text mining and visualization.

---

## Key Features

- **Automatic Clustering**: Groups documents into labeled topics without needing predefined categories.
- **Two Powerful Algorithms**:
  - *Lingo*: Uses singular value decomposition and mathematical techniques.
  - *STC* (Suffix Tree Clustering).
- **Integration Friendly**: Works with search engines like Apache Solr, Lucene, Microsoft Bing, and PubMed.
- **Cross-Platform**: Java-based with REST interface and C#/.NET API support.
- **Visualizations**: Includes treemaps and pie charts for easy data digestion.
- **Multi-language Support**: Handles seven languages with tokenizers and stopword filters.
- **Open Source**: BSD license, free to use and customize.

---

## Architecture & Modules

- **Document Sources**: Fetches data from Bing, PubMed, Solr, Lucene, etc.
- **Clustering Algorithms**: Lingo and STC handle the main clustering tasks.
- **Supporting Applications**:
  - *Document Clustering Server (DCS)*: A REST-based service for integration.
  - *Web-based Workbench*: GUI for experimenting with clustering.

---

## Cybersecurity Applications

Carrot2 is particularly valuable for Open Source Intelligence (OSINT) tasks, such as sifting through vast numbers of articles, forum posts, and reports.

- Organizes data into meaningful clusters like "Threat Actors," "Malware Types," or "Targeted Industries," saving hours of manual sorting.
- Visualizations help highlight trends and relationships, such as linking malware to specific vulnerabilities.
- Speeds up research by focusing attention on the most relevant clusters.

---

## Proof of Concept: Investigating Ransomware Trends in 2025

Using Carrot2, a large dataset of PubMed articles about ransomware trends for 2025 was clustered into an exploratory map revealing key topics:

| Cluster & Color       | Description                                                                            |
|----------------------|----------------------------------------------------------------------------------------|
| Center Cluster (19)   | **Trends for 2025:** Main theme with expert forecasts and whitepapers.                 |
| Blue Clusters        | Instagram (11): Social media ransomware spread; Operation (9): Tactics and case studies such as REvil; Malware (7): Evolution of malware intersecting ransomware. |
| Brown/Olive Clusters | Group (10): APT and ransomware gangs; W Badoo (9): Possible noise or unrelated social content; Ransoms Paid (6): Statistics on ransom payments. |
| Purple Clusters      | Cybersecurity Trends (9): Broader issues beyond ransomware; Springer Nature (5): Academic insights. |
| Green Clusters       | Devices (5): IoT/mobile targets; Cyberwarfare (2): Ransomware as nation-state weapon.    |
| Red Clusters         | Retrieved (6): Data recovery and decryptors; Data Breaches (4): Ransomware-related breaches. |

This clustering offers an intuitive way to explore complex ransomware threat intelligence, highlighting future trends, social media involvement, and operational insights.

---

## When to Use Carrot2

- Early research phase when overwhelmed with data.
- Reviewing threat intelligence reports.
- Analyzing dark web or social media posts for OSINT.
- Summarizing customer feedback or incident reports to detect patterns.

---

## Limitations

- Text-only: Does not handle images, videos, or non-text media.
- Cluster quality sometimes requires tuning, which can be challenging for beginners.
- Not a search engine: Needs external tools for data fetching.

---

## Suggestions for Improvement

- A simpler interface for cluster tweaking.
- Direct integration with social media APIs (e.g., X, Reddit, Telegram) for better OSINT workflows.
- AI-enhanced cluster labeling for improved user experience.

---

## Summary

Carrot2 efficiently organizes unstructured textual data into meaningful clusters, especially useful in cybersecurity for managing and extracting intelligence from vast amount of open source data. It combines powerful algorithms, visualization tools, and flexible integration options to accelerate research and analysis, making it an excellent tool for interns and professionals investigating complex cybersecurity threats like ransomware.

---

*This README provides a comprehensive introduction and understanding of the Carrot2 tool and its applications in cybersecurity research.*
