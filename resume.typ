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
    mail\@kylepace.net \
    linkedin.com/in/kylepacepm \
    kylepace.net
  ],
)

// ---------- summary ----------

#section("Summary")
Product leader with 5+ years building multi-platform streaming products for public media. Director of Product at Local Public, a white-label streaming platform for 20+ PBS stations that grew from one station's app into an independent public benefit corporation. Leads the full product lifecycle, from strategy and hands-on design to compliance and launch.

// ---------- experience ----------

#section("Experience")

#role("Director of Product", "Local Public · Seattle, WA", "Jul 2026 – Present")
#bullets(
  [Lead product strategy and roadmap for a white-label streaming platform serving 20+ PBS member stations across nine mobile, connected TV and web platforms, plus a station-facing CMS and API.],
  [Built the company's product function after the spin-off, hiring the first dedicated Product Manager and managing a product designer and a partner success manager.],
  [Served as the platform's lead product designer for a year before the team's first design hire, designing 1,000+ screens across mobile, TV and web for the largest redesign in the platform's history.],
  [Adopted AI-assisted design workflows in Figma early, and rebuilt the app and web portal design systems to be brand-neutral so every screen adapts to any partner station's brand.],
  [Kept every partner station compliant with new state age-verification laws, shipping on deadline with an approach that stores no user age data.],
  [Stood up core operations for the newly independent company: CRM, company website, station help center, and incident response and compliance programs.],
)

#role("Product Manager, Media and Innovation", "Cascade PBS · Seattle, WA", "Aug 2022 – Jun 2026")
#bullets(
  [Grew a single station's streaming app into a multi-tenant SaaS platform powering 100+ station-branded apps on nine platforms, laying the groundwork for its spin-off as Local Public.],
  [Led a cross-functional team of about 20, spanning in-house engineering and two outside development partners, through a full platform rebuild that launched new apps on every major mobile and TV platform.],
  [Scaled the platform to weekly releases and launched 12 stations in a single year by building a repeatable onboarding process, support desk and station documentation.],
  [Owned app store release management and policy compliance across eight stores, resolving Roku certification and Apple review issues to keep launches on schedule.],
  [Contributed to station revenue growth, including a 53% increase in contributions through Cascade PBS's apps and an 11.2% free-to-paid conversion rate on WETA+, about three times the national PBS app's rate.],
)

#role("Product Manager, Immersive Experiences", "3 Enrollment Marketing · Remote", "Sep 2021 – Aug 2022", subline: [Promoted from Project Manager, Mar 2022])
#bullets(
  [Designed and launched 3 immersive product offerings featuring 3D virtual spaces, 360-degree media, and interactive virtual tours. Delivered 20+ white-label virtual environments for 10 higher-education clients.],
  [Developed 3 new product roadmaps aligned with the organizational mission to expand the product suite and unlock VR and AR product marketing channels, securing buy-in from executive stakeholders.],
  [Managed product development from ideation to delivery, generating 150+ qualified leads for clients.],
)

#role("Junior Project Manager", "F. Schumacher & Co. · Remote", "Apr 2021 – Sep 2021", subline: [Promoted from Digital Innovation Intern, Jun 2021])
#bullets(
  [Led an AR/VR e-commerce initiative and managed web-based product development, coordinating a cross-functional remote team to drive user engagement and sales conversion.],
)

#role("UX Designer (Contract)", "MUUD Ring · Remote / Los Angeles, CA", "Oct 2020 – Dec 2020")
#bullets(
  [Built a wellness startup's product roadmap and finished a stalled user research project in four weeks.],
)

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
  text(weight: "semibold", size: 9pt)[Product Leadership],
  [Product strategy and roadmaps · product discovery · team building and people management · development partner management · executive and stakeholder alignment · Agile delivery],
  text(weight: "semibold", size: 9pt)[Platforms],
  [Mobile, connected TV and web apps · OTT streaming · multi-tenant SaaS and CMS · app store release management and certification],
  text(weight: "semibold", size: 9pt)[Design],
  [Hands-on UI design · design systems · AI-assisted design and prototyping · information architecture · user research and usability testing · accessibility],
  text(weight: "semibold", size: 9pt)[Compliance & Ops],
  [App store policy · privacy and age-verification compliance · incident response · partner onboarding, support and documentation],
  text(weight: "semibold", size: 9pt)[Business],
  [Go-to-market planning · market sizing and competitive analysis · B2B partner success · revenue and membership growth],
  text(weight: "semibold", size: 9pt)[Tools],
  [Jira, Jira Product Discovery, Confluence, Figma, Figma Make, HubSpot, AI agents (Claude)],
)
]
