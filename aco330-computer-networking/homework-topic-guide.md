# ACO 330 — Homework 1–6: Topic Guide

This guide records the themes and representative work in the six submitted homework files. It summarizes rather than reproduces textbook problem statements.

## Homework 1 — Network fundamentals

- End-to-end delay components and which component varies with network load
- Throughput on a multi-link path and bottleneck-link reasoning
- The five-layer Internet protocol stack
- Transmission delay: packet length divided by link rate
- Propagation delay: link distance divided by propagation speed
- End-to-end delay across multiple links and packet switches
- Traceroute observations, average round-trip time, standard deviation, router counts, and intra-/intercontinental comparison

## Homework 2 — Application layer

- Why HTTP, SMTP, and POP3 are commonly carried over TCP
- Why a TCP server must be listening before a TCP client connects
- Why a UDP client can send without a prior connection handshake
- HTTP persistence and request/response message interpretation
- Reading URL, HTTP version, user-agent, connection, status, date, last-modified, and content-length fields
- Comparing TCP and UDP client/server startup and port-number behavior in Python exercises

## Homework 3 — Transport layer

- Reversing source and destination ports for return-direction TCP segments
- Application tradeoffs between TCP and UDP
- Application-level reliability over UDP
- TCP receive-window and acknowledgment concepts
- Sequence-number arithmetic and cumulative acknowledgments
- Segment loss and retransmission timing
- Interpreting a congestion-window graph for TCP Reno
- Comparing TCP Reno and TCP Tahoe responses to loss

## Homework 4 — Network layer and IP

- IPv4 address conversion to a 32-bit binary representation
- Encapsulation overhead for application data carried in TCP/IP
- Similarities and differences between IPv4 and IPv6 headers
- Longest-prefix-match forwarding tables
- Subnet prefixes and equal-size subnet allocation
- Fragment count, identification, fragment offset, and more-fragments flag
- Estimating the number of datagrams needed for a large file

## Homework 5 — Routing

- Link-state versus distance-vector routing
- Count-to-infinity and routing loops
- Dijkstra's shortest-path algorithm on a weighted network
- Distance-vector calculations at a node with two neighbors
- How changes in link costs can trigger or avoid routing updates

## Homework 6 — Link layer

- MAC, IPv4, and IPv6 address-space sizes
- ARP request broadcast behavior and targeted ARP responses
- Even parity and two-dimensional parity fields
- Detecting and correcting a single-bit error
- Detecting a double-bit error that cannot be corrected by the method

## How to read this archive

The topic guide is a summary of the submitted files, not a corrected solution manual. The homework PDFs include calculations, written explanations, and diagrams; those details should be checked against the originals before using any individual answer as a technical reference.
