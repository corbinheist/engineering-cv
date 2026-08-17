---
location: Seattle, WA
phone: "+1 (336) 803-9230"
contact: contact@corbinheist.com
---

Integration engineer for radar and weapon systems. Ten years of engineering, from motorsport race engineering to defense radar integration. Sole Echodyne engineer at the range for six live-fire campaigns across four countries in 2026, integrating EchoShield radar with weapon systems from four tier-1 prime contractors. Author of the Rust middleware and field tooling those integrations run on. One prime is now building that integration code into its own fire-control product.

## Integrations Engineer — Field Systems Architecture

*Echodyne Corp. | Kirkland, WA | August 2022 - Present*

Created this role to make Echodyne radar work inside a prime contractor's weapon system.

**Kill chain and weapon integration:**

- Delivered the first radar-track-to-30mm kill on the AMP-V program. The system is now fielded with an operational US Army unit.
- Integrated EchoShield with weapon systems across six live-fire campaigns in 2026 (US, Norway, Lithuania, Switzerland). EchoShield is now the default C-UAS radar on all three remote weapon station lines of a major European prime.
- Built first-of-kind integrations: EchoShield on a NATO frigate, with fire control at sea and on-the-move kinematics 20 m above the waterline; radar-to-high-energy-laser handoff (DE-SHORAD/JLTV); a six-radar maritime C-UAS array; a four-radar MSHORAD Stryker bridged to a third-party C2 platform; and FAAD C2 high-side integration across a data diode.
- Ran the truth radar for a 23-nation demonstration. Delivered the first two-vehicle moving track-share.

**Mission software and field tooling (Rust):**

- Built a five-tool radar middleware and capture suite: protocol parser, edge tap, command mirror, track-handoff engine, and mission-data recorder. It runs on customer hardware at every 2026 campaign and presents the radar interface unchanged to the downstream C2 system.
- Wrote the integration adapter that a tier-1 prime contractor is now building into its fire-control ICS for a national program.
- Ported vendor radar libraries to ARM at the range, mid-campaign, on Jetson-class vehicle compute. Built the capture and analysis tools used to verify sensor performance and find the cause of field failures.
- Configured moving-platform kinematics: dual-INS installations (Boreas D90, Chimera LVS, eTALIN-II, Sigma 40), mount alignment, pose calibration, and GNSS-denied behavior.

**Test execution and customers:**

- Found the cause of field failures at every layer: firmware, container networking, power (battery brownout under fire), and mechanical misalignment. Campaign schedules allow no downtime.
- Continuing technical contact for eight prime contractors across the US and Europe. Represent Echodyne at NATO interoperability bodies (SAPIENT, ASTERIX, Cursor on Target, Link 16).
- Report adoption blockers and deployment priorities to the product team as a ranked backlog. Deliver integrations ahead of the internal roadmap.
- Write the integration guides and validation checklists that take a partner from hardware connection to first track. President's Club 2025 and 2026.

## Test Engineer

*Creation Technologies | Burnaby, BC | January 2020 - August 2022*

- Raised rolled throughput yield from ~72% to ~85% at a $35M ISO 9001 facility. Reverse-engineered the full production test architecture, and built the analysis tools in Python, SQL, and C#.

## Race Engineer

*Freelance | December 2015 - November 2018*

Race engineer on championship-winning programs in IndyCar, IMSA, WEC, and Blancpain GT, including the Le Mans 24h. Built real-time analysis workflows and led strategy calls under time pressure.

## Education

| Degree | Institution | Location |
|:---|:---|:---|
| BEng Motorsport Engineering | Oxford Brookes University | Oxford, UK |
| AS Motorsport Technology | Forsyth Technical Community College | Winston-Salem, NC |

## Technical Skills

**Kill chain and effectors:** radar-to-weapon integration, fire-control interfaces, track handoff and cueing, covariance, remote weapon stations, high-energy laser, FAAD C2

**Software:** Rust (systems services, binary wire protocols, real-time capture), Python (Pandas, NumPy, Jupyter), TypeScript, REST APIs (OpenAPI/Swagger), JSON-RPC, SQL, Claude Code, MCP

**Navigation and platforms:** INS and kinematics (Boreas D90, Chimera LVS, eTALIN-II, Sigma 40), mount alignment, pose calibration, GNSS-denied operation, Jetson-class vehicle compute, embedded ARM Linux, Docker, Silvus mesh, Starlink, VLANs

**Interfaces and datalinks:** SAPIENT (BSI Flex 335), ASTERIX (Cat 048/062), Cursor on Target, Link 16, FAAD C2, data diodes
