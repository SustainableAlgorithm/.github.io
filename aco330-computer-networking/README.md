# ACO 330: Computer Networking

**Arizona State University · Fall 2021**  
**Coursework archive:** Homework 1–6  
**Student:** Kathleen Kagan

This project documents six homework submissions from ACO 330, covering the core layers and mechanisms of computer networking. The assignments move from end-to-end packet delivery and application protocols through transport behavior, IP addressing and forwarding, routing algorithms, and link-layer addressing and error detection.

The work is primarily conceptual problem solving, protocol analysis, network calculations, and interpretation of diagrams and packet traces. It is not a software implementation or a claim of production networking experience.

## Topics covered

| Homework | Main subject | Concepts and exercises |
|---|---|---|
| 1 | Network fundamentals | End-to-end delay, throughput and bottlenecks, Internet protocol stack, transmission vs. propagation delay, multi-link delay calculations, traceroute and RTT observations |
| 2 | Application layer | HTTP, SMTP, POP3, TCP vs. UDP, client-server startup behavior, HTTP request/response headers, persistent connections, Python TCP/UDP client-server exercises |
| 3 | Transport layer | TCP/UDP tradeoffs, port numbers, sequence and acknowledgment numbers, receive windows, retransmission behavior, TCP Reno and Tahoe congestion control |
| 4 | Network layer and IP | IPv4 binary representation, IPv4/IPv6 header comparison, longest-prefix forwarding, subnetting, IP fragmentation, datagram sizing |
| 5 | Routing | Link-state vs. distance-vector algorithms, count-to-infinity, Dijkstra shortest paths, distance-vector updates |
| 6 | Link layer | MAC/IPv4/IPv6 address-space sizes, ARP broadcast and reply behavior, two-dimensional parity, single-bit error correction and double-bit error detection |

## Skills demonstrated

- Reasoning about layered network protocols and end-to-end packet delivery
- Calculating throughput, transmission delay, propagation delay, and total path delay
- Reading HTTP request and response headers
- Explaining TCP connection setup, acknowledgments, sequence numbers, and flow control
- Comparing TCP congestion-control behavior under Reno and Tahoe
- Converting IP addresses to binary and applying longest-prefix matching
- Working through subnet allocation and IP fragmentation calculations
- Applying Dijkstra's algorithm and reasoning about distance-vector routing
- Explaining ARP and parity-based error detection

## Selected work and examples

### Packet delay and throughput
Homework 1 compares link rates of 500 kbps, 2 Mbps, and 1 Mbps and identifies the bottleneck throughput. It also works through transmission and propagation delay formulas and a three-link path with packet-switch processing delays. A traceroute exercise compares round-trip-time observations for same-continent and intercontinental destinations.

### Application protocols and HTTP
Homework 2 examines why common application protocols use TCP, the difference between TCP and UDP client startup, and how to interpret HTTP GET and response messages. The packet examples include the requested resource, HTTP version, connection behavior, status code, modification date, content length, and server response metadata.

### TCP transport behavior
Homework 3 covers the reversal of source and destination ports on return traffic, when UDP may be preferable, and how applications can add reliability above UDP. It includes sequence-number and acknowledgment exercises, receive-window statements, and a TCP congestion-window graph comparing slow start and congestion avoidance behavior.

### IP addressing and forwarding
Homework 4 includes IPv4 binary conversion, IPv4/IPv6 header-field comparisons, longest-prefix matching, subnetting, and fragmentation. One worked fragmentation exercise uses a 2,400-byte datagram, a 700-byte MTU, and identification value 422.

### Routing algorithms
Homework 5 compares link-state and distance-vector routing, explains count-to-infinity, and applies Dijkstra's shortest-path algorithm to a weighted network. A second network-fragment exercise considers how changes to link costs affect distance-vector updates.

### Link-layer addressing and error detection
Homework 6 discusses the sizes of MAC, IPv4, and IPv6 address spaces, why ARP requests are broadcast, and why ARP replies are addressed to a specific MAC address. It also works with two-dimensional parity for error detection and correction.

## Source and validation notes

The six original homework PDFs were supplied for this portfolio entry and reviewed for their subject matter. They are not currently included as downloadable files in this repository; this page is a descriptive index of the submitted coursework.

The page summarizes the scope of the assignments rather than certifying every submitted calculation or answer. Some exercises contain handwritten or diagram-dependent work, and the original submissions have not been independently re-solved or corrected here. Where an exact result matters, consult the original homework submission and verify the calculation.

## Academic context

- **Course:** ACO 330 — Computer Networking
- **Institution:** Arizona State University
- **Term:** Fall 2021
- **Materials represented:** Homework 1 through Homework 6
