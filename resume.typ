// Kyle Pace — Résumé
// Compile: typst compile --font-path fonts resume.typ resume.pdf

#let ink = rgb("#111418")
#let muted = rgb("#5C6470")
#let rule-color = rgb("#E2E5EA")

#set page(paper: "us-letter", margin: (x: 0.7in, top: 0.6in, bottom: 0.6in))
#set text(font: "Inter", size: 9.5pt, fill: ink)
#set par(justify: false, leading: 0.62em)

// ---------- helpers ----------

#let section(title) = {
  v(14pt)
  text(size: 8pt, weight: "semibold", fill: muted, tracking: 1.6pt, upper(title))
  v(-8pt)
  line(length: 100%, stroke: 0.5pt + rule-color)
  v(0pt)
}

#let role(title, org, dates, subline: none) = {
  v(4pt)
  grid(
    columns: (1fr, auto),
    align: (left, right),
    {
      text(weight: "semibold", size: 10pt)[#title]
      h(6pt)
      text(fill: muted, size: 10pt)[#org]
    },
    text(fill: muted, size: 9pt)[#dates],
  )
  if subline != none {
    v(-5pt)
    text(size: 8.5pt, fill: muted)[#subline]
  }
  v(-3pt)
}

#let bullets(..items) = {
  set text(size: 9.5pt)
  for item in items.pos() {
    grid(
      columns: (10pt, 1fr),
      column-gutter: 0pt,
      text(fill: muted)[•],
      item,
    )
    v(-5.5pt)
  }
  v(3pt)
}

// ---------- header ----------

#grid(
  columns: (1fr, auto),
  align: (left + horizon, right + horizon),
  {
    text(size: 21pt, weight: "bold", tracking: -0.3pt)[Kyle Pace]
    v(-7pt)
    text(size: 10pt, fill: muted)[Product Leader · Seattle, WA]
  },
  text(size: 9pt, fill: muted)[
    kylepace\@gmail.com \
    linkedin.com/in/kylepace \
    kylepace.net
  ],
)

// ---------- summary ----------

#section("Summary")
Product leader with 5+ years of product management and leadership across streaming media and immersive experiences. Founding Director of Product at Local Public, leading a multi-platform streaming service from inception at Cascade PBS through spinoff into an independent company. Proven track record leading development teams to launch 10+ digital products. MBA graduate with a passion for addressing complex user problems with curiosity and empathy.

// ---------- experience ----------

#section("Experience")

#role("Founding Director of Product", "Local Public · Seattle, WA", "Jul 2026 – Present")
#bullets(
  [Lead product for a white-label streaming platform serving 18+ PBS member stations (and growing) across nine platforms (iOS, Android, Apple TV, Fire TV, Android TV, Roku, Samsung Tizen, LG webOS, and web), plus a station-facing CMS and API.],
  [Guided the platform through its spinoff from Cascade PBS into an independent Public Benefit Corporation, standing up product operations, tooling, and station onboarding from scratch.],
  [Own end-to-end app store submission and release management for all partner stations across every major app store.],
)

#role("Product Manager, Media and Innovation", "Cascade PBS · Seattle, WA", "Aug 2022 – Jun 2026")
#bullets(
  [Led a six-person team to develop a new, scalable video streaming platform product, serving 10 member stations and hundreds of thousands of users across eight distinct content delivery platforms.],
  [Spearheaded a new content platform vision focused on local curation, branding, and direct member messaging, oriented toward reenvisioning the role of public stations in a post-broadcast world.],
  [Drove compliant end-to-end app release processes across all major app stores, with an eye to version management and change implementation.],
  [Championed new collaboration and quality standards by moving teams to modern tooling (Jira, Confluence, Figma) and by creating an internal bug and feature requests portal.],
)

#role("Product Manager, Immersive Experiences", "3 Enrollment Marketing · Remote", "Sep 2021 – Aug 2022", subline: [Promoted from Project Manager, Mar 2022])
#bullets(
  [Designed and launched 3 immersive product offerings featuring 3D virtual spaces, 360-degree media, and interactive virtual tours. Delivered 20 end-to-end deliverables for 10 higher-education clients.],
  [Developed 3 new product roadmaps aligned with the organizational mission to expand the product suite and unlock VR and AR product marketing channels, securing buy-in from executive stakeholders.],
  [Managed end-to-end product development, from ideation to delivery, adapting strategies to clients' goals of personalized, student-focused experiences and generating 150+ qualified leads among hard-to-reach student segments.],
)

#role("Junior Project Manager", "F. Schumacher & Co. · Remote", "Apr 2021 – Sep 2021", subline: [Promoted from Digital Innovation Intern, Jun 2021])
#bullets(
  [Led an AR/VR e-commerce initiative and managed web-based product development, coordinating a cross-functional remote team to drive user engagement and sales conversion.],
)

#role("UX Designer (Contract)", "MUUD Ring · Remote / Los Angeles, CA", "Oct 2020 – Dec 2020")

// ---------- education ----------

#block(breakable: false)[
#section("Education & Certifications")

#role("Master of Business Administration", "Seattle University, Albers School of Business", "2023 – 2025")
#role("Certified Product Manager", "Pragmatic Institute", "2022")
#role("UX Bootcamp", "Springboard", "2020")
#role("BA, International Studies", "University of Alaska Anchorage", "2014 – 2018")
]

// ---------- skills ----------

#block(breakable: false)[
#section("Skills")

#v(4pt)
#grid(
  columns: (110pt, 1fr),
  row-gutter: 9pt,
  column-gutter: 12pt,
  text(weight: "semibold", size: 9pt)[Product Management],
  [Product strategy and roadmaps · Agile and Scrum · A/B testing and experimentation · data analysis and visualization · SDLC · cross-functional team leadership],
  text(weight: "semibold", size: 9pt)[Platforms],
  [iOS and Android development · OTT and streaming content delivery · app store compliance and lifecycle management · VR/AR (virtual tours, 360° media, immersive spaces)],
  text(weight: "semibold", size: 9pt)[UX Design],
  [Journey and experience mapping · information architecture · wireframing and prototyping · user testing and validation],
  text(weight: "semibold", size: 9pt)[Business],
  [Go-to-market planning · market research and competitive analysis · brand strategy · revenue and usage growth],
)
]
