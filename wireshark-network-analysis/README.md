# 🧪 Wireshark Network Troubleshooting Project

This project demonstrates how to capture and analyze real-world network traffic using **Wireshark**. It highlights key networking fundamentals including **DNS resolution**, **HTTP GET requests**, and **TCP 3-way handshakes** — essential concepts for technical support and cloud infrastructure roles.

---

## 📦 Protocols Analyzed

| Protocol | What Was Analyzed                                |
|----------|--------------------------------------------------|
| **DNS**  | Captured `dig chatgpt.com` and analyzed A/AAAA/SOA records |
| **HTTP** | Sent HTTP GET request via `curl http://httpbin.org/get` and followed TCP stream |
| **TCP**  | Captured and examined a full 3-way handshake (SYN → SYN-ACK → ACK) |

---

## 🛠 Tools Used

- **Wireshark** (packet capture and protocol analysis)
- **Terminal tools**: `curl`, `dig`, `ping`
- **macOS (en0 interface)**

---

---

## 📸 Screenshots

- **DNS Query**: `chatgpt.com` A + AAAA + SOA record resolution
- **HTTP Stream**: Full GET request/response to `httpbin.org`
- **TCP Handshake**: Complete connection setup captured between client and server

---

## 📖 What I Learned

- How to analyze DNS lookups at the packet level
- Differences between HTTP and HTTPS (plain text vs. encrypted)
- How TCP establishes reliable connections
- Using Wireshark filters and stream tools to extract protocol insights

---

## 🔗 Author

**Sanket Patil**  
📧 sanket.patil3019@gmail.com  
🌐 [LinkedIn](https://www.linkedin.com/in/sanket-patil-5670b914b)

---

> This project is part of a personal learning initiative to build practical troubleshooting skills for cloud support engineering roles.

# wireshark-network-analysis
