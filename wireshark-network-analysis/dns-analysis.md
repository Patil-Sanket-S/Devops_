# DNS Query Analysis

This document provides an analysis of a DNS lookup for `chatgpt.com`, captured using Wireshark.

## 🔍 Command Used
```bash
dig chatgpt.com
Packet Behavior
The client sends a DNS query to the local resolver

The resolver returns multiple records:

A records (IPv4): 52.222.144.61, 52.222.144.115, 52.222.144.97

AAAA record (IPv6)

SOA record for Cloudflare and AWS DNS infrastructure

📦 Protocol Details
Protocol: DNS over UDP

Port: 53

Query type: A and AAAA

Response includes both authoritative name servers and resolved IPs

📸 Screenshot

🧠 What I Learned
How DNS resolution returns multiple IPs for redundancy/load balancing

Difference between A (IPv4), AAAA (IPv6), and SOA (authority) records

How to filter and analyze DNS traffic in Wireshark
